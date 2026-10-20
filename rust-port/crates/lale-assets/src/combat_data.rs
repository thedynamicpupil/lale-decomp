//! Raw resident combat tables in the original IST.EXE.
//!
//! Original DS maps to file offset `0x19200 + ds_offset`. Each accessor requires
//! the caller's independently validated ID interval: no total table count or
//! item alias is inferred here. These reads do not authenticate an executable,
//! calculate combat statistics, decode names, or initialize a battle.
//!
//! Evidence: analysis/phase-five/first-combat-20261020/{INVENTORY_COMBAT_EVIDENCE,
//! INITIATIVE_DOG_AI_MODEL}.md. Original consumers include 1694:6828 and b40a.

use crate::Error;
use std::ops::RangeInclusive;

pub const ORIGINAL_DS_FILE_BASE: usize = 0x19200;
pub const CREATURE_NAMES_DS: usize = 0x2185;
pub const CREATURE_TEMPLATES_DS: usize = 0x1287;
pub const WEAPONS_DS: usize = 0x0e79;

/// Exact source coordinates and bytes, including name padding and word signs.
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub struct RawRecord<'a, const N: usize> {
    pub id: usize,
    pub ds_offset: usize,
    pub file_offset: usize,
    pub bytes: &'a [u8; N],
}

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub struct WordRecord<'a, const N: usize, const W: usize> {
    pub source: RawRecord<'a, N>,
    pub words: [i16; W],
}

pub type CreatureName<'a> = RawRecord<'a, 9>;
pub type CreatureTemplate<'a> = WordRecord<'a, 46, 23>;
pub type WeaponRecord<'a> = WordRecord<'a, 14, 7>;

fn record<'a, const N: usize>(
    executable: &'a [u8],
    table_ds: usize,
    id: usize,
    validated_ids: RangeInclusive<usize>,
) -> Result<RawRecord<'a, N>, Error> {
    if validated_ids.is_empty() || !validated_ids.contains(&id) {
        return Err(Error(
            "combat table ID outside caller-validated range".into(),
        ));
    }
    let ds_offset = id
        .checked_mul(N)
        .and_then(|at| table_ds.checked_add(at))
        .ok_or_else(|| Error("combat table offset overflow".into()))?;
    let ds_end = ds_offset
        .checked_add(N)
        .filter(|end| *end <= 0x10000)
        .ok_or_else(|| Error("combat record exceeds original DS segment".into()))?;
    let file_offset = ORIGINAL_DS_FILE_BASE + ds_offset;
    let file_end = ORIGINAL_DS_FILE_BASE + ds_end;
    let bytes = executable
        .get(file_offset..file_end)
        .ok_or_else(|| Error("truncated original combat record".into()))?
        .try_into()
        .map_err(|_| Error("invalid combat record extent".into()))?;
    Ok(RawRecord {
        id,
        ds_offset,
        file_offset,
        bytes,
    })
}

fn word_record<const N: usize, const W: usize>(source: RawRecord<'_, N>) -> WordRecord<'_, N, W> {
    // Only fixed, independently recovered 46/23 and 14/7 layouts call this.
    let words =
        std::array::from_fn(|i| i16::from_le_bytes([source.bytes[i * 2], source.bytes[i * 2 + 1]]));
    WordRecord { source, words }
}

/// Original fixed nine-byte name cell, without Turkish/ASCII normalization.
pub fn creature_name(
    executable: &[u8],
    id: usize,
    validated_ids: RangeInclusive<usize>,
) -> Result<CreatureName<'_>, Error> {
    record(executable, CREATURE_NAMES_DS, id, validated_ids)
}

/// Original 23 signed words; no difficulty scaling or class-state conversion.
pub fn creature_template(
    executable: &[u8],
    id: usize,
    validated_ids: RangeInclusive<usize>,
) -> Result<CreatureTemplate<'_>, Error> {
    Ok(word_record(record(
        executable,
        CREATURE_TEMPLATES_DS,
        id,
        validated_ids,
    )?))
}

/// Original seven signed words; no item-ID aliases or equipment dereferencing.
pub fn weapon(
    executable: &[u8],
    id: usize,
    validated_ids: RangeInclusive<usize>,
) -> Result<WeaponRecord<'_>, Error> {
    Ok(word_record(record(
        executable,
        WEAPONS_DS,
        id,
        validated_ids,
    )?))
}
