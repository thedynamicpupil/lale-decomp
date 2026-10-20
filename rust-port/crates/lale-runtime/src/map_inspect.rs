//! Read-only original area atlas. No navigation or event execution is implied.
use lale_assets::{
    pc_map::{special_event_key, PcMap},
    pcs::PcsBank,
    Flib,
};
use std::{
    error::Error,
    fmt::Write as _,
    fs::OpenOptions,
    io::Write,
    path::{Path, PathBuf},
};
fn write_new(path: &Path, body: &str) -> Result<(), Box<dyn Error>> {
    OpenOptions::new()
        .write(true)
        .create_new(true)
        .open(path)?
        .write_all(body.as_bytes())?;
    Ok(())
}
fn hex(bytes: &[u8]) -> String {
    bytes.iter().map(|b| format!("{b:02x}")).collect()
}
fn xml(s: &str) -> String {
    s.replace('&', "&amp;")
        .replace('<', "&lt;")
        .replace('>', "&gt;")
        .replace('"', "&quot;")
}
fn literal(exe: &[u8], at: usize) -> Result<String, Box<dyn Error>> {
    let pointer = exe.get(at..at + 4).ok_or("truncated area pointer")?;
    let offset = u16::from_le_bytes([pointer[0], pointer[1]]) as usize;
    let segment = u16::from_le_bytes([pointer[2], pointer[3]]) as usize;
    if offset == 0 && segment == 0 {
        return Ok(String::new());
    }
    let start = 0x2400 + segment * 16 + offset;
    let bytes = exe.get(start..).ok_or("area literal outside executable")?;
    let end = bytes
        .iter()
        .position(|&b| b == 0)
        .ok_or("unterminated area literal")?;
    Ok(bytes[..end]
        .iter()
        .map(|&b| {
            if (32..127).contains(&b) {
                char::from(b).to_string()
            } else {
                format!("<{b:02x}>")
            }
        })
        .collect())
}
fn main() -> Result<(), Box<dyn Error>> {
    let mut root = PathBuf::from(".");
    let mut output = None;
    let mut args = std::env::args_os().skip(1);
    while let Some(arg) = args.next() {
        match arg.to_str().ok_or("invalid argument")? {
            "--root" => root = args.next().ok_or("missing root")?.into(),
            "--output" => {
                output = Some(PathBuf::from(
                    args.next().ok_or("missing new output directory")?,
                ))
            }
            "--help" => {
                println!("lale-map-inspect --root PROJECT --output NEW_DIRECTORY\nRead-only original PC/PCS atlas: coordinates, raw fields, source offsets, graphics bindings and structural event groups. SVG is a data grid, not collision/navigation or a room render. Refuses existing output directories.");
                return Ok(());
            }
            _ => return Err("unknown argument".into()),
        }
    }
    let output = output.ok_or("--output NEW_DIRECTORY required")?;
    let root = root.canonicalize()?;
    // A new owned output directory prevents replacing any old artifact.
    let parent = output
        .parent()
        .filter(|p| !p.as_os_str().is_empty())
        .unwrap_or(Path::new("."));
    let parent = parent.canonicalize()?;
    for protected in ["lale", "DOSBox", "reference media"] {
        if parent.starts_with(root.join(protected)) {
            return Err("output is inside protected source directory".into());
        }
    }
    let source = std::fs::read(root.join("lale/FRPOS.CKD"))?;
    let exe = std::fs::read(root.join("lale/IST.EXE"))?;
    let bank = Flib::parse(&source)?;
    // Parse every input before creating output, so malformed originals leave no partial atlas.
    let mut maps = Vec::new();
    for area in 0..20 {
        let table = 0x1c031 + area * 29;
        let name = literal(&exe, table)?;
        let label = literal(&exe, table + 4)?;
        let pc = bank.member(&name);
        let pcs = bank.member(&format!("PCS{}", area + 1));
        let map = pc.map(|m| PcMap::parse(m.payload)).transpose()?;
        let scripts = pcs.map(|m| PcsBank::parse(m.payload)).transpose()?;
        maps.push((area, table, name, label, pc, pcs, map, scripts));
    }
    std::fs::create_dir(&output)?;
    let mut areas=String::from("area_index\tarea_table_exe_offset\tpc\tarea_literal\tpc_archive_offset\twidth\theight\tentry_x\tentry_y\tpcs\tpcs_archive_offset\tgroups\thorizon_literal\tstatus\n");
    let mut cells=String::from("area_index\tpc\tx\ty\tpc_member_offset\tFRPOS_offset\traw15_hex\tpair0_selector\tpair0_state\tpair1_selector\tpair1_state\tpair2_selector\tpair2_state\tpair3_selector\tpair3_state\tfield8\tfield9\tunknown10\tevent_bytes11_14\tpcs_group\tcollision\tnpc_encounter\ttransition\n");
    let mut groups=String::from("area_index\tpcs\tgroup\tlength_word_member_offset\tgroup_member_offset\tgroup_FRPOS_offset\tlength\theader8_hex\tmode\ttarget_member_offset\ttarget_FRPOS_offset\tmarker_matches\texecution\n");
    let mut commands=String::from("area_index\tpcs\tgroup\topcode\tmember_offset\tFRPOS_offset\targuments_hex\tdecoded_text_byte_display\tstatus\n");
    let mut references=String::from("area_index\tpc\tx\ty\tcell_member_offset\tcell_FRPOS_offset\tpcs\tgroup\topcode\tcommand_member_offset\tcommand_FRPOS_offset\targuments_hex\tassociation\n");
    let mut transitions=String::from("area_index\tpcs\tgroup\tcommand_member_offset\tcommand_FRPOS_offset\tarea_byte\tposition_word\tfacing_mod4\ttarget_area_index\ttarget_pc\ttarget_x\ttarget_y\tclassification\n");
    let mut edges=String::from("area_index\tpc\tx\ty\tdirection\tpair_member_offset\tpair_FRPOS_offset\tselector\tgraphics_value\tmovement_state\ttarget_x\ttarget_y\tstatic_branch\tpermission\n");
    let mut framing = String::from(
        "area_index\tpcs\tgroup\tframed_commands\tstop_member_offset\tremainder_hex\tissue\n",
    );
    let mut graphics=String::from("area_index\tpc\tselector_index\tmetadata_value\toriginal_slot\tliteral_table_exe_offset\tresource_literal\tclassification\n");
    let mut index=String::from("# Original area-data atlas\n\nAll coordinates are zero-based. SVGs show source records, not inferred walkability.\nBlue = entry; purple = structural PCS reference; G:- = no event; G:SP = special-key handler; G:? = unresolved. Unknown collision/NPC/transition semantics remain explicit. Events are structural PCS groups, not executed scripts.\n\n- [Areas](areas.tsv)\n- [All cells and raw fields](cells.tsv)\n- [PCS groups and mode targets](event-groups.tsv)\n- [Graphics bindings](graphics.tsv)\n- [Movement branches](edges.tsv)\n- [Event commands](event-commands.tsv)\n- [Cell/event associations](cell-event-references.tsv)\n- [Transitions](transitions.tsv)\n- [Framing coverage](framing.tsv)\n\n");
    for (area, table, name, label, pc, pcs, map, scripts) in maps {
        let horizon = literal(&exe, table + 24)?;
        let (Some(pc), Some(map)) = (pc, map) else {
            writeln!(areas,"{area}\t0x{table:x}\t{name}\t{label}\t\t\t\t\t\t\t\t\t{horizon}\tmissing original member")?;
            continue;
        };
        let entry = map.initial_cell()?;
        writeln!(areas,"{area}\t0x{table:x}\t{name}\t{label}\t0x{:x}\t{}\t{}\t{}\t{}\tPCS{}\t{}\t{}\t{horizon}\tSTRUCTURAL",pc.offset,map.width(),map.height(),entry.0,entry.1,area+1,pcs.map(|m|format!("0x{:x}",m.offset)).unwrap_or_default(),scripts.as_ref().map_or(0,|s|s.groups.len()))?;
        for (i, selector) in map.graphic_selectors().iter().enumerate() {
            for (literal_table, slot) in [(0x2978, 24 + i), (0x29fa, 28 + i)] {
                let at = 0x19200 + literal_table + usize::from(*selector) * 13;
                let raw = exe
                    .get(at..at + 13)
                    .ok_or("graphics table outside executable")?;
                let end = raw
                    .iter()
                    .position(|&b| b == 0)
                    .ok_or("unterminated graphics literal")?;
                let resource = String::from_utf8_lossy(&raw[..end]);
                writeln!(graphics,"{area}\t{name}\t{i}\t{selector}\t{slot}\t0x{at:x}\t{resource}\tBINARY-VERIFIED loader binding; not collision semantics")?;
            }
        }
        if let (Some(pcs), Some(scripts)) = (pcs, scripts.as_ref()) {
            for g in &scripts.groups {
                for mode in 1..=4 {
                    let target = g.mode_target(mode);
                    writeln!(groups,"{area}\t{}\t{}\t0x{:x}\t0x{:x}\t0x{:x}\t{}\t{}\t{mode}\t{}\t{}\t{}\tNOT EXECUTED",pcs.name,g.index,g.length_word_offset,g.payload_offset,pcs.offset+g.payload_offset,g.bytes.len(),hex(&g.bytes[..g.bytes.len().min(8)]),target.map(|v|format!("0x{v:x}")).unwrap_or_default(),target.map(|v|format!("0x{:x}",pcs.offset+v)).unwrap_or_default(),g.marker_matches(mode))?;
                }
            }
        }
        if let (Some(pcs), Some(scripts)) = (pcs, scripts.as_ref()) {
            for g in &scripts.groups {
                let frame = g.frame_commands();
                writeln!(
                    framing,
                    "{area}\t{}\t{}\t{}\t0x{:x}\t{}\t{}",
                    pcs.name,
                    g.index,
                    frame.commands.len(),
                    frame.stop_offset,
                    hex(&g.bytes[frame.stop_offset - g.payload_offset..]),
                    frame
                        .issue
                        .as_deref()
                        .unwrap_or("COMPLETE except zero padding")
                )?;
                for cmd in &frame.commands {
                    let text = if cmd.opcode == 17 {
                        cmd.arguments
                            .get(2..)
                            .unwrap_or(&[])
                            .iter()
                            .map(|b| {
                                let d = b.wrapping_add(10);
                                if (32..127).contains(&d) {
                                    char::from(d).to_string()
                                } else {
                                    format!("<{d:02X}>")
                                }
                            })
                            .collect::<String>()
                    } else {
                        String::new()
                    };
                    writeln!(commands,"{area}\t{}\t{}\t{}\t0x{:x}\t0x{:x}\t{}\t{text}\tSTATIC FRAMING; conditions not executed",pcs.name,g.index,cmd.opcode,cmd.payload_offset,pcs.offset+cmd.payload_offset,hex(cmd.arguments))?;
                    if cmd.opcode == 11 {
                        let a = cmd.arguments[0];
                        let position = u16::from_be_bytes([cmd.arguments[1], cmd.arguments[2]]);
                        let facing = cmd.arguments[3] % 4;
                        let target = if a > 0 && a < 100 { Some(a - 1) } else { None };
                        let target_name =
                            target.map(|v| format!("PC{}", v + 1)).unwrap_or_default();
                        let target_map = bank
                            .member(&target_name)
                            .map(|m| PcMap::parse(m.payload))
                            .transpose()?;
                        let (tx, ty) = if let Some(m) = target_map {
                            let w = i32::from(m.width());
                            (
                                (i32::from(position) % w - 1).to_string(),
                                (i32::from(position) / w).to_string(),
                            )
                        } else {
                            (String::new(), String::new())
                        };
                        writeln!(transitions,"{area}\t{}\t{}\t0x{:x}\t0x{:x}\t{a}\t{position}\t{facing}\t{}\t{target_name}\t{tx}\t{ty}\t{}",pcs.name,g.index,cmd.payload_offset,pcs.offset+cmd.payload_offset,target.map(|v|v.to_string()).unwrap_or_default(),if a==100 {"OTHER WORLD DISPATCH"}else if a==0 || a>100 {"NO VALIDATED DESTINATION"}else{"BINARY-VERIFIED opcode11 target; reachability not executed"})?;
                    }
                }
            }
        }
        let size = 110usize;
        let mut svg=format!("<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"{}\" height=\"{}\"><rect width=\"100%\" height=\"100%\" fill=\"#111827\"/><g font-family=\"monospace\" fill=\"#e5e7eb\"><text x=\"12\" y=\"20\" font-size=\"15\">{} area{} {} — source grid; collision UNKNOWN</text>",usize::from(map.width())*size+40,usize::from(map.height())*size+65,xml(&name),area,xml(&label));
        for y in 0..usize::from(map.height()) {
            for x in 0..usize::from(map.width()) {
                let cell = map.cell(x, y).unwrap();
                let at = 43 + (y * usize::from(map.width()) + x) * 15;
                // Preserve structural references; special keys bypass generic groups.
                // Conditions and commands remain unexecuted.
                let group = event_group(&map, cell)
                    .filter(|i| scripts.as_ref().is_some_and(|s| *i < s.groups.len()));
                if let (Some(group), Some(pcs), Some(scripts)) = (group, pcs, scripts.as_ref()) {
                    for cmd in scripts.groups[group].frame_commands().commands {
                        if [3, 8, 9, 11, 17].contains(&cmd.opcode) {
                            let association = match cmd.opcode {
                                3 => "illustration selector; NPC identity UNKNOWN",
                                8 => "encounter preparation; creature IDs UNKNOWN",
                                9 => "acquisition pool; ownership/acceptance NOT evaluated",
                                11 => "static area transition; reachability NOT evaluated",
                                _ => "dialogue speaker selector; party/NPC state NOT evaluated",
                            };
                            writeln!(references,"{area}\t{name}\t{x}\t{y}\t0x{at:x}\t0x{:x}\t{}\t{group}\t{}\t0x{:x}\t0x{:x}\t{}\t{association}",pc.offset+at,pcs.name,cmd.opcode,cmd.payload_offset,pcs.offset+cmd.payload_offset,hex(cmd.arguments))?;
                        }
                    }
                }
                for direction in 0..4u8 {
                    let pair = map.directional_pair(x, y, direction).unwrap();
                    let graphic = map.graphics_value_for_pair(pair);
                    let branch = if graphic == Some(9) {
                        "SPECIAL STAIR VISUAL/ACTION PATH; vertical semantics unknown"
                    } else if graphic.is_none() {
                        "UNKNOWN selector resident value"
                    } else {
                        match pair.movement_state {
                            0 => "current mode3/candidate mode1 scripts; may veto",
                            2 => "forward-only door interaction when facing graphics !=8",
                            3 => "forward-only animated door then coordinate update",
                            _ => "no ordinary movement branch",
                        }
                    };
                    let (dx, dy) = lale_assets::pc_map::direction_vector(direction);
                    writeln!(edges,"{area}\t{name}\t{x}\t{y}\t{direction}\t0x{:x}\t0x{:x}\t{}\t{}\t{}\t{}\t{}\t{branch}\tNOT EVALUATED: input/facing/scripts/state required",at+usize::from(direction)*2,pc.offset+at+usize::from(direction)*2,pair.selector,graphic.map(|v|v.to_string()).unwrap_or_default(),pair.movement_state,x as i32+i32::from(dx),y as i32+i32::from(dy))?;
                }
                write!(
                    cells,
                    "{area}\t{name}\t{x}\t{y}\t0x{at:x}\t0x{:x}\t{}",
                    pc.offset + at,
                    hex(cell)
                )?;
                for value in &cell[..11] {
                    write!(cells, "\t{value}")?;
                }
                writeln!(
                    cells,
                    "\t{}\t{}\tUNKNOWN: inspect movement branch/event state\tUNKNOWN\tUNKNOWN",
                    hex(&cell[11..15]),
                    group
                        .map(|v| v.to_string())
                        .unwrap_or_else(|| special_event_key(&cell[11..15])
                            .unwrap_or("UNRESOLVED_GROUP")
                            .into())
                )?;
                let px = x * size + 20;
                let py = y * size + 40;
                let fill = if (x, y) == entry {
                    "#164e63"
                } else if group.is_some() {
                    "#3b2947"
                } else {
                    "#1f2937"
                };
                write!(svg,"<g><title>{} ({x},{y}) PC+0x{at:x} FRPOS+0x{:x} raw{}; collision/NPC/transition UNKNOWN</title><rect x=\"{px}\" y=\"{py}\" width=\"108\" height=\"108\" fill=\"{fill}\" stroke=\"#4b5563\"/><text x=\"{}\" y=\"{}\" font-size=\"11\">({x},{y}) G:{}</text><text x=\"{}\" y=\"{}\" font-size=\"10\">p0 {}/{} p1 {}/{}</text><text x=\"{}\" y=\"{}\" font-size=\"10\">p2 {}/{} p3 {}/{}</text><text x=\"{}\" y=\"{}\" font-size=\"10\">f8:{} f9:{} u10:{}</text><text x=\"{}\" y=\"{}\" font-size=\"10\">@{:x}</text></g>",xml(&name),pc.offset+at,hex(cell),px+4,py+16,group.map(|v|v.to_string()).unwrap_or_else(|| if special_event_key(&cell[11..15])==Some("NO_EVENT") {"-".into()}else if special_event_key(&cell[11..15]).is_some() {"SP".into()}else{"?".into()}),px+4,py+35,cell[0],cell[1],cell[2],cell[3],px+4,py+52,cell[4],cell[5],cell[6],cell[7],px+4,py+70,cell[8],cell[9],cell[10],px+4,py+88,pc.offset+at)?;
            }
        }
        svg.push_str("</g></svg>\n");
        write_new(&output.join(format!("{name}.svg")), &svg)?;
        writeln!(index,"- [{name}: {label}]({name}.svg) — {}×{}, entry({},{}), initial facing{}. Raw directional pairs are numbered; no collision implied.",map.width(),map.height(),entry.0,entry.1,map.initial_direction()?)?;
    }
    write_new(&output.join("areas.tsv"), &areas)?;
    write_new(&output.join("cells.tsv"), &cells)?;
    write_new(&output.join("event-groups.tsv"), &groups)?;
    write_new(&output.join("graphics.tsv"), &graphics)?;
    write_new(&output.join("edges.tsv"), &edges)?;
    write_new(&output.join("cell-event-references.tsv"), &references)?;
    write_new(&output.join("event-commands.tsv"), &commands)?;
    write_new(&output.join("transitions.tsv"), &transitions)?;
    write_new(&output.join("framing.tsv"), &framing)?;
    write_new(&output.join("INDEX.md"), &index)?;
    println!("Original area atlas exported to {}. No gameplay or files in original distribution changed.",output.display());
    Ok(())
}
fn event_group(map: &PcMap<'_>, cell: &[u8; 15]) -> Option<usize> {
    if special_event_key(&cell[11..15]).is_some() {
        None
    } else {
        Some(usize::from(map.event_group_candidate(cell)))
    }
}
