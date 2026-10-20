//! Original1689:23c0/296a/2d6f/51c7 acquisition panel composition.
//! Mode0, living party, original320x62 panel. Transfer and outer input are separate.
use crate::{
    indexed_blit::rectangle,
    world_ui::{normalize, Font, TextRun},
    Error, IndexedImage,
};
use std::collections::BTreeMap;
pub struct PanelImages<'a> {
    pub background: &'a IndexedImage,
    pub icons: &'a IndexedImage,
    pub font: Font<'a>,
    pub portraits: &'a BTreeMap<u16, IndexedImage>,
}
pub struct PanelState<'a> {
    pub pending_items: &'a [u16; 10],
    pub pending_resources: [u16; 3],
    pub party: &'a [[u8; 92]; 4],
    pub selected_party: u8,
    pub origin: [i16; 2],
}
pub struct Panel {
    pub pixels: Vec<u8>,
    pub pending_boxes: [[i16; 4]; 10],
    pub inventory_boxes: [[i16; 4]; 10],
    pub party_boxes: [[i16; 4]; 4],
}
fn word(record: &[u8; 92], at: usize) -> u16 {
    u16::from_le_bytes([record[at], record[at + 1]])
}
fn literal(exe: &[u8], offset: usize, limit: usize) -> Result<&[u8], Error> {
    let data = exe
        .get(0x19200 + offset..0x19200 + offset + limit)
        .ok_or_else(|| Error("truncated original panel literal".into()))?;
    let end = data
        .iter()
        .position(|&b| b == 0)
        .ok_or_else(|| Error("unterminated panel literal".into()))?;
    Ok(&data[..end])
}
fn fill(pixels: &mut [u8], x: usize, y: usize, w: usize, h: usize, color: u8) {
    for row in y..y + h {
        pixels[row * 320 + x..row * 320 + x + w].fill(color);
    }
}
fn outline(pixels: &mut [u8], x: usize, y: usize, color: u8) {
    for col in x..=x + 31 {
        pixels[y * 320 + col] = color;
        pixels[(y + 31) * 320 + col] = color;
    }
    for row in y..=y + 31 {
        pixels[row * 320 + x] = color;
        pixels[row * 320 + x + 31] = color;
    }
}
fn blit(image: &IndexedImage, pixels: &mut [u8], args: [u16; 6]) -> Result<(), Error> {
    let [sx, sy, w, h, x, y] = args;
    rectangle(
        image,
        &[sx, sy, w, h, x, y, 0, 0, 0x341],
        [320, 62],
        pixels,
        &mut vec![false; 19840],
    )
}
fn text(
    font: &Font<'_>,
    pixels: &mut [u8],
    s: &[u8],
    x: i16,
    y: i16,
    color: u8,
) -> Result<(), Error> {
    font.draw_on(
        pixels,
        [320, 62],
        &TextRun {
            text: s.to_vec(),
            x,
            y,
            color,
        },
    )
}
///Original signedIDIV100 and icon remap, including empty slot sourceX480.
pub fn icon_source_x(item: u16) -> Result<u16, Error> {
    let mut icon = (item as i16) % 100;
    if icon == 43 {
        icon = 34;
    } else if icon > 32 {
        icon += 2;
    }
    if icon == 0 {
        return Ok(480);
    }
    if icon < 0 {
        return Err(Error("unverified signed-negative item icon".into()));
    }
    Ok((icon as u16 - 1) * 15)
}
pub fn render(
    images: &PanelImages<'_>,
    exe: &[u8],
    state: &PanelState<'_>,
) -> Result<Panel, Error> {
    if images.background.dimensions
        != (lale_core::Dimensions {
            width: 320,
            height: 62,
        })
        || images.background.indices.len() != 19840
        || images.icons.dimensions
            != (lale_core::Dimensions {
                width: 780,
                height: 15,
            })
        || !(1..=4).contains(&state.selected_party)
    {
        return Err(Error(
            "unsupported original acquisition panel geometry".into(),
        ));
    }
    if state.party.iter().any(|r| word(r, 0x3a) as i16 <= 0) {
        return Err(Error(
            "original dead-party panel overlay is not yet implemented".into(),
        ));
    }
    let mut pixels = images.background.indices.clone();
    let boxes = |y: i16| {
        std::array::from_fn(|i| {
            let x = 7 + i as i16 * 17;
            let px = x.wrapping_add(state.origin[0]);
            let py = y.wrapping_add(state.origin[1]) % 200;
            [px, py, px.wrapping_add(15), py.wrapping_add(15)]
        })
    };
    for (items, y) in [
        (state.pending_items.to_vec(), 27u16),
        (
            (1..=10)
                .map(|i| {
                    word(
                        &state.party[usize::from(state.selected_party - 1)],
                        0x44 + i * 2,
                    )
                })
                .collect(),
            44u16,
        ),
    ] {
        for (i, item) in items.into_iter().enumerate() {
            let x = 7 + i * 17;
            if (item as i16) % 100 != 0 {
                fill(&mut pixels, x, usize::from(y), 15, 15, 0);
            }
            blit(
                images.icons,
                &mut pixels,
                [icon_source_x(item)?, 0, 15, 15, x as u16, y],
            )?;
        }
    }
    let party_boxes = std::array::from_fn(|i| {
        let px = (177 + i as i16 * 34).wrapping_add(state.origin[0]);
        let py = 27i16.wrapping_add(state.origin[1]) % 200;
        [px, py, px.wrapping_add(32), py.wrapping_add(32)]
    });
    for (i, record) in state.party.iter().enumerate() {
        let portrait = images
            .portraits
            .get(&word(record, 0x42))
            .ok_or_else(|| Error("missing original party portrait".into()))?;
        blit(
            portrait,
            &mut pixels,
            [0, 0, 32, 32, (177 + i * 34) as u16, 27],
        )?;
    }
    outline(
        &mut pixels,
        177 + usize::from(state.selected_party - 1) * 34,
        27,
        220,
    );
    //Original mode0 resources: reverse display order, signed%d + seven-byte label.
    if literal(exe, 0x6203, 16)? != b"%d %s" {
        return Err(Error("unsupported original resource format".into()));
    }
    for col in 0..3 {
        let value = state.pending_resources[2 - col];
        let mut label = Vec::new();
        if value != 0 {
            label.extend_from_slice(format!("{} ", value as i16).as_bytes());
            label.extend_from_slice(literal(exe, 0x5bc3 + (2 - col) * 7, 7)?);
        }
        if label.len() > 14 {
            return Err(Error(
                "original resource panel text exceeds14-byte limit".into(),
            ));
        }
        let label = normalize(&label);
        fill(&mut pixels, 42 + col * 90, 16, 87, 9, 0);
        text(
            &images.font,
            &mut pixels,
            &label,
            (44 + col * 90) as i16,
            15,
            245,
        )?;
        text(
            &images.font,
            &mut pixels,
            &label,
            (43 + col * 90) as i16,
            14,
            255,
        )?;
    }
    let caption = normalize(literal(exe, 0x6218, 50)?);
    fill(&mut pixels, 41, 3, 223, 11, 0);
    text(&images.font, &mut pixels, &caption, 42, 3, 245)?;
    text(&images.font, &mut pixels, &caption, 41, 2, 255)?;
    Ok(Panel {
        pixels,
        pending_boxes: boxes(27),
        inventory_boxes: boxes(44),
        party_boxes,
    })
}
