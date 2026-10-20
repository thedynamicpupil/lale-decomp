//! Original1670 area-loader resource tables, IST file33bcd..3412e.
//! Names are read from the original executable, never derived from cell names.
use crate::{pc_map::PcMap, Error};
use std::collections::BTreeMap;

fn literal(exe: &[u8], at: usize) -> Result<String, Error> {
    let row = exe
        .get(at..at + 13)
        .ok_or_else(|| Error("truncated original graphics literal".into()))?;
    let end = row
        .iter()
        .position(|&b| b == 0)
        .ok_or_else(|| Error("unterminated graphics literal".into()))?;
    let s =
        std::str::from_utf8(&row[..end]).map_err(|_| Error("non-ASCII graphics literal".into()))?;
    if !s.is_ascii() {
        return Err(Error("non-ASCII graphics literal".into()));
    }
    Ok(s.to_ascii_uppercase())
}

/// Original image-slot bindings excluding transient sky64 and framebuffer65/66.
/// `horizon` is separately resolved from the active area's table record+24.
pub fn image_bindings(
    exe: &[u8],
    map: &PcMap<'_>,
    horizon: &str,
) -> Result<BTreeMap<u8, String>, Error> {
    let mut slots = BTreeMap::new();
    for (i, selector) in map.graphic_selectors().into_iter().enumerate() {
        if selector == 0 {
            continue;
        }
        if selector > 9 {
            return Err(Error(
                "graphics selector outside original literal tables".into(),
            ));
        }
        for (base, slot) in [(0x1bb78, 24), (0x1bbfa, 28), (0x1bc7c, 32)] {
            let name = literal(exe, base + usize::from(selector) * 13)?;
            if !name.is_empty() {
                slots.insert(slot + i as u8, name);
            }
        }
    }
    for (count, base, slot, group) in [(20, 0x1bd18, 36, 5), (8, 0x1be1c, 56, 2)] {
        for i in 0..count {
            let name = literal(exe, base + i * 13)?;
            let slot = (slot + i) as u8;
            if !name.is_empty() {
                slots.insert(slot, name);
            } else {
                // Original signed integer quotient, clamped to1..2 groups.
                let source = slot - (i / group).clamp(1, 2) as u8 * group as u8;
                let alias = slots
                    .get(&source)
                    .ok_or_else(|| Error("unresolved original surface alias".into()))?
                    .clone();
                slots.insert(slot, alias);
            }
        }
    }
    if !horizon.is_empty() {
        slots.insert(79, horizon.to_ascii_uppercase());
    }
    Ok(slots)
}
