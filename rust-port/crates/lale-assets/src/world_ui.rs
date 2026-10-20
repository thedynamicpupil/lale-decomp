//! Original world warning/choice layout,05dc:2948/2198 and16da text helpers.
//! Inputs and output retain original encoded bytes and palette indices.
use crate::{Error, IndexedImage};

///Original1689:509d reader appends NUL then calls47d1a: add10 to each byte,
///rechecking C-string length after every write. Return the visible prefix;
///normalization and glyph selection happen only AFTER this decoding step.
pub fn decode_event_text(bytes: &[u8]) -> Vec<u8> {
    let mut result = bytes.to_vec();
    result.push(0);
    let mut at = 0;
    while result.iter().position(|&b| b == 0).unwrap() > at {
        result[at] = result[at].wrapping_add(10);
        at += 1;
    }
    result.truncate(result.iter().position(|&b| b == 0).unwrap());
    result
}

pub fn lowercase(b: u8) -> u8 {
    match b {
        b'A'..=b'[' if b != b'I' => b.wrapping_add(32),
        b'I' => 0x8d,
        0x80 => 0x87,
        0x98 => b'i',
        0x99 => 0x94,
        0x9a => 0x81,
        0x9e => 0x9f,
        0xa6 => 0xa7,
        _ => b,
    }
}
pub fn uppercase(b: u8) -> u8 {
    match b {
        b'a'..=b'z' if b != b'i' => b - 32,
        b'i' => 0x98,
        0x81 => 0x9a,
        0x87 => 0x80,
        0x8d => b'I',
        0x94 => 0x99,
        0x9f => 0x9e,
        0xa7 => 0xa6,
        _ => b,
    }
}
///16da:003e: uppercase ASCII placeholders encode Turkish letters, then lowercase.
pub fn normalize(text: &[u8]) -> Vec<u8> {
    text.iter()
        .take_while(|&&b| b != 0)
        .map(|&b| {
            lowercase(match b {
                b'C' => 0x87,
                b'G' => 0xa7,
                b'I' => 0x8d,
                b'O' => 0x94,
                b'S' => 0x9f,
                b'U' => 0x81,
                _ => b,
            })
        })
        .collect()
}
fn hotkey(b: u8) -> u8 {
    match b {
        0x9f => b's',
        0xa7 => b'g',
        0x94 => b'o',
        0x81 => b'u',
        0x87 => b'c',
        0x8d => b'i',
        _ => b,
    }
}
fn proportional(b: u8) -> Option<usize> {
    Some(match b {
        0x21..=0x40 if b != 0x2a => usize::from(b - 0x21),
        b'a'..=b'z' => usize::from(b - 0x41),
        0x5b..=0x60 => usize::from(b - 0x21),
        0x7b..=0x7f => usize::from(b - 0x3b),
        0x81 => 75,
        0x87 => 70,
        0x8d => 72,
        0x94 => 73,
        0x9f => 74,
        0xa6 => 69,
        0xa7 => 71,
        _ => return None,
    })
}
fn atlas(b: u8) -> Option<usize> {
    Some(match b {
        b'A'..=b'Z' => usize::from(b - b'A'),
        0x80 => 26,
        0x98 => 27,
        0x99 => 28,
        0x9e => 29,
        0x9a => 30,
        _ => return None,
    })
}
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct TextRun {
    pub text: Vec<u8>,
    pub x: i16,
    pub y: i16,
    pub color: u8,
}
///Original proportional atlas DENEYX.CMP plus caller-selected uppercase atlas.
pub struct Font<'a> {
    pub proportional: &'a IndexedImage,
    pub uppercase: &'a IndexedImage,
}
impl Font<'_> {
    pub fn width(&self, text: &[u8]) -> Result<u16, Error> {
        let mut w = 0u16;
        for &b in text.iter().take_while(|&&b| b != 0) {
            let advance = if let Some(g) = proportional(b) {
                u16::from(
                    *self
                        .proportional
                        .indices
                        .get(g * 143)
                        .ok_or_else(|| Error("truncated original font".into()))?,
                ) + 2
            } else if atlas(b).is_some() {
                20
            } else {
                3
            };
            w = w.wrapping_add(advance);
        }
        Ok(w.wrapping_sub(1))
    }
    pub fn draw(&self, pixels: &mut [u8], run: &TextRun) -> Result<(), Error> {
        self.draw_on(pixels, [320, 200], run)
    }
    pub fn draw_on(
        &self,
        pixels: &mut [u8],
        dimensions: [usize; 2],
        run: &TextRun,
    ) -> Result<(), Error> {
        let [width, height] = dimensions;
        if width.checked_mul(height) != Some(pixels.len()) || width == 0 || height == 0 {
            return Err(Error("invalid original text destination".into()));
        }
        let (mut x, mut y) = (run.x, run.y);
        for &b in run.text.iter().take_while(|&&b| b != 0) {
            let (image, sx, sy, w, h, recolor) = if let Some(g) = proportional(b) {
                let w = usize::from(
                    *self
                        .proportional
                        .indices
                        .get(g * 143)
                        .ok_or_else(|| Error("truncated original font".into()))?,
                ) + 1;
                (self.proportional, 0, g * 11, w, 11, true)
            } else if let Some(g) = atlas(b) {
                (self.uppercase, 1, g * 20 + 1, 19, 19, false)
            } else {
                if b == 0x0a || b == 0xb6 {
                    x = run.x;
                    y = y.wrapping_add(10);
                } else {
                    x = x.wrapping_add(3);
                }
                continue;
            };
            let stride = usize::from(image.dimensions.width);
            if sx + w > stride || sy + h > usize::from(image.dimensions.height) {
                return Err(Error("original font glyph outside image".into()));
            }
            for row in 0..h {
                for col in 0..w {
                    let v = image.indices[(sy + row) * stride + sx + col];
                    let (dx, dy) = (
                        i32::from(x) + col as i32,
                        i32::from(y) + row as i32 - if recolor { 0 } else { 5 },
                    );
                    if dx >= 0
                        && (dx as usize) < width
                        && dy >= 0
                        && (dy as usize) < height
                        && if recolor { v == 255 } else { v != 254 }
                    {
                        pixels[dy as usize * width + dx as usize] =
                            if recolor { run.color } else { v };
                    }
                }
            }
            x = x.wrapping_add(w as i16 + 1);
        }
        Ok(())
    }
}
#[derive(Debug, PartialEq, Eq)]
pub struct Warning {
    pub runs: Vec<TextRun>,
    pub line_counter: u8,
}
///Info mode only: no dialogue portrait, RNG, timing, or inventory effects.
pub fn warning(text: &[u8], base_y: i16, old_lines: u8, color: u8, outline: Option<u8>) -> Warning {
    let text = normalize(text);
    let mut runs = Vec::new();
    let mut counter = old_lines;
    if let Some(&b) = text.first() {
        runs.push(TextRun {
            text: vec![uppercase(b)],
            x: 4,
            y: base_y + 5,
            color,
        });
    }
    for (i, line) in text
        .get(1..)
        .unwrap_or_default()
        .split(|&b| b == 0xb6 || b == 0x0a)
        .enumerate()
    {
        if i >= 6 || counter >= 6 {
            break;
        }
        let x = if i < 2 { 23 } else { 4 };
        let y = base_y + i as i16 * 8;
        if let Some(edge) = outline {
            for (dx, dy, c) in [
                (-1, 0, edge),
                (0, -1, edge),
                (1, 1, 0),
                (0, 1, 0),
                (1, 0, 0),
            ] {
                runs.push(TextRun {
                    text: line.to_vec(),
                    x: x + dx,
                    y: y + dy,
                    color: c,
                });
            }
        } else {
            runs.push(TextRun {
                text: line.to_vec(),
                x: x + 1,
                y: y + 1,
                color: 0,
            });
        }
        runs.push(TextRun {
            text: line.to_vec(),
            x,
            y,
            color,
        });
        //2948 increments bbaa only after a consumed explicit separator.
        if i + 1
            < text
                .get(1..)
                .unwrap_or_default()
                .split(|&b| b == 0xb6 || b == 0x0a)
                .count()
        {
            counter = counter.wrapping_add(1);
        }
    }
    Warning {
        runs,
        line_counter: counter,
    }
}
#[derive(Debug, PartialEq, Eq)]
pub struct Choice {
    pub runs: Vec<TextRun>,
    pub hitboxes: [[i16; 4]; 2],
    pub line_counter: u8,
    hotkeys: [u8; 2],
}
impl Choice {
    pub fn new(
        options: [&[u8]; 2],
        old_lines: u8,
        font: &Font<'_>,
        color: u8,
        hot_color: u8,
    ) -> Result<Self, Error> {
        let lines = old_lines.saturating_add(2).min(6);
        let y = 148 + (i16::from(lines) - 1) * 8;
        let mut runs = Vec::new();
        let mut hitboxes = [[0; 4]; 2];
        let mut keys = [0; 2];
        for i in 0..2 {
            let text = normalize(options[i]);
            let first = *text
                .first()
                .ok_or_else(|| Error("empty original choice".into()))?;
            let x = (if i == 0 { 80u16 } else { 240 })
                .wrapping_sub((text.len() as u16).wrapping_mul(10) >> 1) as i16;
            let width = font.width(&text)? as i16;
            hitboxes[i] = [x - 3, y - 3, x + width + 3, y + 13];
            keys[i] = hotkey(first);
            runs.push(TextRun {
                text: text.clone(),
                x: x + 1,
                y: y + 1,
                color: 0,
            });
            runs.push(TextRun { text, x, y, color });
            runs.push(TextRun {
                text: vec![first],
                x,
                y,
                color: hot_color,
            });
        }
        Ok(Self {
            runs,
            hitboxes,
            line_counter: lines,
            hotkeys: keys,
        })
    }
    ///BIOS ASCII low byte. Enter, arrows and Escape have no special choice action.
    pub fn key(&self, ascii: u8) -> Option<u8> {
        self.hotkeys
            .iter()
            .position(|&b| b == lowercase(ascii))
            .map(|i| i as u8)
    }
    pub fn click(&self, x: i16, y: i16) -> Option<u8> {
        self.hitboxes
            .iter()
            .position(|b| x >= b[0] && y >= b[1] && x <= b[2] && y <= b[3])
            .map(|i| i as u8)
    }
}
///1689:2f21 mode0 entry runs before the first acquisition input; Esc does not undo it.
pub fn acquisition_entry_resources(current: [u16; 3], pending: [u16; 3]) -> [u16; 3] {
    std::array::from_fn(|i| current[i].wrapping_add(pending[i]))
}
///Low byte0x1b jumps to4718e and ends the acquisition loop without a transfer.
pub fn acquisition_escape(ascii: u8) -> bool {
    ascii == 0x1b
}

///1689:46e3(0,1,field): signed maximum; first party index wins ties.
///Inputs are live words99a6 + index*5c + field*2, index1..4.
pub fn maximum_party_field(values: [i16; 4]) -> u8 {
    (values
        .iter()
        .position(|v| *v == *values.iter().max().unwrap())
        .unwrap()
        + 1) as u8
}
///05dc:2948 portrait frame sourceX, live image slot70+speaker (speaker1..4).
///Original RNG range2 is called once or twice in this exact order.
pub fn dialogue_portrait_frame(mut random_range_two: impl FnMut() -> u16) -> u16 {
    if random_range_two() != 0 {
        1
    } else {
        (random_range_two() + 3) * 32 + 1
    }
}
#[derive(Debug)]
pub struct DialogueAnimation {
    pub frames: u16,
    remaining: i16,
}

///Original13-byte appearance literal table, also used by character creation.
pub fn portrait_name(executable: &[u8], appearance: u16) -> Result<String, Error> {
    if !(1..=16).contains(&appearance) {
        return Err(Error("invalid original portrait appearance".into()));
    }
    let at = 0x19200 + 0x269b + usize::from(appearance) * 13;
    let cell = executable
        .get(at..at + 13)
        .ok_or_else(|| Error("truncated appearance table".into()))?;
    let end = cell
        .iter()
        .position(|&b| b == 0)
        .ok_or_else(|| Error("unterminated appearance literal".into()))?;
    let name = std::str::from_utf8(&cell[..end])
        .map_err(|_| Error("invalid appearance literal".into()))?;
    if !name.ends_with(".cmp") || !name.bytes().all(|b| b.is_ascii_alphanumeric() || b == b'.') {
        return Err(Error("unsupported appearance literal".into()));
    }
    Ok(format!("s{name}"))
}

///Original2948 mode0: IREM62 prefix, proportional body color966c.
pub fn dialogue_text(text: &[u8]) -> Warning {
    let mut plan = warning(text, 148, 0, 170, None);
    if let Some(prefix) = plan.runs.first_mut() {
        prefix.color = 255;
    }
    plan
}

///Original0b99 outline spans endpoints8..39/110..141, followed by the
///30x30 keyed portrait rectangle. Transparent pixels retain the prior frame.
pub fn draw_dialogue_portrait(
    image: &IndexedImage,
    source_x: u16,
    pixels: &mut [u8],
) -> Result<(), Error> {
    if pixels.len() != 64000
        || image.indices.len() != 5120
        || image.dimensions.width != 160
        || image.dimensions.height != 32
        || !matches!(source_x, 1 | 97 | 129)
    {
        return Err(Error(
            "unsupported original dialogue portrait extent".into(),
        ));
    }
    for x in 8..=39 {
        pixels[110 * 320 + x] = 255;
        pixels[141 * 320 + x] = 255;
    }
    for y in 110..=141 {
        pixels[y * 320 + 8] = 255;
        pixels[y * 320 + 39] = 255;
    }
    crate::indexed_blit::rectangle(
        image,
        &[source_x, 1, 30, 30, 9, 111, 0, 0, 0x341],
        [320, 200],
        pixels,
        &mut vec![false; 64000],
    )
}

///Original waits150 units BEFORE each draw, then starts the next wait AFTER
///draw/presentation/input processing. The host must call `presented` once.
pub struct DialoguePlayback {
    pub animation: DialogueAnimation,
    stamp: Option<u16>,
    drawing: bool,
    finished: bool,
}
impl DialoguePlayback {
    pub fn new(lines: u16) -> Self {
        Self {
            animation: DialogueAnimation::new(lines),
            stamp: None,
            drawing: false,
            finished: false,
        }
    }
    pub fn poll(&mut self, now: u16) -> bool {
        if self.finished {
            return false;
        }
        let Some(stamp) = self.stamp else {
            self.stamp = Some(now);
            return false;
        };
        if self.drawing || now.wrapping_sub(stamp) < 150 {
            return false;
        }
        self.drawing = true;
        true
    }
    pub fn presented(&mut self, now: u16, key: Option<u8>, mouse: bool) -> Option<bool> {
        if !self.drawing {
            return None;
        }
        self.drawing = false;
        let finished = self.animation.frame_drawn()
            || key.is_some_and(|b| self.animation.key_finishes(b))
            || (mouse && self.animation.mouse_finishes());
        self.stamp = Some(now);
        self.finished = finished;
        Some(finished)
    }
}
impl DialogueAnimation {
    ///The original checks this before touching the keyboard on the next draw.
    pub fn times_out_next_draw(&self) -> bool {
        self.remaining < 0
    }
    ///Line count starts1 and increments for each consumed explicit separator.
    pub fn new(lines: u16) -> Self {
        Self {
            frames: 0,
            remaining: lines.wrapping_mul(6).wrapping_add(20) as i16,
        }
    }
    ///Call after each150-unit timer step and portrait draw. True means timed completion.
    pub fn frame_drawn(&mut self) -> bool {
        let old = self.remaining;
        self.remaining = self.remaining.wrapping_sub(1);
        self.frames = self.frames.wrapping_add(1);
        old < 0
    }
    pub fn key_finishes(&self, ascii: u8) -> bool {
        self.frames >= 4 && matches!(ascii, 27 | 32 | 13)
    }
    pub fn mouse_finishes(&self) -> bool {
        self.frames >= 3
    }
}
