// EXPERIMENTAL, UNWIRED. Frame0 matched; final aperture and destination
// comparisons failed. Do not promote until actual bank/core/framebuffer
// boundaries are recovered. See analysis/phase-five/door-20261015/DOOR_RUNTIME.md.
//! Bounded visual inspection of the verified north-door accepted path.
//! No quest/inventory/event state is executed or silently marked complete.
use super::*;
#[path = "original_scale.rs"]
mod scale;
include!("otopark_door_commands.rs");

struct DoorFrames {
    frames: [StartingRoom; 4],
    destination: StartingRoom,
}

fn canvas(view: Vec<u8>, pal: &Palette6) -> Result<StartingRoom, Box<dyn Error>> {
    let mut indices = vec![0; 64000];
    let mut colors = vec![0xff000000; 64000];
    let written: Vec<bool> = view.iter().map(|&v| v != 254).collect();
    for (i, &index) in view.iter().enumerate() {
        let at = (i / 200) * 320 + i % 200 + 60;
        indices[at] = index;
        if written[i] {
            let [r, g, b] = pal.preview_rgb(index)?;
            colors[at] = 0xff000000 | u32::from(r) << 16 | u32::from(g) << 8 | u32::from(b);
        }
    }
    Ok(StartingRoom {
        indices,
        colors,
        untouched_pixels: written.iter().filter(|&&v| !v).count(),
        written,
    })
}

impl DoorFrames {
    fn load(root: &Path) -> Result<Self, Box<dyn Error>> {
        let raw = std::fs::read(root.join("lale/3D.CKD"))?;
        let bank = Flib::parse(&raw)?;
        let mut images = BTreeMap::new();
        for (slot, name) in [
            (25, "DUVAR2.CMP"),
            (30, "KAPI3.CMP"),
            (34, "KAPIAN3.CMP"),
            (39, "YER5.CMP"),
            (47, "YER2.CMP"),
            (49, "YER5.CMP"),
            (57, "TAV2A.CMP"),
            (61, "TAV2A.CMP"),
            (79, "UFUK1.CMP"),
        ] {
            images.insert(
                slot,
                decode_cmp(bank.member(name).ok_or("missing door resource")?.payload)?,
            );
        }
        let pal = Palette6::parse(bank.member("PAL3D.PAL").ok_or("missing PAL3D")?.payload)?;
        let mut buffers = [vec![254; 40000], vec![254; 40000]]; // slots65,66
        for &(scaled, args) in DOOR_SETUP {
            let target = if scaled { args[9] } else { args[7] } as u8;
            let index = match target {
                65 => 0,
                66 => 1,
                _ => return Err("unexpected original door destination".into()),
            };
            let mut written = vec![false; 40000];
            if scaled {
                let image = images
                    .get(&(args[8] as u8))
                    .ok_or("unknown door scale source")?;
                scale::draw(
                    &image.indices,
                    &mut buffers[index],
                    &mut written,
                    scale::ScaleCall {
                        source_offset: usize::from(args[1]) * usize::from(image.dimensions.width)
                            + usize::from(args[0]),
                        source_stride: image.dimensions.width,
                        source_width: args[2],
                        source_height: args[3],
                        destination_offset: usize::from(args[5]) * 200 + usize::from(args[4]),
                        destination_stride: 200,
                        destination_width: args[6],
                        destination_height: args[7],
                        transparent_key: 254,
                        flags: args[10] as u8,
                        // This fixed call set is validated against original frame
                        // and revealed-aperture bytes; not a generic bank policy.
                        initial_x_fraction: 0,
                    },
                )?;
            } else {
                let mut a = args;
                a[7] = 66; // rect() accepts the supplied200×200 target as slot66.
                rect(&images, &a, &mut buffers[index], &mut written)?;
            }
        }
        // Original2fe43..2fe88 fills the animated-door aperture in slot65
        // with key254. Keyed65→66 merge at2fe90..2fea5 supplies the room
        // behind the door; every timed stage starts with opaque66→65 copy.
        for y in 54..173 {
            buffers[0][y * 200 + 58..y * 200 + 144].fill(254);
        }
        let [foreground, mut base] = buffers;
        for (i, &v) in foreground.iter().enumerate() {
            if v != 254 {
                base[i] = v;
            }
        }
        // Initial9078 draw from transient slot64 is completely overwritten in
        // its200×113 possible destination. Never use a captured screenshot.
        let mut frames = Vec::new();
        for stage in 0..4u16 {
            let mut view = base.clone();
            let mut written = vec![false; 40000];
            rect(
                &images,
                &[stage * 86, 0, 86, 119, 58, 54, 34, 66, 0x341, 0, 0, 0],
                &mut view,
                &mut written,
            )?;
            if view[..200 * 113].contains(&254) {
                return Err("transient door background is not fully occluded".into());
            }
            frames.push(canvas(view, &pal)?);
        }
        let mut destination = vec![254; 40000];
        let mut written = vec![false; 40000];
        for args in DOOR_DESTINATION {
            rect(&images, args, &mut destination, &mut written)?;
        }
        Ok(Self {
            frames: frames.try_into().map_err(|_| "door frame count")?,
            destination: canvas(destination, &pal)?,
        })
    }
    fn room(&self, stage: usize) -> &StartingRoom {
        if stage < 4 {
            &self.frames[stage]
        } else {
            &self.destination
        }
    }
}

struct Timeline {
    stage: usize,
    stamp: u16,
}
impl Timeline {
    fn tick(&mut self, now: u16) {
        // Original elapsed unsigned16 subtraction >=150. Each frame is shown;
        // a slow host never jumps directly across unpresented original stages.
        if self.stage < 4 && now.wrapping_sub(self.stamp) >= 150 {
            self.stage += 1;
            self.stamp = now;
        }
    }
}

pub(super) fn run(
    root: &Path,
    window: &mut Window,
    smoke: Option<usize>,
) -> Result<bool, Box<dyn Error>> {
    let frames = DoorFrames::load(root)?;
    let start = std::time::Instant::now();
    let mut clock = Timeline { stage: 0, stamp: 0 };
    let mut presented = 0;
    eprintln!("Door visual inspection: original accepted-path animation then PC1(2,0). Events/inventory are not executed; Esc returns.");
    loop {
        for e in window.poll() {
            match e {
                Input::Quit | Input::Key(113) => return Ok(true),
                Input::Key(27) => return Ok(false),
                _ => {}
            }
        }
        let now = counter(start.elapsed());
        clock.tick(now);
        window.title(if clock.stage < 4 {
            "Otopark door visual inspection | Esc returns"
        } else {
            "Otopark (2,0), north | visual inspection; events pending | Esc returns"
        })?;
        window.present(&frames.room(clock.stage).colors)?;
        presented += 1;
        if smoke.is_some_and(|n| presented >= n) {
            println!(
                "Door inspection: {presented} presents, stage{}",
                clock.stage
            );
            return Ok(false);
        }
        std::thread::sleep(Duration::from_millis(16));
    }
}

// Same conditional no-audio source clock already used by native body/menu.
fn counter(elapsed: Duration) -> u16 {
    let irq = elapsed.as_nanos() * 1_193_182 / (11_931 * 1_000_000_000u128);
    (((65535 + irq * 65535) / 65536) * 10) as u16
}

#[cfg(test)]
mod tests {
    use super::*;
    fn root() -> std::path::PathBuf {
        Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..")
    }
    fn view(room: &StartingRoom) -> Vec<u8> {
        (0..40000)
            .map(|i| room.indices[(i / 200) * 320 + i % 200 + 60])
            .collect()
    }
    #[test]
    fn source_frame_zero_and_destination_match_every_original_index() {
        let root = root();
        let frames = DoorFrames::load(&root).unwrap();
        let dir = root.join("analysis/phase-five/door-20261015/capture");
        assert_eq!(
            view(&frames.frames[0]),
            std::fs::read(dir.join("FR0-PIX.BIN")).unwrap()
        );
        assert_eq!(
            view(&frames.destination),
            std::fs::read(dir.join("R3-DEST-PIX.BIN")).unwrap()
        );
        assert!(frames
            .frames
            .windows(2)
            .all(|p| p[0].indices != p[1].indices));
    }
    #[test]
    fn final_open_aperture_matches_natural_single_up_dos_run() {
        let root = root();
        let frames = DoorFrames::load(&root).unwrap();
        let vga =
            std::fs::read(root.join("analysis/phase-five/door-20261015/capture/R3-OPEN-VGA.BIN"))
                .unwrap();
        let frame = view(&frames.frames[3]);
        // Original present source(7,3)→screen(5,4). Entire animated aperture
        // is clear of the compass, cursor and party HUD overdraw.
        for y in 54..173 {
            for x in 58..144 {
                assert_eq!(
                    frame[y * 200 + x],
                    vga[(y + 1) * 320 + x - 2],
                    "aperture({x},{y})"
                );
            }
        }
    }
    #[test]
    fn original_four_frame_args_and_single_command_commit_are_preserved() {
        let root = root();
        let dir = root.join("analysis/phase-five/door-20261015/capture");
        for (stage, ordinal) in [15, 21, 27, 34].into_iter().enumerate() {
            let raw = std::fs::read(dir.join(format!("BASE-{ordinal:02}.BIN"))).unwrap();
            let words: Vec<u16> = raw
                .chunks_exact(2)
                .map(|b| u16::from_le_bytes([b[0], b[1]]))
                .collect();
            assert_eq!(words[0], 0x7eb6);
            assert_eq!(
                &words[2..10],
                &[stage as u16 * 86, 0, 86, 119, 58, 54, 34, 65]
            );
        }
        let before = std::fs::read(dir.join("R3-PRECOMMIT.BIN")).unwrap();
        let after = std::fs::read(dir.join("R3-COMMITTED.BIN")).unwrap();
        assert_eq!(&before[0xb9f0..0xb9f5], &[0, 1, 0, 2, 0]);
        assert_eq!(&after[0xb9f0..0xb9f5], &[0, 0, 0, 2, 0]);
        assert_eq!(before[0x3b06], 0);
        assert_eq!(after[0x3b06], 0);
        for name in [
            "R3-DOOR-BIOS.BIN",
            "R3-PRECOMMIT-BIOS.BIN",
            "R3-COMMIT-BIOS.BIN",
        ] {
            let bytes = std::fs::read(dir.join(name)).unwrap();
            assert_eq!(&bytes[..2], &bytes[2..4]);
        }
    }
    #[test]
    fn source_counter_wrap_and_slow_hosts_preserve_all_four_frames() {
        let mut t = Timeline {
            stage: 0,
            stamp: 65500,
        };
        t.tick(113);
        assert_eq!(t.stage, 0);
        t.tick(114);
        assert_eq!(t.stage, 1);
        t.tick(5000);
        assert_eq!(t.stage, 2);
        t.tick(5000);
        assert_eq!(t.stage, 2);
        t.tick(5150);
        assert_eq!(t.stage, 3);
        t.tick(5300);
        assert_eq!(t.stage, 4);
        t.tick(6000);
        assert_eq!(t.stage, 4);
    }
}
