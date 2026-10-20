//! Diagnostic distribution survey; controlled states are not startup seeds.
mod character_data;
mod character_generation;
use character_data::{LaleRng, STAT_NAMES, STAT_OFFSETS};
use character_generation::{generate_numeric_from_traits, initialize_traits, GenerationTables};
use std::{
    collections::BTreeMap,
    error::Error,
    fs::OpenOptions,
    io::{BufWriter, Write},
    path::Path,
};
const OFFSETS: [usize; 17] = [
    0x24, 0x26, 0x0e, 0x10, 0x0a, 0x0c, 0x14, 0x12, 0x1a, 0x16, 0x18, 0x1c, 0x1e, 0x20, 0x22, 0x28,
    0x2c,
];
fn create(dir: &Path, name: &str) -> Result<BufWriter<std::fs::File>, Box<dyn Error>> {
    Ok(BufWriter::new(
        OpenOptions::new()
            .write(true)
            .create_new(true)
            .open(dir.join(name))?,
    ))
}
fn main() -> Result<(), Box<dyn Error>> {
    let args: Vec<_> = std::env::args_os().collect();
    if args.len() != 4 {
        return Err("usage: lale-generation-survey ORIGINAL_IST.EXE NEW_OUTPUT_DIR STATES_PER_FAMILY (1..65536)".into());
    }
    let n: u32 = args[3].to_str().ok_or("invalid count")?.parse()?;
    if !(1..=65536).contains(&n) {
        return Err("count must be1..65536".into());
    }
    let tables = GenerationTables::from_original_ist(&std::fs::read(&args[1])?)?;
    let dir = Path::new(&args[2]);
    std::fs::create_dir(dir)?;
    let mut summary = create(dir, "summary.tsv")?;
    let mut hist = create(dir, "histogram.tsv")?;
    let mut corr = create(dir, "correlation.tsv")?;
    let mut rare = create(dir, "guc-13-witnesses.tsv")?;
    let mut anomalies = create(dir, "targeted-dos-candidates.tsv")?;
    writeln!(anomalies,"condition\tfamily\trace\tsex\tinput_state_hex\tafter_trait_state_hex\tfinal_state_hex\trecord_hex")?;
    writeln!(summary,"family\trace\tsex\toffset_hex\tlabel\tcount\tsampled_min\tsampled_max\tmean\tpopulation_sd\tminimum_count")?;
    writeln!(hist, "family\trace\tsex\toffset_hex\tvalue\tcount")?;
    writeln!(corr, "family\trace\tsex\toffset_a\toffset_b\tpearson_r")?;
    writeln!(
        rare,
        "family\trace\tsex\tinput_state_hex\tafter_trait_state_hex\tfinal_state_hex\trecord_hex"
    )?;
    for family in ["low16", "stratified32"] {
        for race in 1..=8 {
            for sex in 1u16..=2 {
                let mut distributions: [BTreeMap<i16, u64>; 17] =
                    std::array::from_fn(|_| BTreeMap::new());
                let mut sums = [0f64; 17];
                let mut squares = [0f64; 17];
                let mut products = [[0f64; 17]; 17];
                let mut witnesses = 0;
                let mut anomaly_counts = [0; 2];
                for ordinal in 0..n {
                    // Even spacing over high words, scrambled low words; no extra RNG draws.
                    let state = if family == "low16" {
                        ordinal
                    } else {
                        (ordinal << 16) | ((ordinal.wrapping_mul(40503).wrapping_add(173)) & 0xffff)
                    };
                    let mut rng = LaleRng { state };
                    let traits = initialize_traits(&[0; 16], race, &tables, &mut rng)?;
                    let after_trait = rng.state;
                    let mut record = [0; 92];
                    record[2..4].copy_from_slice(&race.to_le_bytes());
                    record[4..6].copy_from_slice(&sex.to_le_bytes());
                    generate_numeric_from_traits(&mut record, &traits, &mut rng);
                    let values = OFFSETS.map(|o| i16::from_le_bytes([record[o], record[o + 1]]));
                    for (i, (condition, hit)) in
                        [("Guc17", values[5] == 17), ("Kilo0", values[1] == 0)]
                            .into_iter()
                            .enumerate()
                    {
                        if hit && anomaly_counts[i] < 3 {
                            anomaly_counts[i] += 1;
                            let hex: String = record.iter().map(|b| format!("{b:02x}")).collect();
                            writeln!(anomalies,"{condition}\t{family}\t{race}\t{sex}\t{state:08x}\t{after_trait:08x}\t{:08x}\t{hex}",rng.state)?;
                        }
                    }
                    for i in 0..17 {
                        let v = f64::from(values[i]);
                        *distributions[i].entry(values[i]).or_default() += 1;
                        sums[i] += v;
                        squares[i] += v * v;
                        for j in 0..i {
                            products[i][j] += v * f64::from(values[j]);
                        }
                    }
                    if values[5] == 13 && witnesses < 3 {
                        witnesses += 1;
                        let hex: String = record.iter().map(|b| format!("{b:02x}")).collect();
                        writeln!(rare,"{family}\t{race}\t{sex}\t{state:08x}\t{after_trait:08x}\t{:08x}\t{hex}",rng.state)?;
                    }
                }
                for i in 0..17 {
                    let d = &distributions[i];
                    let mean = sums[i] / f64::from(n);
                    let sd = (squares[i] / f64::from(n) - mean * mean).max(0.0).sqrt();
                    let label = STAT_OFFSETS
                        .iter()
                        .position(|o| *o == OFFSETS[i])
                        .map(|i| STAT_NAMES[i])
                        .unwrap_or("UNKNOWN");
                    let (&min, &min_count) = d.first_key_value().unwrap();
                    let max = d.last_key_value().unwrap().0;
                    writeln!(summary,"{family}\t{race}\t{sex}\t{:02x}\t{label}\t{n}\t{min}\t{max}\t{mean:.6}\t{sd:.6}\t{min_count}",OFFSETS[i])?;
                    for (v, c) in d {
                        writeln!(
                            hist,
                            "{family}\t{race}\t{sex}\t{:02x}\t{v}\t{c}",
                            OFFSETS[i]
                        )?;
                    }
                    for j in 0..i {
                        let denom = ((squares[i] - sums[i] * sums[i] / f64::from(n))
                            * (squares[j] - sums[j] * sums[j] / f64::from(n)))
                        .max(0.0)
                        .sqrt();
                        let r = if denom == 0.0 {
                            f64::NAN
                        } else {
                            (products[i][j] - sums[i] * sums[j] / f64::from(n)) / denom
                        };
                        writeln!(
                            corr,
                            "{family}\t{race}\t{sex}\t{:02x}\t{:02x}\t{r:.6}",
                            OFFSETS[i], OFFSETS[j]
                        )?;
                    }
                }
            }
        }
    }
    let mut notes = create(dir, "METHOD.txt")?;
    writeln!(notes,"Diagnostic only. Each race1..8/sex1..2 uses {n} low16 states and {n} stratified32 states. Every sample starts from a zero92-byte record with race/sex set and runs the existing trait initializer (one draw), then verified numeric generator (26 draws), including signed minimum pass. This is independent-generation sampling, not callback timing, reroll lifecycle or a startup distribution. Input states are controlled test states, not invented game seeds. Extrema are sampled, not proven bounds; low16 enumerates every16-bit state only when count65536. Correlations are descriptive, not causal proof. UNKNOWN offsets deliberately retain no semantic label. NaN means zero variance. Source: character_generation.rs / character_data.rs; no RNG arithmetic duplicated here. Outputs are exclusive-create; originals read only.")?;
    Ok(())
}
