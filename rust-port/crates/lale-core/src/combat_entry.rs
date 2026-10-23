//! Source-owned combat music selection and channel operations, before568c.
//! b54a/b568 -> resident6863 ->1682:1f32. Not an arbitrary RNG burn.
use crate::rng::LaleRng;
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct MusicGates {
    pub audio_enabled: bool,
    pub combat_music: bool,
}
/// Original module ID12=Savas.Amf,16=uni.amf, via the original name table.
pub fn choose_music(gates: MusicGates, rng: &mut LaleRng) -> Option<u16> {
    (gates.audio_enabled && gates.combat_music).then(|| if rng.scaled(2) == 0 { 16 } else { 12 })
}
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ChannelBalance {
    pub channel: u16,
    pub value: i16,
}
/// 1f32 three draws per pair: R(21), R(4), R(4). Returns actual channel commands
/// rather than hiding discarded random calls. Silent host presentation must still
/// retain these source operations when original audio/music gates are enabled.
/// An odd source channel count deliberately still emits the second pair member.
pub fn channel_balances(channels: u8, rng: &mut LaleRng) -> Vec<ChannelBalance> {
    let mut commands = Vec::new();
    for channel in (0..u16::from(channels)).step_by(2) {
        let base = rng.scaled(21) as i16;
        let left = base.wrapping_add(rng.scaled(4) as i16);
        let right = base.wrapping_neg().wrapping_sub(rng.scaled(4) as i16);
        commands.push(ChannelBalance {
            channel,
            value: left,
        });
        commands.push(ChannelBalance {
            channel: channel + 1,
            value: right,
        });
    }
    commands
}
#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn original_disabled_gates_and_empty_channel_loop_consume_no_random_draws() {
        for (audio_enabled, combat_music) in [(false, false), (false, true), (true, false)] {
            let mut rng = LaleRng::seeded(1234);
            let original = rng;
            assert_eq!(
                choose_music(
                    MusicGates {
                        audio_enabled,
                        combat_music
                    },
                    &mut rng
                ),
                None
            );
            assert_eq!(rng, original);
            assert!(channel_balances(0, &mut rng).is_empty());
            assert_eq!(rng, original);
        }
    }
}
