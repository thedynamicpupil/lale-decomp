//! Reusable, original-word tactical combat kernel (overlay 1694).
//!
//! Ordinary physical combat is covered by RUN3 DS differentials. Presentation,
//! experience/growth, effects, round ticks and equipment parameter refresh remain
//! explicit caller boundaries: none is replaced by guessed mechanics.
use crate::rng::LaleRng;

pub type Actor = [i16; 20];
pub type Class = [i16; 23];
pub const ACTOR_COUNT: usize = 28;
pub const GRID: usize = 28;
pub const CELLS: usize = GRID * GRID;

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct CombatState {
    /// Original A(i), including the separately retained actor-zero sentinel.
    pub actors: [Actor; 29],
    /// Actual class IDs are0..7. The legacy ninth raw row aliases original
    /// actor storage at a08a; initialization never treats it as another class.
    pub classes: [Class; 9],
    /// Original column-major DS c8ee/c2ce: index = 28*x+y.
    pub terrain: [i16; CELLS],
    pub occupancy: [i16; CELLS],
    pub rng: LaleRng,
    pub order: [usize; ACTOR_COUNT],
    pub initiative_keys: [i16; ACTOR_COUNT],
    pub current: usize,
    pub remaining: i16,
    pub round: i16,
    /// Number of sorted slots consumed, including dead/disabled actors.
    pub cursor: usize,
    pub initiative_ready: bool,
    pub missed: bool,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum CombatError {
    InvalidActor,
    InvalidClass,
    InvalidCoordinate,
    UnsupportedEffects,
    UnsupportedOffhand,
    UnsupportedRandomBound,
    NoActiveTurn,
    UnpaidMovement,
    UnsupportedAi,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum BattleResult {
    Victory,
    Defeat,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum TurnBoundary {
    Actor(usize),
    /// Caller must run original shared tick before calling resume_round.
    RoundTick,
    Finished(BattleResult),
}

#[derive(Clone, Copy, Debug, Default, PartialEq, Eq)]
pub struct AttackContext {
    pub override_allowance: bool,
    /// Original d5c2, not a fabricated accuracy modifier.
    pub hit_penalty: i16,
    pub hit_bonus: i16,
    pub damage_bonus: i16,
    /// Original d5b4: prevents target-facing update during departure reactions.
    pub departure_reaction: bool,
    /// Original d5b2 == 1 and counterattack d568 clear.
    pub counterattack_enabled: bool,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct AttackOutcome {
    pub attacker: usize,
    pub target: usize,
    pub raw_damage: i16,
    pub hit_roll: i16,
    pub hit_threshold: i16,
    pub damage: i16,
    /// Original presentation action: 2 incapacitation, 3 damage, 4 zero, 5 miss.
    pub action: i16,
    pub counterattack: bool,
    pub incapacitated: bool,
    /// aa60(attacker,1), plus aa60(attacker,10) on incapacitation.
    pub attacker_progress: i16,
    /// Additional aa60 award to each living party actor on incapacitation.
    pub living_party_progress: i16,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub enum MovementRequest {
    Blocked,
    Attack(usize),
    Step {
        x: i16,
        y: i16,
        departure_reactions: Vec<usize>,
    },
}

impl CombatState {
    pub fn new(rng: LaleRng) -> Self {
        Self {
            actors: [[0; 20]; 29],
            classes: [[0; 23]; 9],
            terrain: [0; CELLS],
            occupancy: [0; CELLS],
            rng,
            order: std::array::from_fn(|i| i + 1),
            initiative_keys: [0; 28],
            current: 0,
            remaining: 0,
            round: 0,
            cursor: 0,
            initiative_ready: false,
            missed: false,
        }
    }

    fn class(&self, actor: usize) -> Result<usize, CombatError> {
        if !(1..=28).contains(&actor) {
            return Err(CombatError::InvalidActor);
        }
        usize::try_from(self.actors[actor][3])
            .ok()
            .filter(|&c| c < self.classes.len())
            .ok_or(CombatError::InvalidClass)
    }

    pub fn cell(x: i16, y: i16) -> Result<usize, CombatError> {
        if !(0..28).contains(&x) || !(0..28).contains(&y) {
            return Err(CombatError::InvalidCoordinate);
        }
        Ok(x as usize * GRID + y as usize)
    }

    /// 1e75: two independent draws (unless first expression is negative), even
    /// for empty slots; stable ascending signed-key ordering.
    pub fn generate_initiative(&mut self) -> Result<(), CombatError> {
        for actor in 1..=28 {
            self.class(actor)?;
        }
        let mut entries = [(0usize, 0i16); 28];
        for actor in 1..=28 {
            let t = self.classes[self.class(actor)?];
            let value = |draw: u16| {
                (draw as i16)
                    .wrapping_add(t[6])
                    .wrapping_add(10)
                    .wrapping_sub(t[3])
            };
            let probe = value(self.rng.scaled(6));
            let key = if probe < 0 {
                0
            } else {
                value(self.rng.scaled(6))
            };
            entries[actor - 1] = (actor, key);
        }
        entries.sort_by_key(|entry| entry.1);
        for (i, (actor, key)) in entries.into_iter().enumerate() {
            self.order[i] = actor;
            self.initiative_keys[i] = key;
        }
        self.cursor = 0;
        self.initiative_ready = true;
        Ok(())
    }

    /// Scheduler 1b6d result policy, distinct from the attack helper's stop flag.
    pub fn result(&self) -> Option<BattleResult> {
        let side = |n| self.actors[1..].iter().any(|a| a[0] > 0 && a[7] == n);
        if !side(2) {
            Some(BattleResult::Victory)
        } else if !side(1) {
            Some(BattleResult::Defeat)
        } else {
            None
        }
    }

    /// Select exactly the original next live actor. Turn-entry speech/viewport
    /// work belongs to the caller and must finish before accepting an action.
    pub fn select_next(&mut self) -> Result<TurnBoundary, CombatError> {
        if let Some(result) = self.result() {
            return Ok(TurnBoundary::Finished(result));
        }
        if self.current > 0 {
            self.actors[self.current][18] = 0;
        }
        if !self.initiative_ready {
            self.generate_initiative()?;
        }
        while self.cursor < 28 {
            let actor = self.order[self.cursor];
            self.cursor += 1;
            if self.actors[actor][0] <= 0 {
                continue;
            }
            if self.actors[actor][17] > 0 {
                self.actors[actor][17] = self.actors[actor][17].wrapping_sub(1);
                continue;
            }
            if self.actors[actor][11..17].iter().any(|&v| v != 0) {
                return Err(CombatError::UnsupportedEffects);
            }
            self.current = actor;
            self.remaining = self.classes[self.class(actor)?][5];
            self.missed = false;
            return Ok(TurnBoundary::Actor(actor));
        }
        Ok(TurnBoundary::RoundTick)
    }

    /// Call only after original 1670:0048 shared round tick and global-effect
    /// clearing have been applied by the host. This method owns no guessed tick.
    pub fn resume_round(&mut self) -> Result<(), CombatError> {
        self.round = self.round.wrapping_add(1);
        self.generate_initiative()
    }

    /// One original first-hand 3f5b physical attack, with no active effects and
    /// no offhand. The original actor-cached threshold deliberately reads CURRENT
    /// actor, including reactions whose attacker is another actor.
    pub fn attack(
        &mut self,
        attacker: usize,
        target: usize,
        context: AttackContext,
    ) -> Result<Option<AttackOutcome>, CombatError> {
        let ac = self.class(attacker)?;
        let tc = self.class(target)?;
        self.class(self.current)?;
        if self.actors[attacker][11..17].iter().any(|&v| v != 0)
            || self.actors[target][11..17].iter().any(|&v| v != 0)
        {
            return Err(CombatError::UnsupportedEffects);
        }
        if self.classes[ac][7] != 0 {
            return Err(CombatError::UnsupportedOffhand);
        }
        let mut cost = self.classes[ac][6];
        if cost > 100 {
            cost = cost.wrapping_sub(100);
        }
        if cost == 0 {
            cost = 1;
        }
        if cost <= 0
            || self.actors[target][0] <= 0
            || (!context.override_allowance && self.remaining < cost)
        {
            return Ok(None);
        }
        let encoded = self.classes[ac][1];
        let quotient = encoded / 100;
        let damage_bound = quotient.wrapping_add(1);
        let hit_bound = self.actors[target][10].wrapping_add(5);
        if damage_bound <= 0 || hit_bound <= 0 {
            return Err(CombatError::UnsupportedRandomBound);
        }
        let threshold = self.actors[self.current][9]
            .wrapping_sub(context.hit_penalty)
            .wrapping_add(context.hit_bonus);
        let protection = self.classes[tc][4];
        let mut raw = (self.rng.scaled(damage_bound as u16) as i16)
            .wrapping_add(encoded)
            .wrapping_sub(quotient.wrapping_mul(100))
            .wrapping_add(context.damage_bonus);
        if self.actors[target][17] > 0 {
            raw = self.actors[target][0].wrapping_add(protection);
        }
        if !context.override_allowance {
            self.remaining = self.remaining.wrapping_sub(cost).max(0);
        }
        let mut roll = self.rng.scaled(hit_bound as u16) as i16;
        self.actors[attacker][6] = target as i16;
        if self.actors[target][17] > 0 {
            roll = 0;
        }
        let hit = roll <= threshold;
        let damage = if hit && raw >= protection {
            raw.wrapping_sub(protection)
        } else {
            0
        };
        let counterattack = !hit
            && threshold < roll.wrapping_sub(5)
            && context.counterattack_enabled
            && !context.departure_reaction
            && context.hit_penalty == 0;
        let incapacitated;
        let mut party_progress = 0;
        if hit {
            self.missed = false;
            self.actors[target][0] = self.actors[target][0].wrapping_sub(damage);
            if damage > 0 {
                self.actors[target][18] = 1;
            }
            incapacitated = self.actors[target][0] < 1;
            if incapacitated {
                let cell = Self::cell(self.actors[target][4], self.actors[target][5])?;
                self.occupancy[cell] = 0;
                let t = self.classes[tc];
                let total = t[0]
                    .wrapping_add(t[8] / 10)
                    .wrapping_add(t[15].signum().wrapping_mul(5))
                    .wrapping_add(t[2])
                    .wrapping_add(t[10].signum().wrapping_mul(3));
                party_progress = (total / 10).max(1);
            }
        } else {
            self.missed = true;
            if !context.override_allowance {
                self.remaining = 0;
            }
            incapacitated = false;
        }
        if !context.departure_reaction {
            let facing = self.actors[attacker][2].wrapping_add(2) % 4;
            self.actors[target][2] = if facing == 0 { 4 } else { facing };
        }
        Ok(Some(AttackOutcome {
            attacker,
            target,
            raw_damage: raw,
            hit_roll: roll,
            hit_threshold: threshold,
            damage,
            action: if incapacitated {
                2
            } else if !hit {
                5
            } else if damage == 0 {
                4
            } else {
                3
            },
            counterattack,
            incapacitated,
            attacker_progress: if !hit {
                0
            } else if incapacitated {
                11
            } else {
                1
            },
            living_party_progress: party_progress,
        }))
    }

    /// Original reaction/AI facing: horizontal axis takes precedence.
    pub fn face_toward(&mut self, actor: usize, target: usize) -> Result<(), CombatError> {
        self.class(actor)?;
        self.class(target)?;
        let dx = self.actors[target][4] - self.actors[actor][4];
        let dy = self.actors[target][5] - self.actors[actor][5];
        self.actors[actor][2] = if dx < 0 {
            2
        } else if dx > 0 {
            4
        } else if dy < 0 {
            1
        } else {
            3
        };
        Ok(())
    }

    /// Original sound192d consumes a draw only when original lookup/gating plays
    /// a sound. The caller owns that decision; silent rendering must still call
    /// this when the original would play one. Returned value is original R15.
    pub fn sound_pitch_draw(&mut self) -> u16 {
        self.rng.next_dos()
    }

    fn neighbors(&self, x: i16, y: i16) -> Vec<usize> {
        let mut actors = Vec::new();
        for dy in -1..=1 {
            for dx in -1..=1 {
                let nx = x + dx;
                let ny = y + dy;
                if (1..=27).contains(&nx) && (1..=27).contains(&ny) {
                    let index = self.occupancy[nx as usize * 28 + ny as usize];
                    if (1..=28).contains(&index) {
                        actors.push(index as usize);
                    }
                }
            }
        }
        actors
    }

    /// 2d39 ordinary movement. Facing updates even when a step is blocked.
    /// Departure reactions must be resolved BEFORE commit_step; arrival reactions
    /// returned by commit_step must be resolved AFTER occupancy/position commit.
    pub fn plan_step(&mut self, direction: u8) -> Result<MovementRequest, CombatError> {
        self.class(self.current)?;
        if self.remaining <= 0 {
            return Err(CombatError::NoActiveTurn);
        }
        let (dx, dy, facing) = match direction {
            1 => (0, -1, 1),
            2 => (1, -1, 4),
            3 => (1, 0, 4),
            4 => (1, 1, 4),
            5 => (0, 1, 3),
            6 => (-1, 1, 2),
            7 => (-1, 0, 2),
            8 => (-1, -1, 2),
            _ => return Err(CombatError::InvalidCoordinate),
        };
        let actor = self.actors[self.current];
        self.actors[self.current][2] = facing;
        let x = actor[4].wrapping_add(dx).clamp(0, 26);
        let y = actor[5].wrapping_add(dy).clamp(0, 26);
        let cell = Self::cell(x, y)?;
        let occupant = self.occupancy[cell];
        if (1..=28).contains(&occupant) {
            if actor[7] == 1 && self.actors[occupant as usize][7] != actor[7] {
                return Ok(MovementRequest::Attack(occupant as usize));
            }
            return Ok(MovementRequest::Blocked);
        }
        let terrain = self.terrain[cell];
        if terrain >= 10 || terrain == 6 || terrain == 8 {
            return Ok(MovementRequest::Blocked);
        }
        self.remaining = self.remaining.wrapping_sub(1);
        let departure_reactions = self
            .neighbors(actor[4], actor[5])
            .into_iter()
            .filter(|&other| {
                let a = self.actors[other];
                a[7] != actor[7] && a[17] == 0 && ((a[4] - x).abs() > 1 || (a[5] - y).abs() > 1)
            })
            .collect();
        Ok(MovementRequest::Step {
            x,
            y,
            departure_reactions,
        })
    }

    pub fn commit_step(&mut self, request: &MovementRequest) -> Result<Vec<usize>, CombatError> {
        let MovementRequest::Step { x, y, .. } = *request else {
            return Err(CombatError::UnpaidMovement);
        };
        let actor = self.actors[self.current];
        if actor[0] <= 0 {
            self.remaining = 0;
            return Ok(Vec::new());
        }
        let old = Self::cell(actor[4], actor[5])?;
        let new = Self::cell(x, y)?;
        if self.occupancy[new] != 0 {
            return Err(CombatError::UnpaidMovement);
        }
        self.occupancy[old] = 0;
        self.occupancy[new] = self.current as i16;
        self.actors[self.current][4] = x;
        self.actors[self.current][5] = y;
        Ok(self
            .neighbors(x, y)
            .into_iter()
            .filter(|&other| {
                let a = self.actors[other];
                a[7] != actor[7]
                    && a[17] == 0
                    && ((a[4] - actor[4]).abs() > 1 || (a[5] - actor[5]).abs() > 1)
                    && !self
                        .neighbors(a[4], a[5])
                        .into_iter()
                        .any(|n| n != self.current && self.actors[n][7] != a[7])
            })
            .collect())
    }
}

/// Ordinary resource-zero, melee AI decision (9668). No encounter identity is
/// used. Surrender/casting/ranged paths require their own implementations.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum PhysicalAiAction {
    Attack(usize),
    Approach { target: usize, directions: [u8; 3] },
    NoOpponent,
}
impl CombatState {
    /// `clear_line` is original probe d560 toward the remembered target BEFORE
    /// retargeting. The caller must not substitute occupancy ray casting.
    pub fn physical_ai_decision(
        &mut self,
        clear_line: bool,
        surrender_evaluation: bool,
    ) -> Result<PhysicalAiAction, CombatError> {
        let c = self.class(self.current)?;
        let a = self.actors[self.current];
        if a[7] != 2 || a[1] != 0 || self.classes[c][6] > 100 || surrender_evaluation {
            return Err(CombatError::UnsupportedAi);
        }
        if self.remaining <= 0 {
            return Err(CombatError::NoActiveTurn);
        }
        let living: Vec<_> = (1..=28)
            .filter(|&i| self.actors[i][0] > 0 && self.actors[i][7] == 1)
            .collect();
        if living.is_empty() {
            return Ok(PhysicalAiAction::NoOpponent);
        }
        let mut target = usize::try_from(a[6])
            .ok()
            .filter(|&i| i <= 28)
            .ok_or(CombatError::InvalidActor)?;
        let old = self.actors[target];
        let adjacent = self
            .neighbors(a[4], a[5])
            .into_iter()
            .filter(|&i| i != self.current && self.actors[i][7] == 1)
            .count();
        let mut threshold = if old[0] < 1 || old[7] == 2 {
            100
        } else if (a[4] - old[4]).abs() < 2 && (a[5] - old[5]).abs() < 2 {
            5 * adjacent as i16
        } else {
            match (adjacent == 0, clear_line) {
                (true, false) => 50,
                (true, true) => 5,
                (false, false) => 90,
                (false, true) => 70,
            }
        };
        if a[18] != 0 {
            threshold += 5;
        }
        if self.rng.scaled(100) as i16 + 1 <= threshold {
            if adjacent > 0 && self.rng.scaled(100) as usize + 1 < 10 * adjacent + 70 {
                // Preserve the original stale-neighbor local: the selection
                // loops repeatedly test the final scanned cell (x+1,y+1).
                let stale = if (1..=27).contains(&(a[4] + 1)) && (1..=27).contains(&(a[5] + 1)) {
                    self.occupancy[Self::cell(a[4] + 1, a[5] + 1)?]
                } else {
                    0
                };
                if !(0..=28).contains(&stale) {
                    return Err(CombatError::InvalidActor);
                }
                let stale = stale as usize;
                let mut selected = false;
                if self.actors[stale][6] == self.current as i16 {
                    for _ in 0..9 {
                        if self.rng.scaled(100) + 1 < 80 {
                            target = stale;
                            selected = true;
                            break;
                        }
                    }
                }
                if !selected {
                    let ordinal = if adjacent <= 1 {
                        1
                    } else {
                        self.rng.scaled(adjacent as u16) as usize + 1
                    };
                    if stale > self.current && self.actors[stale][7] == 1 && ordinal <= 9 {
                        target = stale;
                    }
                }
            } else {
                target = living[self.rng.scaled(living.len() as u16) as usize];
            }
        }
        if self.actors[target][0] < 1 || self.actors[target][7] == 2 {
            target = living[0];
        }
        self.actors[self.current][6] = target as i16;
        let dx = self.actors[target][4] - a[4];
        let dy = self.actors[target][5] - a[5];
        self.actors[self.current][2] = if dx < 0 {
            2
        } else if dx > 0 {
            4
        } else if dy < 0 {
            1
        } else {
            3
        };
        if dx.abs() < 2 && dy.abs() < 2 {
            return Ok(PhysicalAiAction::Attack(target));
        }
        let direction = match (dx.signum(), dy.signum()) {
            (0, -1) => 1,
            (1, -1) => 2,
            (1, 0) => 3,
            (1, 1) => 4,
            (0, 1) => 5,
            (-1, 1) => 6,
            (-1, 0) => 7,
            (-1, -1) => 8,
            _ => return Err(CombatError::UnsupportedAi),
        };
        Ok(PhysicalAiAction::Approach {
            target,
            directions: [
                direction,
                if direction == 1 { 8 } else { direction - 1 },
                if direction == 8 { 1 } else { direction + 1 },
            ],
        })
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct LineProbe {
    pub clear: bool,
    pub distance: i16,
}
impl CombatState {
    /// Original 0f86 target-to-source signed 100-scaled traversal. Occupancy is
    /// deliberately ignored; terrain 10..13 blocks, target terrain0 clears.
    pub fn line_probe(&self, actor: usize, x: i16, y: i16) -> Result<LineProbe, CombatError> {
        if actor > 28 {
            return Err(CombatError::InvalidActor);
        }
        Self::cell(x, y)?;
        let a = self.actors[actor];
        Self::cell(a[4], a[5])?;
        let dx = x.wrapping_sub(a[4]);
        let dy = y.wrapping_sub(a[5]);
        let mut result = LineProbe {
            clear: true,
            distance: 1,
        };
        if dx == 0 && dy == 0 {
            return Ok(result);
        }
        let x_major = dx.wrapping_abs() >= dy.wrapping_abs();
        let (major, minor) = if x_major { (dx, dy) } else { (dy, dx) };
        let slope = minor.wrapping_mul(100) / major;
        let sign = if major > 0 { 1 } else { -1 };
        let mut m = major;
        let mut n = minor.wrapping_mul(100);
        while m != 0 {
            let (px, py) = if x_major {
                (a[4].wrapping_add(m), a[5].wrapping_add(n / 100))
            } else {
                (a[4].wrapping_add(n / 100), a[5].wrapping_add(m))
            };
            result.distance = result.distance.wrapping_add(1);
            if (10..=13).contains(&self.terrain[Self::cell(px, py)?]) {
                result.clear = false;
                break;
            }
            m = m.wrapping_sub(sign);
            n = n.wrapping_sub(slope.wrapping_mul(sign));
        }
        if self.terrain[Self::cell(x, y)?] == 0 {
            result.clear = false;
        }
        Ok(result)
    }
}

/// Raw persistent growth inputs for original aa60/aaae. The two working tables
/// are not part of the 92-byte serialized character record; retain them through
/// combat rather than resetting them on every award.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct PartyProgress {
    pub numeric: [[i16; 46]; 4],
    /// Original DS9902+34*p, p=1..4.
    pub trackers: [[i16; 17]; 4],
    /// Original DS9b74+36*p, p=1..4; initializer is outside this kernel.
    pub modifiers: [[i16; 18]; 4],
}
impl PartyProgress {
    /// aa60: classes1..4 own persistent party records, enemy classes do not.
    pub fn award(&mut self, class: usize, amount: i16) -> Result<(), CombatError> {
        if class >= 5 {
            return Ok(());
        }
        if class == 0 {
            return Err(CombatError::InvalidClass);
        }
        self.numeric[class - 1][4] = self.numeric[class - 1][4].wrapping_add(amount);
        self.grow(class)
    }

    /// 546fe..54c9c growth transcription. Thresholds are single checks,
    /// not while loops; original growth can happen at most once per call/rule.
    pub fn grow(&mut self, class: usize) -> Result<(), CombatError> {
        if !(1..=4).contains(&class) {
            return Err(CombatError::InvalidClass);
        }
        let p = class - 1;
        let n = &mut self.numeric[p];
        let t = &mut self.trackers[p];
        let m = self.modifiers[p];
        let delta = n[4].wrapping_sub(t[0]);
        if delta >= 1 {
            n[3] = n[3].wrapping_add(delta);
            t[0] = n[4];
        }
        if n[4].wrapping_sub(t[3]) >= 1000 {
            n[6] = n[6].wrapping_add(m[5].max(0).wrapping_add(1));
            t[3] = n[4];
        }
        for (source, tracker, threshold, destination, modifier) in [
            (3, 4, 190, 7, 2),
            (4, 5, 100, 8, 3),
            (3, 6, 210, 9, 7),
            (4, 7, 100, 10, 6),
            (3, 9, 200, 12, 10),
            (3, 12, 235, 14, 11),
            (3, 13, 2000, 15, 12),
            (3, 14, 200, 16, 13),
        ] {
            if n[source].wrapping_sub(t[tracker]) >= threshold {
                n[destination] =
                    n[destination].wrapping_add(m[modifier].signum().max(0).wrapping_add(1));
                t[tracker] = n[source];
            }
        }
        // Original order puts this 1900 rule between the 200 and 235 rules.
        // It reads an independent tracker/stat, so the grouped implementation
        // above has identical observable order and no shared-stat dependency.
        if n[3].wrapping_sub(t[11]) >= 1900 {
            n[13] = n[13].wrapping_add(m[8].wrapping_sub(3));
            t[11] = n[3];
        }
        Ok(())
    }

    /// Original 3955 action-presentation side effect (4d5f7..4d699).
    /// Invoke at the original scheduled action boundary, never on host redraw.
    /// `phase` is DS:d5bc; the original uses signed division by60.
    pub fn presentation_progress(&mut self, class: usize, phase: i16) -> Result<(), CombatError> {
        if class >= 5 {
            return Ok(());
        }
        if class == 0 {
            return Err(CombatError::InvalidClass);
        }
        let p = class - 1;
        let stage = phase / 60;
        self.numeric[p][3] =
            self.numeric[p][3].wrapping_add(stage.wrapping_mul(10).wrapping_add(10));
        self.numeric[p][5] = self.numeric[p][5]
            .wrapping_add(self.modifiers[p][4].wrapping_add(stage).wrapping_add(3));
        self.grow(class)
    }
}
impl CombatState {
    /// Apply original attack progress call order. Refreshing display-derived
    /// class fields after this is a separate original64f5 caller boundary.
    pub fn apply_attack_progress(
        &self,
        outcome: &AttackOutcome,
        party: &mut PartyProgress,
    ) -> Result<(), CombatError> {
        if outcome.attacker_progress == 0 {
            return Ok(());
        }
        let ac = self.class(outcome.attacker)?;
        party.award(ac, 1)?;
        if outcome.incapacitated {
            party.award(ac, 10)?;
            let tc = self.class(outcome.target)?;
            if (1..=4).contains(&tc) {
                party.numeric[tc - 1][3] = party.numeric[tc - 1][3].wrapping_add(10);
                party.grow(tc)?;
            }
            for actor in 25..=28 {
                if self.actors[actor][0] > 0 {
                    party.award(self.class(actor)?, outcome.living_party_progress)?;
                }
            }
        }
        Ok(())
    }
}
