//! Silent inspection playback, separate from original audio/PIT/refill scheduling.
//! Pixels use the verified decoder unchanged. Host deadlines use GHD fps, all
//! dependent records are decoded in order, and controls are debug-only.
use crate::sdl_window::{Input, Window};
use lale_assets::{seq::SeqHeader, Flib, Palette6};
use std::{
    error::Error,
    path::Path,
    time::{Duration, Instant},
};

struct Clip<'a> {
    name: String,
    header: SeqHeader<'a>,
    stream: &'a [u8],
}

struct Player<'a> {
    clips: Vec<Clip<'a>>,
    clip: usize,
    next: usize,
    decoded: usize,
    indices: Vec<u8>,
    colors: Vec<u32>,
    frame_start: Duration,
    deadline: Duration,
    ended: bool,
}
impl<'a> Player<'a> {
    fn new(package: &Flib<'a>) -> Result<Self, Box<dyn Error>> {
        let mut clips = Vec::new();
        for number in 1..=5 {
            let name = format!("SEQ{number}");
            let ghd = package
                .member(&format!("{name}.GHD"))
                .ok_or("missing SEQ GHD")?;
            let gfl = package
                .member(&format!("{name}.GFL"))
                .ok_or("missing SEQ GFL")?;
            let header = SeqHeader::parse(ghd.payload)?;
            if header.records.is_empty() {
                return Err("empty SEQ stream".into());
            }
            clips.push(Clip {
                name,
                header,
                stream: gfl.payload,
            });
        }
        Ok(Self {
            clips,
            clip: 0,
            next: 0,
            decoded: 0,
            indices: vec![0; lale_assets::seq::FRAME_BYTES],
            colors: vec![0xff00_0000; lale_assets::seq::FRAME_BYTES],
            frame_start: Duration::ZERO,
            deadline: Duration::ZERO,
            ended: false,
        })
    }
    fn reset(&mut self) {
        self.clip = 0;
        self.next = 0;
        self.decoded = 0;
        self.indices.fill(0);
        self.colors.fill(0xff00_0000);
        self.frame_start = Duration::ZERO;
        self.deadline = Duration::ZERO;
        self.ended = false;
    }
    /// One chronological record. Never jump over a delta packet when behind.
    fn advance(&mut self) -> Result<(), Box<dyn Error>> {
        if self.ended {
            return Ok(());
        }
        if self.next == self.clips[self.clip].header.records.len() {
            if self.clip + 1 == self.clips.len() {
                self.ended = true;
                return Ok(());
            }
            self.clip += 1;
            self.next = 0;
            // Independent stream inspection baseline, not a claim about DOS fades.
            self.indices.fill(0);
        }
        let clip = &self.clips[self.clip];
        let info = clip
            .header
            .apply_frame(self.next, clip.stream, &mut self.indices)?;
        let palette = Palette6::parse(info.palette6)?;
        let mut lookup = [0u32; 256];
        for (i, color) in lookup.iter_mut().enumerate() {
            let [r, g, b] = palette.preview_rgb(i as u8)?;
            *color = 0xff00_0000 | u32::from(r) << 16 | u32::from(g) << 8 | u32::from(b);
        }
        for (destination, &index) in self.colors.iter_mut().zip(&self.indices) {
            *destination = lookup[usize::from(index)];
        }
        self.frame_start = self.deadline;
        self.deadline += Duration::from_nanos(1_000_000_000 / u64::from(clip.header.fps));
        self.next += 1;
        self.decoded += 1;
        Ok(())
    }
    fn status(&self, paused: bool) -> String {
        let clip = &self.clips[self.clip];
        format!(
            "SILENT DEBUG SEQ — {} {}/{} — {} — Space pause | Right step | R restart | Esc return",
            clip.name,
            self.next,
            clip.header.records.len(),
            if self.ended {
                "END"
            } else if paused {
                "PAUSED"
            } else {
                "PLAYING"
            }
        )
    }
}

impl Player<'_> {
    fn update_until(&mut self, due: Duration, budget: usize) -> Result<(), Box<dyn Error>> {
        for _ in 0..budget {
            if self.ended || due < self.deadline {
                break;
            }
            self.advance()?;
        }
        Ok(())
    }
}

/// Host-only inspection clock; paused wall time never creates catch-up work.
struct PreviewClock {
    elapsed: Duration,
    anchor: Instant,
    paused: bool,
}
impl PreviewClock {
    fn new() -> Self {
        Self {
            elapsed: Duration::ZERO,
            anchor: Instant::now(),
            paused: false,
        }
    }
    fn time(&self) -> Duration {
        self.elapsed
            + if self.paused {
                Duration::ZERO
            } else {
                self.anchor.elapsed()
            }
    }
    fn toggle(&mut self) {
        self.elapsed = self.time();
        self.anchor = Instant::now();
        self.paused = !self.paused;
    }
    fn step_to(&mut self, time: Duration) {
        self.elapsed = time;
        self.anchor = Instant::now();
        self.paused = true;
    }
}

#[derive(Debug, PartialEq, Eq)]
pub enum Exit {
    Back,
    Quit,
    Finished,
}

/// `smoke_frames` exercises decode/upload without waiting on deadlines. It is
/// deliberately separate from the real-time preview and reports its scope.
pub fn run(
    root: &Path,
    window: &mut Window,
    smoke_frames: Option<usize>,
) -> Result<Exit, Box<dyn Error>> {
    run_with_audio(root, window, smoke_frames, false)
}

pub fn run_with_audio(
    root: &Path,
    window: &mut Window,
    smoke_frames: Option<usize>,
    debug_audio: bool,
) -> Result<Exit, Box<dyn Error>> {
    run_mode(root, window, smoke_frames, debug_audio, false)
}
/// Creation-success playback keeps the accepted decoder/clock/audio path but
/// returns after the last frame's full duration, instead of debug END hold.
#[allow(dead_code)]
pub fn run_opening(
    root: &Path,
    window: &mut Window,
    debug_audio: bool,
) -> Result<Exit, Box<dyn Error>> {
    run_mode(root, window, None, debug_audio, true)
}
fn run_mode(
    root: &Path,
    window: &mut Window,
    smoke_frames: Option<usize>,
    debug_audio: bool,
    opening: bool,
) -> Result<Exit, Box<dyn Error>> {
    if smoke_frames == Some(0) {
        return Err("smoke frame count must be positive".into());
    }
    let path = root.join("lale/0GFL.CKD");
    if std::fs::metadata(&path)?.len() > 256 * 1024 * 1024 {
        return Err("SEQ archive exceeds 256 MiB budget".into());
    }
    let source = std::fs::read(path)?;
    let package = Flib::parse(&source)?;
    let mut player = Player::new(&package)?;
    let mut pcm = Vec::new();
    let mut audio = if debug_audio {
        for clip in &player.clips {
            pcm.push(lale_assets::seq_pcm::SeqPcm::extract(
                &clip.header,
                clip.stream,
            )?);
        }
        if pcm.iter().any(|p| p.sample_rate != pcm[0].sample_rate) {
            return Err("debug preview requires a common SEQ sound rate".into());
        }
        eprintln!("DEBUG AUDIO: source-verified unsigned8 mono PCM; host gain/queue and approximate host-clock alignment, NOT original MCP mixing/refill/synchronization. F9 remains silent.");
        Some(crate::seq_debug_audio::DebugSeqAudio::new(
            pcm[0].sample_rate,
        )?)
    } else {
        None
    };
    let mut audio_clip = None;
    let mut clock = PreviewClock::new();
    window.text_input(false);
    eprintln!("{}: original SEQ1–5 pixels at GHD frame rates; host clock, original fades and gameplay transition incomplete. Space pause/resume, Right step, R restart, Esc return, Q quit.", if debug_audio { "DEBUG PCM PREVIEW (HOST SYNC)" } else { "SILENT DEBUG PREVIEW" });
    let mut status = String::new();
    loop {
        let mut reposition_audio = false;
        for input in window.poll() {
            match input {
                Input::Quit | Input::Key(113) => return Ok(Exit::Quit),
                Input::Key(27) => return Ok(Exit::Back),
                Input::Key(32) if !player.ended => clock.toggle(),
                Input::Key(1073741903) if !player.ended => {
                    player.advance()?;
                    clock.step_to(player.frame_start);
                    reposition_audio = true;
                }
                Input::Key(114) => {
                    player.reset();
                    clock = PreviewClock::new();
                    audio_clip = None;
                }
                _ => {}
            }
        }
        // Bounded catch-up keeps input responsive. Intermediate records retain
        // their pixels/palettes; only redundant host uploads may be omitted.
        if let Some(limit) = smoke_frames {
            for _ in 0..8.min(limit.saturating_sub(player.decoded)) {
                player.advance()?;
                if player.ended {
                    break;
                }
            }
        } else if !clock.paused {
            player.update_until(clock.time(), 8)?;
        }
        if opening && player.ended {
            return Ok(Exit::Finished);
        }
        let next_status = player.status(clock.paused);
        let next_status = if debug_audio {
            next_status.replace("SILENT DEBUG SEQ", "DEBUG PCM SEQ (HOST SYNC)")
        } else {
            next_status
        };
        if let Some(device) = &mut audio {
            if player.ended {
                device.clear();
            } else {
                if audio_clip != Some(player.clip) || reposition_audio {
                    let sound = &pcm[player.clip];
                    let frame = player.next.saturating_sub(1);
                    let offset = frame * usize::from(sound.sample_rate)
                        / usize::from(player.clips[player.clip].header.fps);
                    device.replace(
                        sound
                            .samples
                            .get(offset..)
                            .ok_or("debug audio position outside source")?,
                    )?;
                    audio_clip = Some(player.clip);
                }
                device.pause(clock.paused);
            }
        }
        if next_status != status {
            window.title(&next_status)?;
            status = next_status;
        }
        window.present(&player.colors)?;
        if smoke_frames.is_some_and(|limit| player.decoded >= limit || player.ended) {
            println!(
                "SEQ SDL smoke: decoded/uploaded through {} records; {}",
                player.decoded, status
            );
            return Ok(Exit::Back);
        }
        std::thread::sleep(Duration::from_millis(4));
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn host_deadlines_hold_frames_and_catch_up_without_skipping_records() {
        let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
        let source = std::fs::read(root.join("lale/0GFL.CKD")).unwrap();
        let package = Flib::parse(&source).unwrap();
        let mut player = Player::new(&package).unwrap();
        player.update_until(Duration::ZERO, 8).unwrap();
        assert_eq!(player.decoded, 1);
        player.update_until(Duration::from_millis(99), 8).unwrap();
        assert_eq!(player.decoded, 1);
        player.update_until(Duration::from_millis(100), 8).unwrap();
        assert_eq!(player.decoded, 2);
        player.update_until(Duration::from_millis(1000), 8).unwrap();
        assert_eq!(player.decoded, 10);
        player.update_until(Duration::from_millis(1000), 8).unwrap();
        assert_eq!(player.decoded, 11);
        assert_eq!(player.frame_start, Duration::from_secs(1));
        player
            .update_until(Duration::from_millis(243299), 2500)
            .unwrap();
        assert_eq!(player.decoded, 2433);
        assert!(!player.ended);
        player
            .update_until(Duration::from_millis(243300), 8)
            .unwrap();
        assert!(player.ended);
    }
    #[test]
    fn preview_sequence_matches_independent_title_and_all_stream_boundaries() {
        let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
        let source = std::fs::read(root.join("lale/0GFL.CKD")).unwrap();
        let package = Flib::parse(&source).unwrap();
        let mut player = Player::new(&package).unwrap();
        for count in 1..=2433 {
            player.advance().unwrap();
            assert_eq!(player.decoded, count);
            if count == 51 {
                let fixture =
                    root.join("analysis/phase-five/integration-20261014/seq/seq1-trial/seq1-0050");
                assert_eq!(
                    player.indices,
                    std::fs::read(fixture.with_extension("indices")).unwrap()
                );
                let palette_bytes = std::fs::read(fixture.with_extension("pal6")).unwrap();
                let palette = Palette6::parse(&palette_bytes).unwrap();
                for (&color, &index) in player.colors.iter().zip(&player.indices) {
                    let [r, g, b] = palette.preview_rgb(index).unwrap();
                    assert_eq!(
                        color,
                        0xff00_0000 | u32::from(r) << 16 | u32::from(g) << 8 | u32::from(b)
                    );
                }
            }
            for (boundary, clip) in [(636, 0), (904, 1), (1526, 2), (1941, 3), (2433, 4)] {
                if count == boundary {
                    assert_eq!(player.clip, clip);
                }
                if count == boundary + 1 && clip < 4 {
                    assert_eq!((player.clip, player.next), (clip + 1, 1));
                }
            }
        }
        assert_eq!(player.deadline, Duration::from_millis(243300));
        assert!(!player.ended); // final record still has its full display period
        player.advance().unwrap();
        assert!(player.ended);
        player.advance().unwrap();
        assert_eq!(player.decoded, 2433);
        player.reset();
        player.advance().unwrap();
        assert_eq!((player.clip, player.next, player.decoded), (0, 1, 1));
        assert_eq!(player.frame_start, Duration::ZERO);
    }
    #[test]
    fn paused_and_stepped_host_clock_freezes_elapsed_time() {
        let mut clock = PreviewClock::new();
        clock.step_to(Duration::from_millis(500));
        assert_eq!(clock.time(), Duration::from_millis(500));
        clock.toggle();
        assert!(clock.time() >= Duration::from_millis(500));
        clock.toggle();
        let frozen = clock.time();
        assert_eq!(clock.time(), frozen);
    }
}
