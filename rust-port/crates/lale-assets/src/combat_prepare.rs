//! Reusable opcode8 operand, creature and placement consumers from 1694:b40a.
//! Entry presentation/party-derived state are explicit earlier boundaries.
use crate::{combat_data, pc_map::PcMap, Error};
use lale_core::combat::CombatState;

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct EncounterRequest {
    pub prefix: u8,
    pub groups: [[u8; 2]; 3],
}
impl EncounterRequest {
    pub fn parse(bytes: &[u8]) -> Result<Self, Error> {
        if bytes.len() != 7 {
            return Err(Error(
                "opcode8 requires prefix and three group/count pairs".into(),
            ));
        }
        let groups = std::array::from_fn(|i| [bytes[1 + 2 * i], bytes[2 + 2 * i]]);
        if groups.iter().any(|g| g[1] > 8 || (g[0] == 0 && g[1] != 0)) {
            return Err(Error(
                "combat group/count outside original eight-slot group".into(),
            ));
        }
        Ok(Self {
            prefix: bytes[0],
            groups,
        })
    }
    pub fn visuals(&self) -> [Option<usize>; 3] {
        self.groups
            .map(|g| (g[0] != 0).then_some(usize::from(g[0]) % 100))
    }
    /// Original class5..7 construction; no enemy-name-specific defaults.
    pub fn initialize_creatures(
        &self,
        executable: &[u8],
        difficulty: u8,
        state: &mut CombatState,
    ) -> Result<(), Error> {
        for (group, [raw, count]) in self.groups.into_iter().enumerate() {
            let class = group + 5;
            if raw == 0 {
                state.classes[class][1..19].fill(0);
            } else {
                // Main b40a subtracts100 once only when raw>100; unlike the
                // visual-name loader, this is not a general remainder100.
                let id = usize::from(if raw > 100 { raw - 100 } else { raw });
                let template = combat_data::creature_template(executable, id, id..=id)?.words;
                state.classes[class][0] =
                    template[1].wrapping_add(i16::from(difficulty).wrapping_mul(template[0]));
                state.classes[class][1..19].copy_from_slice(&template[2..20]);
            }
            state.classes[class][2] = state.classes[class][2].wrapping_add(1);
            for i in 1..=usize::from(count) {
                let actor = &mut state.actors[group * 8 + i];
                let t = state.classes[class];
                actor[0] = t[0];
                actor[1] = t[8];
                actor[2] = 1;
                actor[3] = class as i16;
                actor[7] = if raw > 100 { 1 } else { 2 };
                actor[9] = t[2];
                actor[10] = t[3];
                actor[11..17].copy_from_slice(&t[10..16]);
            }
        }
        Ok(())
    }
}

/// Original all-actor placement, ascending1..28, two RNG draws per attempt.
/// Caller has completed terrain/party/creature preparation. Failure is explicit
/// instead of hanging a host forever when invalid input provides no legal square.
pub fn place_actors(
    map: &PcMap<'_>,
    position: [u16; 2],
    facing: u8,
    region: [i16; 2],
    state: &mut CombatState,
) -> Result<(), Error> {
    let cell = map
        .cell(position[0] as usize, position[1] as usize)
        .ok_or_else(|| Error("combat source cell missing".into()))?;
    let f = usize::from(facing % 4);
    let mut direction = f as i16 + 1;
    if direction == 2 {
        direction = 4;
    } else if direction == 4 {
        direction = 2;
    }
    let mut delta = [0i16; 2];
    if cell[2 * f + 1] != 1 && cell[2 * f + 1] != 3 && cell[2 * f] < 8 {
        delta = match f {
            0 => [0, -1],
            1 => [1, 0],
            2 => [0, 1],
            _ => [-1, 0],
        };
    }
    state.occupancy.fill(0);
    for i in 1..=28 {
        if state.actors[i][0] <= 0 {
            continue;
        }
        let friendly = state.actors[i][7] == 1;
        state.actors[i][2] = if friendly {
            direction
        } else {
            (direction + 1) % 4 + 1
        };
        let r = region[0] + if friendly { 0 } else { delta[0] };
        let c = region[1] + if friendly { 0 } else { delta[1] };
        if !(0..3).contains(&r) || !(0..3).contains(&c) {
            return Err(Error("combat placement region outside active field".into()));
        }
        let mut placed = false;
        for _ in 0..65536 {
            let x = state.rng.scaled(9) as i16 + r * 9;
            //55a1d..55a26 shifts the second draw LEFT3 (bound8), while
            //the first multiplies by9. Preserve the asymmetric region span.
            let y = state.rng.scaled(8) as i16 + c * 9;
            let at = (x * 28 + y) as usize;
            let t = state.terrain[at];
            if state.occupancy[at] != 0 || t > 9 || t == 8 || t == 6 {
                continue;
            }
            state.actors[i][4] = x;
            state.actors[i][5] = y;
            state.occupancy[at] = i as i16;
            placed = true;
            break;
        }
        if !placed {
            return Err(Error(
                "original placement exhausted safety budget; state is incomplete".into(),
            ));
        }
    }
    Ok(())
}
