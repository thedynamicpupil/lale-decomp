use lale_core::{combat_party::Numeric, rest::*, rng::LaleRng, world_tick::WorldTickState};
fn party() -> [Numeric; 4] {
    let mut p = [[0; 46]; 4];
    for n in &mut p {
        n[5] = 90;
        n[6] = 6;
        n[28] = 90;
        n[29] = 6;
        n[9] = 250;
        n[16] = 9;
        n[17] = 499;
        n[21] = 500;
        n[45] = 12;
        n[35] = 202;
        n[30] = 35;
    }
    p
}
#[test]
fn duration_is_not_fatigue_and_preserves_strict_damak_quotient_quirk() {
    let mut p = party();
    p[0][21] = 999;
    assert_eq!(duration(&p, [false; 4], 0), Err(CampError::NotTired));
    p[0][28] = 61; // deficit29 -> quotient0, not enough to initiate camp
    assert_eq!(duration(&p, [false; 4], 0), Err(CampError::NotTired));
    p[0][28] = 60;
    assert_eq!(duration(&p, [false; 4], 0), Ok(30));
    p[1][29] = 5; // units2 already -> no change
    assert_eq!(duration(&p, [false; 4], 8), Err(CampError::Forbidden));
    assert_eq!(
        duration(&p, [true, true, false, false], 0),
        Err(CampError::NotTired)
    );
}
#[test]
fn short_camp_uses_one_rng_draw_ticks_shared_timers_and_keeps_equipment() {
    let mut p = party();
    p[0][29] = 4;
    let initial = p;
    let mut rng = LaleRng::seeded(21);
    let mut expected = rng;
    expected.scaled(7);
    let mut c = Camp::begin(
        duration(&p, [false; 4], 0).unwrap(),
        0,
        false,
        false,
        &mut rng,
    );
    let mut tick = WorldTickState {
        clock: [59, 23, 359],
        numeric_timers: [[250, 0, 0, 0, 0]; 4],
        actor_timers: [[150, 0, 0, 0, 0]; 4],
    };
    for _ in 0..30 {
        assert_eq!(
            c.step(&mut p, &mut tick, false, false, false, &mut rng),
            CampStep::Resting
        );
    }
    assert_eq!(
        c.step(&mut p, &mut tick, false, false, false, &mut rng),
        CampStep::Complete
    );
    assert_eq!(tick.clock, [29, 0, 0]);
    assert_eq!(rng, expected);
    assert_eq!(p[0][29], 6);
    assert_eq!(p[0][17], 505);
    assert_eq!(p[0][21], 492);
    for i in 0..4 {
        for k in 0..46 {
            if ![17, 21, 29].contains(&k) {
                assert_eq!(p[i][k], initial[i][k], "{i}/{k}");
            }
        }
    }
    let finished = tick.clone();
    c.step(&mut p, &mut tick, false, false, false, &mut rng);
    assert_eq!(tick, finished);
}
#[test]
fn cancellation_advances_before_input_and_recovery_has_original_floors() {
    let mut p = party();
    let before = p;
    let mut rng = LaleRng::seeded(3);
    let mut tick = WorldTickState::default();
    let mut c = Camp::begin(15, 0, false, false, &mut rng);
    assert_eq!(
        c.step(&mut p, &mut tick, true, false, false, &mut rng),
        CampStep::Cancelled
    );
    assert_eq!(p, before);
    assert_eq!(tick.clock, [1, 0, 0]);
    p[0][29] = -6;
    p[0][28] = 0;
    p[0][17] = 1000;
    p[0][21] = 2;
    recover(&mut p[0]);
    assert_eq!(p[0][29], -6);
    assert_eq!(p[0][28], 30);
    assert_eq!(p[0][17], 1003);
    assert_eq!(p[0][21], 1);
    p[0][17] = 0;
    p[0][21] = 0;
    recover(&mut p[0]);
    assert_eq!(p[0][17], 0);
    assert_eq!(p[0][21], 0);
}
#[test]
fn encounter_boundary_preserves_original_draw_order_without_running_combat() {
    let mut p = party();
    let mut rng = LaleRng::seeded(1);
    let mut expected = rng;
    let roll = expected.scaled(262);
    let at = if roll < 255 {
        expected.scaled(135) as i16 + 1
    } else {
        136
    };
    let mut c = Camp::begin(135, 255, false, false, &mut rng);
    assert_eq!(c.interrupt_at, at);
    assert_eq!(rng, expected);
    let mut tick = WorldTickState::default();
    let mut out = CampStep::Resting;
    for _ in 0..136 {
        out = c.step(&mut p, &mut tick, false, false, false, &mut rng);
        if out != CampStep::Resting {
            break;
        }
    }
    assert_eq!(out, CampStep::Encounter);
    expected.scaled(6);
    assert_eq!(rng, expected);
}
#[test]
fn movement_tenth_minute_threshold_effect_and_starvation_are_separate_from_tick() {
    let mut p = party();
    let mut m = Metabolism::default();
    let before = p;
    assert!(m.world_step(&mut p, [9, 0, 0], [true; 4]).is_empty());
    assert_eq!(p, before);
    assert!(m
        .world_step(&mut p, [10, 0, 0], [false, true, false, false])
        .is_empty());
    assert_eq!(p[0][17], 502);
    assert_eq!(p[0][21], 504);
    assert_eq!(p[1][21], 516);
    p[0][17] = 999;
    p[0][16] = 6;
    p[1][17] = 1000;
    p[1][16] = 3;
    p[2][29] = 0;
    assert_eq!(
        m.world_step(&mut p, [20, 0, 0], [false; 4]),
        vec![HungerEvent::Warning(0), HungerEvent::Death(1)]
    );
    assert_eq!(p[1][29], -6);
    assert_eq!(p[2][17], 502);
    assert_eq!(
        m.world_step(&mut p, [30, 0, 0], [false; 4]),
        vec![HungerEvent::Death(0)]
    );
}

#[test]
fn recovery_matches_all_368_bytes_from_conditioned_dos_original_fragment() {
    use std::path::Path;
    let evidence = Path::new(env!("CARGO_MANIFEST_DIR"))
        .join("../../../analysis/phase-five/rest-foundation-20261022");
    let before = std::fs::read(evidence.join("pulse-before-numeric.bin")).unwrap();
    let expected = std::fs::read(evidence.join("pulse-after-numeric.bin")).unwrap();
    let mut p: [Numeric; 4] = std::array::from_fn(|p| {
        std::array::from_fn(|k| {
            i16::from_le_bytes([before[92 * p + 2 * k], before[92 * p + 2 * k + 1]])
        })
    });
    for n in &mut p {
        recover(n);
    }
    let actual: Vec<u8> = p
        .iter()
        .flat_map(|n| n.iter().flat_map(|v| v.to_le_bytes()))
        .collect();
    assert_eq!(actual, expected);
}
