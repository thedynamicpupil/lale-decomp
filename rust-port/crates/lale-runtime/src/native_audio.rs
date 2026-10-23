//! Shared native playback. Source PCM bytes/rates are kept intact; the device
//! mixer uses sample-and-hold at 48 kHz. AMF replay is delegated to libopenmpt.
//! Host mixing is not a bit-exact reconstruction of the DOS MCP mixer.
// Shared by the menu, room-only and film-only executables.
#![allow(dead_code)]
use lale_assets::Flib;
use std::{
    cell::RefCell,
    collections::BTreeMap,
    ffi::{c_char, c_int, c_void, CStr},
    path::Path,
    ptr,
    sync::{Arc, Mutex},
    time::{Duration, Instant},
};
const RATE: u64 = 48000;
#[repr(C)]
struct AudioSpec {
    freq: c_int,
    format: u16,
    channels: u8,
    silence: u8,
    samples: u16,
    padding: u16,
    size: u32,
    callback: Option<unsafe extern "C" fn(*mut c_void, *mut u8, c_int)>,
    userdata: *mut c_void,
}
#[link(name = "libSDL2-2.0.so.0", kind = "dylib", modifiers = "+verbatim")]
extern "C" {
    fn SDL_InitSubSystem(flags: u32) -> c_int;
    fn SDL_QuitSubSystem(flags: u32);
    fn SDL_OpenAudioDevice(
        name: *const c_char,
        capture: c_int,
        want: *const AudioSpec,
        got: *mut AudioSpec,
        changes: c_int,
    ) -> u32;
    fn SDL_CloseAudioDevice(id: u32);
    fn SDL_PauseAudioDevice(id: u32, pause: c_int);
    fn SDL_GetError() -> *const c_char;
}
#[link(name = "libopenmpt.so.0", kind = "dylib", modifiers = "+verbatim")]
extern "C" {
    fn openmpt_module_create_from_memory2(
        data: *const c_void,
        size: usize,
        log: Option<extern "C" fn(*const c_char, *mut c_void)>,
        log_user: *mut c_void,
        error: Option<extern "C" fn(c_int, *mut c_void) -> c_int>,
        error_user: *mut c_void,
        code: *mut c_int,
        message: *mut *const c_char,
        ctls: *const c_void,
    ) -> *mut c_void;
    fn openmpt_module_destroy(module: *mut c_void);
    fn openmpt_module_set_repeat_count(module: *mut c_void, count: i32) -> c_int;
    fn openmpt_module_read_interleaved_float_stereo(
        module: *mut c_void,
        rate: i32,
        count: usize,
        buffer: *mut f32,
    ) -> usize;
}
struct Module(*mut c_void);
// The module has one owner and is accessed only while the mixer mutex is held.
unsafe impl Send for Module {}
impl Drop for Module {
    fn drop(&mut self) {
        unsafe { openmpt_module_destroy(self.0) }
    }
}
impl Module {
    fn new(bytes: &[u8]) -> Result<Self, String> {
        lale_assets::amf::Amf14::parse(bytes).map_err(|e| e.to_string())?;
        let p = unsafe {
            openmpt_module_create_from_memory2(
                bytes.as_ptr().cast(),
                bytes.len(),
                None,
                ptr::null_mut(),
                None,
                ptr::null_mut(),
                ptr::null_mut(),
                ptr::null_mut(),
                ptr::null(),
            )
        };
        if p.is_null() {
            return Err("libopenmpt rejected original AMF".into());
        }
        unsafe {
            openmpt_module_set_repeat_count(p, -1);
        }
        Ok(Self(p))
    }
}
#[derive(Clone)]
struct Pcm {
    bytes: Arc<[u8]>,
    rate: u32,
    cursor: u64,
    tail: u64,
    paused: bool,
    ticket: u64,
}
impl Pcm {
    fn duration(&self) -> u64 {
        (self.bytes.len() as u64 * RATE).div_ceil(u64::from(self.rate))
    }
    fn next(&mut self) -> f32 {
        if self.paused {
            return 0.0;
        }
        if self.cursor >= self.duration() {
            self.tail = self.tail.saturating_add(1);
            return 0.0;
        }
        let i = (self.cursor * u64::from(self.rate) / RATE) as usize;
        self.cursor += 1;
        (f32::from(self.bytes[i]) - 128.0) / 128.0
    }
    fn done(&self) -> bool {
        self.cursor >= self.duration()
    }
}
struct Mixer {
    music: Option<Module>,
    music_name: String,
    sound: Option<Pcm>,
    film: Option<Pcm>,
    serial: u64,
    gain: f32,
}
impl Mixer {
    fn new(gain: f32) -> Self {
        Self {
            music: None,
            music_name: String::new(),
            sound: None,
            film: None,
            serial: 0,
            gain,
        }
    }
    fn render(&mut self, out: &mut [f32]) {
        out.fill(0.0);
        if self.film.is_none() {
            if let Some(m) = &mut self.music {
                unsafe {
                    openmpt_module_read_interleaved_float_stereo(
                        m.0,
                        RATE as i32,
                        out.len() / 2,
                        out.as_mut_ptr(),
                    );
                }
            }
        }
        for pair in out.chunks_exact_mut(2) {
            let pcm = if let Some(f) = &mut self.film {
                f.next()
            } else {
                self.sound.as_mut().map_or(0.0, Pcm::next)
            };
            for v in pair {
                *v = ((*v + pcm) * self.gain).clamp(-1.0, 1.0);
            }
        }
    }
    fn play(&mut self, bytes: Arc<[u8]>, rate: u32) -> u64 {
        self.serial += 1;
        self.sound = Some(Pcm {
            bytes,
            rate,
            cursor: 0,
            tail: 0,
            paused: false,
            ticket: self.serial,
        });
        self.serial
    }
}
unsafe extern "C" fn callback(data: *mut c_void, stream: *mut u8, len: c_int) {
    if len <= 0 {
        return;
    }
    // SDL supplies an aligned float buffer of the requested size. Never unwind
    // across C: poison means silence, and callback performs no asset reads.
    let output = unsafe { std::slice::from_raw_parts_mut(stream.cast::<f32>(), len as usize / 4) };
    output.fill(0.0);
    let shared = unsafe { &*(data as *const Mutex<Mixer>) };
    if let Ok(mut mixer) = shared.lock() {
        mixer.render(output);
    }
}
struct SoundBank {
    defs: Vec<SoundDef>,
    samples: Vec<Option<Arc<[u8]>>>,
}
impl SoundBank {
    fn load(root: &Path) -> Result<Self, String> {
        let exe = std::fs::read(root.join("lale/IST.EXE")).map_err(|e| e.to_string())?;
        let raw = std::fs::read(root.join("lale/SOUNDS.CKD")).map_err(|e| e.to_string())?;
        let bank = Flib::parse(&raw).map_err(|e| e.to_string())?;
        let mut defs = Vec::new();
        let mut samples = Vec::new();
        for id in 0..=48 {
            let d = SoundDef::read(&exe, id)?;
            let sample = if (1..=32).contains(&id) && id != 10 {
                bank.member(&d.name)
                    // Original192d calls16c5:01f3(mode1,flags0). That loader
                    // reads min(member length,0xff00) raw bytes; flags0 does
                    // not take its multi-descriptor continuation branch.
                    // MERDUST.PUR is PCM too, not an unsupported codec merely
                    // because its source member exceeds that DOS segment cap.
                    .map(|m| Arc::from(&m.payload[..m.payload.len().min(0xff00)]))
            } else {
                None
            };
            defs.push(d);
            samples.push(sample);
        }
        Ok(Self { defs, samples })
    }
}
struct Backend {
    banks: Mutex<BTreeMap<std::path::PathBuf, Arc<SoundBank>>>,
    mixer: Arc<Mutex<Mixer>>,
    device: u32,
    initialized: bool,
    virtual_stamp: Mutex<Instant>,
    offline: bool,
}
impl Drop for Backend {
    fn drop(&mut self) {
        unsafe {
            if self.device != 0 {
                SDL_CloseAudioDevice(self.device)
            }
            if self.initialized {
                SDL_QuitSubSystem(0x10)
            }
        }
    }
}
#[derive(Clone)]
pub struct Audio(Arc<Backend>);
thread_local! {static CURRENT:RefCell<Option<Audio>>=const{RefCell::new(None)};}
impl Audio {
    pub fn shared() -> Self {
        CURRENT.with(|cell| {
            let mut c = cell.borrow_mut();
            c.get_or_insert_with(|| Self::open(false)).clone()
        })
    }
    fn open(offline: bool) -> Self {
        let volume = std::env::var("LALE_AUDIO_VOLUME")
            .ok()
            .and_then(|s| s.parse::<u8>().ok())
            .unwrap_or(100)
            .min(100);
        let muted = std::env::var("LALE_AUDIO_MUTE").is_ok_and(|s| s == "1");
        let mixer = Arc::new(Mutex::new(Mixer::new(if muted {
            0.0
        } else {
            f32::from(volume) / 100.0
        })));
        let mut device = 0;
        let mut initialized = false;
        if !offline {
            unsafe {
                initialized = SDL_InitSubSystem(0x10) == 0;
                if initialized {
                    let want = AudioSpec {
                        freq: RATE as i32,
                        format: 0x8120,
                        channels: 2,
                        silence: 0,
                        samples: 512,
                        padding: 0,
                        size: 0,
                        callback: Some(callback),
                        userdata: Arc::as_ptr(&mixer).cast_mut().cast(),
                    };
                    device = SDL_OpenAudioDevice(ptr::null(), 0, &want, ptr::null_mut(), 0);
                }
                if device == 0 {
                    eprintln!("Audio device unavailable: {}. Using silent sample clock; supported voice waits still finish.",CStr::from_ptr(SDL_GetError()).to_string_lossy());
                }
            }
        }
        let a = Self(Arc::new(Backend {
            banks: Mutex::new(BTreeMap::new()),
            mixer,
            device,
            initialized,
            virtual_stamp: Mutex::new(Instant::now()),
            offline,
        }));
        if device != 0 {
            unsafe { SDL_PauseAudioDevice(device, 0) }
        }
        a
    }
    /// Without hardware, advance the same mixer by elapsed sample frames. There is
    /// no guessed sound timeout. Long stalls skip synthesis work, not PCM position.
    fn sync(&self) {
        if self.0.device != 0 || self.0.offline {
            return;
        }
        let mut stamp = self.0.virtual_stamp.lock().unwrap();
        let now = Instant::now();
        let frames =
            (now.duration_since(*stamp).as_nanos() * u128::from(RATE) / 1_000_000_000) as u64;
        *stamp += Duration::from_nanos(frames * 1_000_000_000 / RATE);
        let mut m = self.0.mixer.lock().unwrap();
        if let Some(p) = &mut m.sound {
            p.cursor = (p.cursor + frames).min(p.duration());
        }
        if let Some(p) = &mut m.film {
            if !p.paused {
                p.cursor = (p.cursor + frames).min(p.duration());
            }
        }
    }
    pub fn music(&self, root: &Path, name: &str) -> Result<(), String> {
        self.sync();
        if self
            .0
            .mixer
            .lock()
            .unwrap()
            .music_name
            .eq_ignore_ascii_case(name)
        {
            return Ok(());
        }
        let raw = std::fs::read(root.join("lale/MUZIK.CKD")).map_err(|e| e.to_string())?;
        let bank = Flib::parse(&raw).map_err(|e| e.to_string())?;
        let member = bank
            .members
            .iter()
            .find(|m| m.name.eq_ignore_ascii_case(name))
            .ok_or_else(|| format!("missing music {name}"))?;
        let module = Module::new(member.payload)?;
        let mut m = self.0.mixer.lock().unwrap();
        m.music = Some(module);
        m.music_name = name.into();
        Ok(())
    }
    pub fn effect(&self, root: &Path, id: usize, rate: u32) -> Result<u64, String> {
        if rate == 0 {
            return Err("zero sound rate".into());
        }
        let bank = self.bank(root)?;
        let sample = bank
            .samples
            .get(id)
            .and_then(|p| p.clone())
            .ok_or_else(|| {
                format!("sound {id}: unsupported original dynamic/text/streamed event")
            })?;
        self.sync();
        Ok(self.0.mixer.lock().unwrap().play(sample, rate))
    }
    fn bank(&self, root: &Path) -> Result<Arc<SoundBank>, String> {
        let mut banks = self.0.banks.lock().unwrap();
        if let Some(b) = banks.get(root) {
            return Ok(b.clone());
        }
        let bank = Arc::new(SoundBank::load(root)?);
        banks.insert(root.into(), bank.clone());
        Ok(bank)
    }
    pub fn preload(&self, root: &Path) -> Result<(), String> {
        self.bank(root).map(|_| ())
    }
    /// Explicit diagnostic clock; production always opens SDL or uses the silent
    /// real-time sample clock. Never used to accelerate ordinary gameplay.
    pub fn diagnostic() -> Self {
        Self::open(true)
    }
    pub fn diagnostic_advance(&self, frames: usize) {
        assert!(self.0.offline);
        let mut out = vec![0.0; frames * 2];
        self.0.mixer.lock().unwrap().render(&mut out);
    }
    /// Retire only after the final source sample plus one SDL callback buffer
    /// has been handed on. Platform/device latency beyond SDL remains external.
    pub fn finished(&self, ticket: u64) -> bool {
        self.sync();
        let m = self.0.mixer.lock().unwrap();
        m.sound.as_ref().is_none_or(|p| {
            p.ticket != ticket || (p.done() && (self.0.device == 0 || p.tail >= 512))
        })
    }
    pub fn stop_effect(&self) {
        self.sync();
        self.0.mixer.lock().unwrap().sound = None;
    }
    pub fn film(&self, bytes: Vec<u8>, rate: u32) {
        self.sync();
        let mut m = self.0.mixer.lock().unwrap();
        m.sound = None;
        m.film = Some(Pcm {
            bytes: bytes.into(),
            rate,
            cursor: 0,
            tail: 0,
            paused: false,
            ticket: 0,
        });
    }
    pub fn film_time(&self) -> Duration {
        self.sync();
        let m = self.0.mixer.lock().unwrap();
        Duration::from_nanos(
            m.film.as_ref().map_or(0, |p| {
                if self.0.device == 0 {
                    p.cursor
                } else {
                    (p.cursor + p.tail).saturating_sub(512).min(p.duration())
                }
            }) * 1_000_000_000
                / RATE,
        )
    }
    pub fn film_pause(&self, pause: bool) {
        self.sync();
        if let Some(p) = &mut self.0.mixer.lock().unwrap().film {
            p.paused = pause
        }
    }
    pub fn film_seek(&self, time: Duration) {
        self.sync();
        if let Some(p) = &mut self.0.mixer.lock().unwrap().film {
            p.cursor =
                ((time.as_nanos() * u128::from(RATE) / 1_000_000_000) as u64).min(p.duration());
            p.tail = 0
        }
    }
    pub fn end_film(&self) {
        self.sync();
        let mut m = self.0.mixer.lock().unwrap();
        m.film = None;
        m.music = None;
        m.music_name.clear();
    }
    #[cfg(test)]
    fn advance(&self, frames: usize) {
        let mut out = vec![0.0; frames * 2];
        self.0.mixer.lock().unwrap().render(&mut out);
    }
}
pub use lale_assets::sound::SoundDef;

#[cfg(test)]
mod tests {
    use super::*;
    fn root() -> std::path::PathBuf {
        Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..")
    }
    #[test]
    fn original_default_effects_use_exact_capped_bytes_rates_and_sample_boundary() {
        let root = root();
        let bank = SoundBank::load(&root).unwrap();
        let source = std::fs::read(root.join("lale/SOUNDS.CKD")).unwrap();
        let flib = Flib::parse(&source).unwrap();
        for id in (1..=32).filter(|i| *i != 10) {
            let def = &bank.defs[id];
            let bytes = bank.samples[id].as_ref().unwrap();
            let payload = flib.member(&def.name).unwrap().payload;
            assert_eq!(&**bytes, &payload[..payload.len().min(0xff00)]);
            let mut m = Mixer::new(1.0);
            m.play(bytes.clone(), def.rate);
            let count = m.sound.as_ref().unwrap().duration() as usize;
            let mut out = vec![0.0; (count - 1) * 2];
            m.render(&mut out);
            assert!(!m.sound.as_ref().unwrap().done(), "id{id}");
            m.render(&mut [0.0; 2]);
            assert!(m.sound.as_ref().unwrap().done(), "id{id}");
        }
        assert!(bank.samples[10].is_none());
        assert_eq!(bank.samples[21].as_ref().unwrap().len(), 51390);
        assert_eq!(bank.samples[22].as_ref().unwrap().len(), 0xff00);
        assert_eq!(flib.member("MERDUST.PUR").unwrap().payload.len(), 70846);
        assert!(bank.samples[33].is_none());
        let d = &bank.defs[3];
        assert_eq!(d.pitched(Some(0)), 7200);
        assert_eq!(d.pitched(Some(32767)), 8799);
    }
    #[test]
    fn mute_finishes_and_replacing_voice_retires_previous_ticket() {
        let mut m = Mixer::new(0.0);
        let t = m.play(Arc::from([0, 128, 255]), 48000);
        let mut out = [1.0; 6];
        m.render(&mut out);
        assert_eq!(out, [0.0; 6]);
        assert!(m.sound.as_ref().unwrap().done());
        let next = m.play(Arc::from([255]), 48000);
        assert_ne!(t, next);
        m.render(&mut [0.0; 2]);
        assert!(m.sound.as_ref().unwrap().done());
    }
    #[test]
    fn installed_tracker_replays_every_original_module_without_altering_asset_bytes() {
        let source = std::fs::read(root().join("lale/MUZIK.CKD")).unwrap();
        let bank = Flib::parse(&source).unwrap();
        let mut count = 0;
        for member in &bank.members {
            if !member.name.to_ascii_lowercase().ends_with(".amf") {
                continue;
            }
            let mut m = Mixer::new(1.0);
            m.music = Some(Module::new(member.payload).unwrap());
            let mut out = vec![0.0; 48000 * 4];
            m.render(&mut out);
            assert!(out.iter().all(|v| v.is_finite()));
            assert!(
                out.iter().any(|v| v.abs() > 0.0001),
                "{} silent",
                member.name
            );
            count += 1;
        }
        assert_eq!(count, 15);
    }
    #[test]
    fn film_pause_seek_and_stop_are_owned_by_the_same_sample_cursor() {
        let a = Audio::diagnostic();
        a.film(vec![128; 22050], 22050);
        a.advance(24000);
        assert_eq!(a.film_time(), Duration::from_millis(500));
        a.film_pause(true);
        a.advance(24000);
        assert_eq!(a.film_time(), Duration::from_millis(500));
        a.film_seek(Duration::from_millis(900));
        a.film_pause(false);
        a.advance(4800);
        assert_eq!(a.film_time(), Duration::from_secs(1));
        a.advance(24000);
        assert_eq!(a.film_time(), Duration::from_secs(1));
        a.end_film();
        assert_eq!(a.film_time(), Duration::ZERO);
    }
    #[test]
    fn sdl_callback_or_silent_clock_completes_actual_turn_voice() {
        if std::env::var_os("LALE_AUDIO_SDL_TEST").is_none() {
            return;
        }
        let a = Audio::open(false);
        a.music(&root(), "demo.amf").unwrap();
        let ticket = a.effect(&root(), 26, 11000).unwrap();
        let start = Instant::now();
        while !a.finished(ticket) {
            assert!(start.elapsed() < Duration::from_secs(3));
            std::thread::sleep(Duration::from_millis(5));
        }
        assert!(start.elapsed() >= Duration::from_millis(195));
        println!(
            "Actual voice26 completed via {} in {:?}",
            if a.0.device == 0 {
                "silent sample clock"
            } else {
                "SDL callback"
            },
            start.elapsed()
        );
    }
}
