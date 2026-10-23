use lale_core::{combat::*, rng::LaleRng};
use std::{fs, path::Path};
fn capture(name: &str) -> Vec<u8> {
    fs::read(
        Path::new(env!("CARGO_MANIFEST_DIR"))
            .join("../../../analysis/phase-five/combat-runtime-20261020/capture")
            .join(format!("{name}-DS.BIN")),
    )
    .unwrap()
}
fn word(ds: &[u8], offset: usize) -> i16 {
    i16::from_le_bytes(ds[offset..offset + 2].try_into().unwrap())
}
fn seed(ds: &[u8]) -> u32 {
    u32::from_le_bytes(ds[0x94c4..0x94c8].try_into().unwrap())
}
fn state(ds: &[u8]) -> CombatState {
    let mut s = CombatState::new(LaleRng { state: seed(ds) });
    for i in 0..29 {
        for k in 0..20 {
            s.actors[i][k] = word(ds, 0xa08a + 40 * i + 2 * k);
        }
    }
    for i in 0..9 {
        for k in 0..23 {
            s.classes[i][k] = word(ds, 0x9f1a + 46 * i + 2 * k);
        }
    }
    for i in 0..784 {
        s.occupancy[i] = word(ds, 0xc2ce + 2 * i);
        s.terrain[i] = word(ds, 0xc8ee + 2 * i);
    }
    s.current = word(ds, 0xd5de) as usize;
    s.remaining = word(ds, 0xd54c);
    s.round = word(ds, 0xd54a);
    s.missed = word(ds, 0xd55a) != 0;
    s
}
#[test]
fn initiative_matches_all_28_original_sorted_slots_and_seed() {
    let mut s = state(&capture("INITIATIVE-BEFORE"));
    let after = capture("INITIATIVE-AFTER");
    s.generate_initiative().unwrap();
    assert_eq!(s.rng.state, seed(&after));
    assert_eq!(s.rng.state, 0x3d0c9906);
    for i in 0..28 {
        assert_eq!(s.order[i], word(&after, 0xd4c0 + 2 * (i + 1)) as usize);
        assert_eq!(s.initiative_keys[i], word(&after, 0xd4fa + 2 * (i + 1)));
    }
}
#[test]
fn six_original_first_hand_attacks_match_actor_occupancy_allowance_and_rng() {
    for name in ["P01", "P02", "P05", "AI-A01", "AI-A02", "AI-A03"] {
        let before = capture(&format!("{name}-BEFORE"));
        let after = capture(&format!("{name}-AFTER"));
        let mut s = state(&before);
        let outcome = s
            .attack(
                word(&before, 0xd56e) as usize,
                word(&before, 0xd56c) as usize,
                AttackContext {
                    override_allowance: word(&before, 0xd5a4) != 0,
                    hit_penalty: word(&before, 0xd5c2),
                    departure_reaction: word(&before, 0xd5b4) != 0,
                    counterattack_enabled: word(&before, 0xd5b2) == 1,
                    ..AttackContext::default()
                },
            )
            .unwrap()
            .unwrap();
        // Killing P05 does not pass the original sound192d gate.
        if name != "P05" {
            s.sound_pitch_draw();
        }
        assert_eq!(s.rng.state, seed(&after), "{name} RNG");
        assert_eq!(s.actors, state(&after).actors, "{name} actor words");
        assert_eq!(s.occupancy, state(&after).occupancy, "{name} occupancy");
        assert_eq!(s.remaining, word(&after, 0xd54c), "{name} allowance");
        assert_eq!(s.missed, word(&after, 0xd55a) != 0, "{name} miss flag");
        if name == "P01" {
            assert_eq!(
                (outcome.raw_damage, outcome.hit_roll, outcome.damage),
                (3, 1, 2)
            );
        }
        if name == "P02" {
            assert_eq!(
                (outcome.raw_damage, outcome.hit_roll, outcome.hit_threshold),
                (2, 2, 1)
            );
        }
        if name == "P05" {
            assert_eq!(s.result(), Some(BattleResult::Victory));
            assert!(outcome.incapacitated);
        }
    }
}

#[test]
fn complete_original_ai_trial_matches_fourteen_draws_and_actor_grid_state() {
    let before = capture("AI0-BEFORE");
    let after = capture("AI0-AFTER");
    let mut s = state(&before);
    assert_eq!(s.current, 1);
    // These ordinary probe flags are retained at the actual original RNG entry.
    for (stage, capture_name) in ["AI-R01", "AI-R04", "AI-R11"].into_iter().enumerate() {
        let probe = capture(capture_name);
        let remembered = s.actors[s.current][6] as usize;
        let line = s
            .line_probe(s.current, s.actors[remembered][4], s.actors[remembered][5])
            .unwrap();
        assert_eq!(line.clear, word(&probe, 0xd560) != 0);
        assert_eq!(line.distance, word(&probe, 0xd564));
        let choice = s.physical_ai_decision(line.clear, false).unwrap();
        if stage < 2 {
            let PhysicalAiAction::Approach { target, directions } = choice else {
                panic!("approach expected");
            };
            assert_eq!(target, 26);
            let request = s.plan_step(directions[0]).unwrap();
            let MovementRequest::Step {
                ref departure_reactions,
                ..
            } = request
            else {
                panic!("step expected");
            };
            assert!(departure_reactions.is_empty());
            let arrivals = s.commit_step(&request).unwrap();
            if stage == 0 {
                assert!(arrivals.is_empty());
                s.sound_pitch_draw();
            } else {
                assert_eq!(arrivals, vec![25, 26]);
                for attacker in arrivals {
                    s.face_toward(attacker, s.current).unwrap();
                    let result = s
                        .attack(
                            attacker,
                            s.current,
                            AttackContext {
                                override_allowance: true,
                                counterattack_enabled: true,
                                ..AttackContext::default()
                            },
                        )
                        .unwrap()
                        .unwrap();
                    assert!(!result.incapacitated);
                    s.sound_pitch_draw();
                }
            }
        } else {
            assert_eq!(choice, PhysicalAiAction::Attack(26));
            s.attack(
                s.current,
                26,
                AttackContext {
                    counterattack_enabled: true,
                    ..AttackContext::default()
                },
            )
            .unwrap()
            .unwrap();
            s.sound_pitch_draw();
        }
    }
    assert_eq!(s.rng.state, 0x8c21607c);
    assert_eq!(s.rng.state, seed(&after));
    assert_eq!(s.actors, state(&after).actors);
    assert_eq!(s.occupancy, state(&after).occupancy);
    assert_eq!(s.remaining, word(&after, 0xd54c));
}

fn progress(ds: &[u8]) -> PartyProgress {
    PartyProgress {
        numeric: std::array::from_fn(|p| {
            std::array::from_fn(|k| word(ds, 0x99a6 + 92 * (p + 1) + 2 * k))
        }),
        trackers: std::array::from_fn(|p| {
            std::array::from_fn(|k| word(ds, 0x9902 + 34 * (p + 1) + 2 * k))
        }),
        modifiers: std::array::from_fn(|p| {
            std::array::from_fn(|k| word(ds, 0x9b74 + 36 * (p + 1) + 2 * k))
        }),
    }
}
#[test]
fn original_victory_attack_progress_matches_all_party_and_tracker_words() {
    for name in ["P01", "P02", "P05", "AI-A01", "AI-A02", "AI-A03"] {
        let before = capture(&format!("{name}-BEFORE"));
        let after = capture(&format!("{name}-AFTER"));
        let mut s = state(&before);
        let mut party = progress(&before);
        let outcome = s
            .attack(
                word(&before, 0xd56e) as usize,
                word(&before, 0xd56c) as usize,
                AttackContext {
                    override_allowance: word(&before, 0xd5a4) != 0,
                    ..AttackContext::default()
                },
            )
            .unwrap()
            .unwrap();
        s.apply_attack_progress(&outcome, &mut party).unwrap();
        if outcome.incapacitated {
            // Original active-action3955, not aa60/aaae, owns this additional
            // scheduled write. Keep it separate from pure framebuffer redraw.
            party
                .presentation_progress(s.actors[s.current][3] as usize, word(&before, 0xd5bc))
                .unwrap();
        }
        assert_eq!(party.numeric, progress(&after).numeric, "{name} numeric");
        assert_eq!(party.trackers, progress(&after).trackers, "{name} trackers");
        assert_eq!(
            party.modifiers,
            progress(&after).modifiers,
            "{name} modifier preservation"
        );
    }
}
