//! Original1689 cell-key routing into resumable PCS execution.
//! Dedicated service handlers stay explicit; they are never a generic allow.
use crate::{
    pc_map::{special_event_key, PcMap, CELL_BYTES},
    pcs::PcsBank,
};
use lale_core::{
    events::{EventError, EventMachine},
    movement::CellEvent,
};

#[derive(Debug)]
pub enum CellDispatch<'a> {
    NoEvent,
    Script {
        group_index: u8,
        machine: EventMachine<'a>,
    },
    Dedicated {
        key: [u8; 4],
        handler: &'static str,
        mode: u16,
    },
}

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum DispatchError {
    InvalidMode,
    InvalidCellOffset,
    MissingGroup(u8),
    Script(EventError),
}

/// `event.cell_offset` is relative to the PC grid, as passed by1670. The host
/// calls this AGAIN for each event, using the currently loaded map/PCS bank.
/// It must finish a yielded effect before acknowledging the movement event.
pub fn dispatch<'a>(
    map: &PcMap<'_>,
    scripts: &PcsBank<'a>,
    event: CellEvent,
) -> Result<CellDispatch<'a>, DispatchError> {
    if !(1..=4).contains(&event.mode) {
        return Err(DispatchError::InvalidMode);
    }
    let offset = usize::from(event.cell_offset);
    if offset % CELL_BYTES != 0 {
        return Err(DispatchError::InvalidCellOffset);
    }
    let index = offset / CELL_BYTES;
    let cell = map
        .cell(
            index % usize::from(map.width()),
            index / usize::from(map.width()),
        )
        .ok_or(DispatchError::InvalidCellOffset)?;
    let key: [u8; 4] = cell[11..15].try_into().unwrap();
    if let Some(handler) = special_event_key(&key) {
        return Ok(if handler == "NO_EVENT" {
            CellDispatch::NoEvent
        } else {
            CellDispatch::Dedicated {
                key,
                handler,
                mode: event.mode,
            }
        });
    }
    let group_index = map.event_group_candidate(cell);
    let group = scripts
        .groups
        .get(usize::from(group_index))
        .ok_or(DispatchError::MissingGroup(group_index))?;
    let machine =
        EventMachine::new(group.bytes, event.mode as u8).map_err(DispatchError::Script)?;
    Ok(CellDispatch::Script {
        group_index,
        machine,
    })
}
