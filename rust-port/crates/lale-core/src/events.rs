//! Bounded original PCS control flow (1689, IST physical43d61..456fb).
//! UI, item, battle and transition operations must be fulfilled externally.
//! An unsupported operation never implicitly allows movement.

#[derive(Debug, Clone, Default, PartialEq, Eq)]
pub struct EventState {
    /// DS:b9ca..b9e9. Initialization/save lifetime is owned by the caller.
    pub flags: [u8; 32],
    /// DS:bb9e, set by the original choice UI; retained across invocations.
    pub choice: u16,
    /// DS:bba8. The movement caller clears this before event dispatch.
    pub movement_veto: u16,
}
impl EventState {
    pub fn flag(&self, id: u8) -> bool {
        self.flags[usize::from(id / 8)] & (1 << (id % 8)) != 0
    }
    pub fn set_flag(&mut self, id: u8) {
        self.flags[usize::from(id / 8)] |= 1 << (id % 8);
    }
}

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum EventError {
    InvalidMode,
    Truncated,
    InvalidOpcode(u8),
    UnsupportedCondition(u8),
    ExternalPending,
    NoExternalPending,
}
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum EventYield<'a> {
    Finished,
    /// Offsets are relative to the supplied group payload, not the PCS member.
    External {
        offset: usize,
        opcode: u8,
        arguments: &'a [u8],
    },
}

#[derive(Debug)]
pub struct EventMachine<'a> {
    group: &'a [u8],
    cursor: usize,
    remaining: u8,
    finished: bool,
    pending: Option<u8>,
    pending_arguments: Option<&'a [u8]>,
    pending_offset: Option<usize>,
}
impl<'a> EventMachine<'a> {
    /// Takes a PCS group payload including its eight-byte header.
    /// The original uses only the low byte of the command count (43e1e..43e2f).
    pub fn new(group: &'a [u8], mode: u8) -> Result<Self, EventError> {
        if !(1..=4).contains(&mode) {
            return Err(EventError::InvalidMode);
        }
        if group.len() < 8 {
            return Err(EventError::Truncated);
        }
        let target = if mode == 1 {
            8
        } else {
            let at = usize::from(mode - 1) * 2;
            usize::from(u16::from_be_bytes([group[at], group[at + 1]]))
        };
        let marker = *group.get(target).ok_or(EventError::Truncated)?;
        group.get(target + 1).ok_or(EventError::Truncated)?;
        // Mismatched markers enter an original diagnostic/error path, not a no-op.
        if marker != mode + 12 {
            return Err(EventError::InvalidOpcode(marker));
        }
        Ok(Self {
            group,
            cursor: target + 2,
            remaining: group[1].wrapping_sub(1),
            finished: group[1] == 0,
            pending: None,
            pending_arguments: None,
            pending_offset: None,
        })
    }
    /// Explicit acknowledgement means the host completed the yielded operation.
    /// Leave pending when acquisition, combat or another effect is unsupported.
    pub fn acknowledge_external(&mut self, state: &mut EventState) -> Result<(), EventError> {
        let opcode = self.pending.take().ok_or(EventError::NoExternalPending)?;
        self.pending_arguments = None;
        self.pending_offset = None;
        // The transition handler always vetoes the old move and terminates this
        // invocation after loading/presenting its destination (44914..44923).
        if opcode == 11 {
            state.movement_veto = 1;
            self.finished = true;
        }
        Ok(())
    }
    /// Read-only native diagnostics; does not complete the external operation.
    pub fn pending_opcode(&self) -> Option<u8> {
        self.pending
    }
    /// Diagnostic view of the suspended original command. Reading it never
    /// acknowledges an effect or consumes another byte from the script.
    pub fn pending_external(&self) -> Option<(usize, u8, &'a [u8])> {
        Some((self.pending_offset?, self.pending?, self.pending_arguments?))
    }
    pub fn cursor(&self) -> usize {
        self.cursor
    }
    fn read_command(&mut self) -> Result<(usize, u8, &'a [u8]), EventError> {
        let at = self.cursor;
        let opcode = *self.group.get(at).ok_or(EventError::Truncated)?;
        let tail = self.group.get(at + 1..).ok_or(EventError::Truncated)?;
        let length = argument_length(opcode, tail).ok_or(EventError::InvalidOpcode(opcode))?;
        let arguments = tail.get(..length).ok_or(EventError::Truncated)?;
        self.cursor = at + 1 + length;
        Ok((at, opcode, arguments))
    }
    fn skip(&mut self, count: u8) -> Result<(), EventError> {
        self.remaining = self.remaining.wrapping_sub(count);
        for _ in 0..count {
            self.read_command()?;
        }
        Ok(())
    }
    pub fn advance(&mut self, state: &mut EventState) -> Result<EventYield<'a>, EventError> {
        if self.pending.is_some() {
            return Err(EventError::ExternalPending);
        }
        loop {
            if self.finished || self.remaining == 0 {
                return Ok(EventYield::Finished);
            }
            self.remaining = self.remaining.wrapping_sub(1);
            let (offset, opcode, args) = self.read_command()?;
            match opcode {
                1 => {
                    let condition = match args[0] {
                        1 => state.flag(args[1]),
                        2 => state.choice == u16::from(args[1]),
                        kind => return Err(EventError::UnsupportedCondition(kind)),
                    };
                    if !condition {
                        self.skip(args[2])?;
                    }
                }
                4 => {
                    self.finished = true;
                }
                6 => {
                    self.skip(args[0])?;
                }
                7 => state.set_flag(args[0]),
                13..=15 => {} // The executed marker handlers only consume one byte.
                16 => {
                    state.movement_veto = 1;
                    self.finished = true;
                }
                _ => {
                    self.pending = Some(opcode);
                    self.pending_arguments = Some(args);
                    self.pending_offset = Some(offset);
                    return Ok(EventYield::External {
                        offset,
                        opcode,
                        arguments: args,
                    });
                }
            }
        }
    }
}

/// Opcode11's destination calculation uses the destination area's live width.
/// The host must first resolve/load area(A-1); A0 is deliberately retained as -1.
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum TransitionTarget {
    Area {
        area_index: i16,
        x: u16,
        y: u16,
        facing: u8,
    },
    ExitHandler,
    NoAreaChange,
}
pub fn transition_target(
    arguments: &[u8],
    destination_width: u8,
) -> Result<TransitionTarget, EventError> {
    let [area, high, low, facing] = *arguments else {
        return Err(EventError::Truncated);
    };
    if area == 100 {
        return Ok(TransitionTarget::ExitHandler);
    }
    if area > 100 {
        return Ok(TransitionTarget::NoAreaChange);
    }
    if destination_width == 0 {
        return Err(EventError::Truncated);
    }
    let position = u16::from_be_bytes([high, low]);
    let width = u16::from(destination_width);
    Ok(TransitionTarget::Area {
        area_index: i16::from(area) - 1,
        x: (position % width).wrapping_sub(1),
        y: position / width,
        facing: facing % 4,
    })
}

/// Original skip helper4853b..486ca. This describes framing, not side effects.
pub fn argument_length(opcode: u8, bytes: &[u8]) -> Option<usize> {
    let fixed = match opcode {
        1 | 12 | 22 | 29 => Some(3),
        3 | 6 | 7 | 13 | 14 | 15 | 19 | 20 | 25 | 26 | 31 => Some(1),
        4 | 16 | 18 | 24 | 28 | 32 | 33 => Some(0),
        8 => Some(7),
        9 => Some(9),
        11 => Some(4),
        23 => Some(2),
        _ => None,
    };
    if let Some(n) = fixed {
        return Some(n);
    }
    let mut cursor = 0;
    let take_string = |cursor: &mut usize| -> Option<()> {
        let len = usize::from(*bytes.get(*cursor)?);
        *cursor += 1;
        bytes.get(*cursor..*cursor + len)?;
        *cursor += len;
        Some(())
    };
    match opcode {
        2 => take_string(&mut cursor)?,
        5 => {
            cursor = 2 + usize::from(*bytes.first()?) + usize::from(*bytes.get(1)?);
        }
        10 => {
            take_string(&mut cursor)?;
            take_string(&mut cursor)?;
        }
        17 => {
            bytes.first()?;
            cursor = 1;
            take_string(&mut cursor)?;
        }
        21 | 27 => {
            for _ in 0..if opcode == 21 { 6 } else { 40 } {
                take_string(&mut cursor)?;
            }
        }
        30 => {
            cursor = 2 + usize::from(*bytes.first()?);
        }
        _ => return None,
    }
    Some(cursor)
}
