//! Opt-in mono PCM inspection output. This deliberately does not emulate the
//! original two-channel gain, buffering, position corrections or device mixer.
//! ABI: https://raw.githubusercontent.com/libsdl-org/SDL/SDL2/include/SDL_audio.h
use std::ffi::{c_char, c_int, c_void, CStr};
use std::ptr;

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
    fn SDL_GetError() -> *const c_char;
    fn SDL_OpenAudioDevice(
        device: *const c_char,
        capture: c_int,
        desired: *const AudioSpec,
        obtained: *mut AudioSpec,
        changes: c_int,
    ) -> u32;
    fn SDL_CloseAudioDevice(device: u32);
    fn SDL_QueueAudio(device: u32, data: *const c_void, length: u32) -> c_int;
    fn SDL_ClearQueuedAudio(device: u32);
    fn SDL_PauseAudioDevice(device: u32, pause: c_int);
}
fn error() -> String {
    unsafe {
        CStr::from_ptr(SDL_GetError())
            .to_string_lossy()
            .into_owned()
    }
}

pub struct DebugSeqAudio {
    device: u32,
}
impl DebugSeqAudio {
    pub fn new(sample_rate: u16) -> Result<Self, String> {
        if sample_rate == 0 {
            return Err("zero SEQ sample rate".into());
        }
        unsafe {
            if SDL_InitSubSystem(0x10) != 0 {
                return Err(error());
            }
            let spec = AudioSpec {
                freq: i32::from(sample_rate),
                format: 0x0008,
                channels: 1,
                silence: 128,
                samples: 1024,
                padding: 0,
                size: 0,
                callback: None,
                userdata: ptr::null_mut(),
            };
            let device = SDL_OpenAudioDevice(ptr::null(), 0, &spec, ptr::null_mut(), 0);
            if device == 0 {
                let message = error();
                SDL_QuitSubSystem(0x10);
                return Err(message);
            }
            Ok(Self { device })
        }
    }
    /// Replace queued bytes with original unsigned mono samples. Queue remains
    /// paused until the caller explicitly starts it next to its visual clock.
    pub fn replace(&mut self, samples: &[u8]) -> Result<(), String> {
        let length = u32::try_from(samples.len()).map_err(|_| "SEQ PCM exceeds SDL queue limit")?;
        unsafe {
            SDL_PauseAudioDevice(self.device, 1);
            SDL_ClearQueuedAudio(self.device);
            if SDL_QueueAudio(self.device, samples.as_ptr().cast(), length) != 0 {
                return Err(error());
            }
        }
        Ok(())
    }
    pub fn pause(&mut self, paused: bool) {
        unsafe {
            SDL_PauseAudioDevice(self.device, i32::from(paused));
        }
    }
    pub fn clear(&mut self) {
        unsafe {
            SDL_PauseAudioDevice(self.device, 1);
            SDL_ClearQueuedAudio(self.device);
        }
    }
}
impl Drop for DebugSeqAudio {
    fn drop(&mut self) {
        unsafe {
            SDL_CloseAudioDevice(self.device);
            SDL_QuitSubSystem(0x10);
        }
    }
}
