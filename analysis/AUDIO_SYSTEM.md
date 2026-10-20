# Audio recovery checkpoint

All15 MUZIK members are structurally consistent AMF version14 modules, with exact complete parsing through orders,31 sample descriptors, track remapping, event records and sample payloads. Modules have6 channels except ISTANBUL with8. This is substantially stronger evidence for music than the archive filename alone.

The executable AMF parser is resident analysis2063a (original physical0x12a3a); its version check is at206da. Enclosing loader20da3 opens a resource, checks AMF magic, allocates an object and invokes the parser. REA evidence is retained in phase-four/continuation/ist-resident-new-evidence.json. Menu code references demo.amf. Details and physical field offsets: [audio findings](phase-five/audio-findings.md), [structural evidence](phase-five/audio-structure-evidence.json).

Rust lale-assets::amf::Amf14 adds a borrowed structural reader preserving raw descriptors, panning candidates, event triplets, samples and boundaries. Two tests verify all15 independent expected structures and malformed/truncated inputs. Nonzero third track-header bytes are explicitly unsupported; every observed module has zero. No event execution, mixing, rate, tempo or loop interpretation is implemented.

SOUNDS is heterogeneous: BOSCH.PUR is53 bytes of CRLF text; ADIM4.PUR has an unexplained eight-byte prefix. Most payloads may be sample data, but sample rates, signedness, channels and complete playback path remain unverified. Do not convert them using a guessed rate.

A17-byte-stride table is consumed by code at physical0x9970, alongside23-byte runtime records. A previously suspicious helper at physical0x1019f (analysis1dd9f) releases memory and zeros a pointer; it is not evidence of sound playback. Device-driver registration and timer hooks have been identified, but mixer scheduling and driver ABI remain port blockers.
