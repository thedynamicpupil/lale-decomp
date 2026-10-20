use lale_core::world_tick::WorldTickState;
use std::{fs, path::Path};

fn word(ds: &[u8], offset: usize) -> i16 {
    i16::from_le_bytes(ds[offset..offset + 2].try_into().unwrap())
}

fn state(ds: &[u8]) -> WorldTickState {
    let mut state = WorldTickState::default();
    for (i, field) in state.clock.iter_mut().enumerate() {
        *field = word(ds, 0x3d64 + i * 2);
    }
    for p in 0..4 {
        for q in 0..5 {
            state.numeric_timers[p][q] = word(ds, 0x99d2 + 92 * (p + 1) + 2 * (q + 1));
            state.actor_timers[p][q] = word(ds, 0xa45e + 40 * (p + 1) + 2 * (q + 1));
        }
    }
    state
}

#[test]
fn original_dos_carry_and_expiry_compaction_match_all_four_records() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("../../..");
    let captures = root.join("analysis/phase-five/reusable-loops-20261020/capture");
    let before = fs::read(captures.join("TICK-BEFORE-DS.BIN")).unwrap();
    let after = fs::read(captures.join("TICK-AFTER-DS.BIN")).unwrap();
    assert_eq!(before.len(), 65536);
    assert_eq!(after.len(), 65536);
    let mut actual = state(&before);
    assert_eq!(actual.clock, [59, 23, 359]);
    assert_eq!(actual.numeric_timers[0], [50, 250, 150, 0, 500]);
    assert_eq!(actual.actor_timers[0], [50, 250, 150, 0, 500]);
    actual.advance(1);
    assert_eq!(actual, state(&after));
    assert_eq!(actual.clock, [0, 0, 0]);
    assert_eq!(actual.numeric_timers[0], [250, 50, 500, 0, 0]);
    assert_eq!(actual.actor_timers[0], [250, 50, 500, 0, 0]);
}

#[test]
fn original_word_sign_and_truncating_remainder_are_preserved() {
    // Assembly-derived edge cases, not observed DOS gameplay values.
    let mut state = WorldTickState {
        clock: [i16::MAX, -24, -360],
        numeric_timers: [[i16::MIN, 1000, 1000, 1000, 1000]; 4],
        actor_timers: [[200; 5]; 4],
    };
    state.advance(1);
    assert_eq!(state.clock, [-8, -18, -23]);
    assert_eq!(state.numeric_timers[0], [32668, 900, 900, 900, 900]);
    assert_eq!(state.actor_timers[0], [100; 5]);
}
