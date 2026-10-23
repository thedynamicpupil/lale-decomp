//! Original 1694:64f5/6345 party conversion; equipment refresh is NOT actor sync.
//! Instruction provenance: analysis/phase-five/combat-entry-party-20261021/.
use crate::combat::{Actor, Class, CombatState};

pub type Numeric = [i16; 46];
/// Native world's exact four92-byte records, with original signed word bits.
pub fn decode_numeric(records: &[[u8; 92]; 4]) -> [Numeric; 4] {
    records.map(|record| {
        std::array::from_fn(|i| i16::from_le_bytes([record[2 * i], record[2 * i + 1]]))
    })
}
pub struct PartyTables<'a> {
    pub weapons: &'a [[i16; 7]],
    pub clothing: &'a [i16],
    pub primary_dispatch: &'a [i16; 5],
}
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum ConversionError {
    EquipmentReferenceOutsideRecord,
    TableIndexOutsideRecoveredRange,
    /// 64f5 reads beyond its initialized locals for primary IDs above26.
    /// Reproducing the caller's original stack ownership requires more evidence.
    UnsupportedPrimaryStackLookup,
}
impl PartyTables<'_> {
    fn weapon(&self, id: i16) -> Result<[i16; 7], ConversionError> {
        let id = if id == 43 { 26 } else { id };
        usize::try_from(id)
            .ok()
            .and_then(|i| self.weapons.get(i))
            .copied()
            .ok_or(ConversionError::TableIndexOutsideRecoveredRange)
    }
    fn clothing(&self, id: i16) -> Result<i16, ConversionError> {
        usize::try_from(id)
            .ok()
            .and_then(|i| self.clothing.get(i))
            .copied()
            .ok_or(ConversionError::TableIndexOutsideRecoveredRange)
    }
}
fn equipped(n: &Numeric, reference: usize) -> Result<i16, ConversionError> {
    // Even ref0 is dereferenced in the original: do not replace with item0.
    usize::try_from(n[reference])
        .ok()
        .and_then(|i| n.get(i))
        .copied()
        .ok_or(ConversionError::EquipmentReferenceOutsideRecord)
}
fn effect(a: &Actor, id: u16) -> bool {
    // 20e0 uses DIV (unsigned), not IDIV, on the five timer words.
    a[11..16].iter().any(|&v| (v as u16) % 100 == id)
}
fn subtract_floor_zero(value: i16, amount: i16) -> i16 {
    if value < amount {
        0
    } else {
        value.wrapping_sub(amount)
    }
}

/// 6828 outputs, retained separately from actor-cached hit/evasion words.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct AttackParameters {
    pub encoded: i16,
    pub base: i16,
    pub threshold: i16,
}
pub fn attack_parameters(
    n: &Numeric,
    actor: &Actor,
    tables: &PartyTables<'_>,
    hand: i16,
) -> Result<AttackParameters, ConversionError> {
    let raw = equipped(n, if hand == 2 { 31 } else { 30 })?;
    let encoded = if raw == 0 {
        200
    } else {
        tables.weapon(raw % 100)?[0]
    };
    let mut base = (encoded % 100)
        .wrapping_add((n[8] / 100).max(0))
        .wrapping_add(raw / 100);
    if equipped(n, 30)? % 100 == n[22] {
        base = base.wrapping_add(1);
    }
    let mut h = (n[10] / 300).wrapping_add(base);
    if n[21] > 500 {
        h = subtract_floor_zero(h, 2);
    }
    if effect(actor, 10) {
        h = h.wrapping_add(1);
    }
    if effect(actor, 20) {
        h = subtract_floor_zero(h, 2);
    }
    h = subtract_floor_zero(h, n[21] / 300);
    if effect(actor, 21) {
        h = 0;
    }
    Ok(AttackParameters {
        encoded,
        base,
        threshold: h,
    })
}

/// Original64f5 inventory-weight loop; pure access for the world host.
pub fn carried_weight(n: &Numeric, tables: &PartyTables<'_>) -> Result<i16, ConversionError> {
    let mut carried = 0i16;
    for &raw in &n[35..45] {
        let id = raw % 100;
        let weight = if id < 26 || id == 43 {
            tables.weapon(id)?[2]
        } else if id < 33 {
            tables.clothing(id)?
        } else {
            1
        };
        carried = carried.wrapping_add(weight);
    }
    Ok(carried)
}

/// 64f5 updates class-owned words and only numeric+5a. Other numeric words,
/// unassigned class words and EVERY actor word are retained. `hand` is the
/// original global d5b6; only value2 selects the secondary parameter helper.
/// Errors are transactional, including unresolved original stack reads.
pub fn refresh(
    numeric: &mut Numeric,
    actor: &Actor,
    class: &mut Class,
    tables: &PartyTables<'_>,
    hand: i16,
) -> Result<(), ConversionError> {
    let mut n = *numeric;
    let mut t = *class;
    let main = equipped(&n, 30)?;
    let secondary = equipped(&n, 31)?;
    let clothes = equipped(&n, 32)?;
    if main % 100 > 26 {
        return Err(ConversionError::UnsupportedPrimaryStackLookup);
    }
    t[0] = n[6];
    let attack = attack_parameters(&n, actor, tables, hand)?;
    t[1] = (attack.encoded / 100)
        .wrapping_mul(100)
        .wrapping_add(attack.base);
    t[2] = attack.threshold;
    let carried = carried_weight(&n, tables)?;
    n[45] = carried;
    let capacity = (n[10] / 50).wrapping_add(7);
    let mut evasion = subtract_floor_zero(capacity, carried);
    if effect(actor, 10) {
        evasion = evasion.wrapping_add(1);
    }
    if effect(actor, 11) {
        evasion = evasion.wrapping_add(2);
    }
    if clothes % 100 == 27 && n[1] == 8 {
        evasion = evasion.wrapping_add(3);
    }
    if effect(actor, 28) {
        evasion = evasion.wrapping_add(1);
    }
    if effect(actor, 20) {
        evasion = subtract_floor_zero(evasion, 2);
    }
    if effect(actor, 21) {
        evasion = 0;
    }
    t[3] = evasion;
    let mut protection = if clothes % 100 == 0 {
        0
    } else {
        tables.clothing(clothes % 100)?.wrapping_add(clothes / 100)
    };
    if secondary % 100 == 26 {
        protection = protection.wrapping_add(secondary / 100).wrapping_add(1);
    }
    t[4] = protection.wrapping_add(n[9] / 300);
    let excess = if carried < 5 {
        0
    } else {
        carried.wrapping_sub(5)
    };
    let allowance = 10i16.wrapping_sub(excess);
    t[5] = if allowance < 3 { 3 } else { allowance };
    t[6] = if n[30] == 0 {
        0
    } else {
        tables.weapon(main % 100)?[5]
    };
    // The original compares the FULL raw secondary word against26, not its ID.
    t[7] = if secondary < 26 && secondary != 0 {
        tables.weapon(secondary % 100)?[5]
    } else {
        0
    };
    t[8] = n[5];
    t[9] = n[11];
    t[10..15].copy_from_slice(&n[23..28]);
    t[15] = n[34];
    // bp-36+2*id: IDs21..25 address the ten copied DS6417 bytes atbp-c.
    // ID26 addresses local_4 atbp-2, whose preceding loop finished at6.
    // Larger IDs depend on saved BP/caller stack; do not invent those words.
    if (21..=25).contains(&(main % 100)) {
        t[16] = tables.primary_dispatch[(main % 100 - 21) as usize];
    } else if main % 100 == 26 {
        t[16] = 6;
    }
    *numeric = n;
    *class = t;
    Ok(())
}

/// 6345 performs64f5 and an explicit initial copy into actors25..28. Calling
/// refresh for inventory changes later must NOT repeat this actor-cache copy.
pub fn initialize(
    numeric: &mut [Numeric; 4],
    state: &mut CombatState,
    tables: &PartyTables<'_>,
    hand: i16,
) -> Result<(), ConversionError> {
    let mut records = *numeric;
    let mut next = state.clone();
    for p in 0..4 {
        refresh(
            &mut records[p],
            &next.actors[25 + p],
            &mut next.classes[1 + p],
            tables,
            hand,
        )?;
        let n = records[p];
        let t = next.classes[1 + p];
        let a = &mut next.actors[25 + p];
        a[0] = n[29];
        a[1] = n[28];
        a[2] = 1;
        a[3] = p as i16 + 1;
        a[7] = 1;
        a[9] = t[2];
        a[10] = t[3];
        a[11..17].copy_from_slice(&t[10..16]);
    }
    *numeric = records;
    *state = next;
    Ok(())
}
