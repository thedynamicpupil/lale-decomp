//! Verified deterministic combat-entry components. Returns BEFORE1b6d's turn
//! presentation, never a ready-to-play battle or a completed opcode8 result.
use crate::{
    amf::Amf14,
    combat_party_tables::CombatPartyTables,
    combat_prepare::{place_actors, EncounterRequest},
    combat_terrain::Terrain,
    pc_map::PcMap,
    Error, Flib,
};
use lale_core::{
    combat::CombatState,
    combat_entry::{self, ChannelBalance, MusicGates},
    combat_party::{self, Numeric},
};

#[derive(Debug)]
pub struct EntryMusic {
    pub module_id: u16,
    pub member_name: String,
    pub channels: u8,
    pub balances: Vec<ChannelBalance>,
}
pub struct EntryContext {
    pub position: [u16; 2],
    pub facing: u8,
    pub difficulty: u8,
    pub hand: i16,
    pub music: MusicGates,
    /// Source terrain can touch the last29 occupancy words via negative indices.
    pub preceding_terrain: [i16; 29],
}
/// Explicit input is the state at original b40a entry, after world preparation.
/// The original audio/module loading must have succeeded for returned music
/// commands; IO/unsupported input leaves caller state and records unchanged.
pub fn initialize(
    exe: &[u8],
    music_archive: &Flib<'_>,
    map: &PcMap<'_>,
    request: EncounterRequest,
    context: &EntryContext,
    numeric: &mut [Numeric; 4],
    state: &mut CombatState,
) -> Result<Option<EntryMusic>, Error> {
    if request.groups.iter().all(|g| *g == [0, 0]) {
        return Err(Error(
            "all-zero opcode8 groups require original caller random-group resolution before b40a"
                .into(),
        ));
    }
    let mut next = state.clone();
    let mut records = *numeric;
    next.round = 0; // Original b5e4 / physical55234, also on later encounters.
    let music = if let Some(id) = combat_entry::choose_music(context.music, &mut next.rng) {
        let at = crate::combat_data::ORIGINAL_DS_FILE_BASE + 0x2c91 + 13 * usize::from(id);
        let row = exe
            .get(at..at + 13)
            .ok_or_else(|| Error("truncated original music name table".into()))?;
        let end = row
            .iter()
            .position(|&b| b == 0)
            .ok_or_else(|| Error("unterminated original music name".into()))?;
        let name = std::str::from_utf8(&row[..end]).map_err(|e| Error(e.to_string()))?;
        let member = music_archive
            .member(name)
            .ok_or_else(|| Error(format!("missing original combat music {name}")))?;
        let amf = Amf14::parse(member.payload)?;
        Some(EntryMusic {
            module_id: id,
            member_name: name.into(),
            channels: amf.channels,
            balances: combat_entry::channel_balances(amf.channels, &mut next.rng),
        })
    } else {
        None
    };
    let terrain = Terrain::build(
        map,
        context.position,
        map.graphic_selectors().map(i16::from),
        next.terrain,
        context.preceding_terrain,
        &mut next.rng,
    )?;
    next.terrain = terrain.words;
    combat_party::initialize(
        &mut records,
        &mut next,
        &CombatPartyTables::read(exe)?.borrowed(),
        context.hand,
    )
    .map_err(|e| Error(format!("original party conversion:{e:?}")))?;
    request.initialize_creatures(exe, context.difficulty, &mut next)?;
    place_actors(
        map,
        context.position,
        context.facing,
        terrain.party_region,
        &mut next,
    )?;
    // Main resets6322 before preparation; first1b6d generates initiative.
    next.initiative_ready = false;
    next.cursor = 0;
    *numeric = records;
    *state = next;
    Ok(music)
}
