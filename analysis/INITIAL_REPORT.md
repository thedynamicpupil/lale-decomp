# Project checkpoint — 2026-10-13

Full instructions: `../promptlale.txt`. Stage A and Phase Three are complete.
The user explicitly accepted REA verification and requested skipping Stage C.
Stage B still requires manual graphical verification. No original distribution
or emulator files were changed, as checked against `STAGE_A_PRESERVATION.json`
after the launch attempt and again after Phase Three.
The protected Ghidra project was not opened or edited.

## Verified observations

- Actual root contains the distribution listed in the prompt, plus the prompt
  itself and restricted environment metadata. The Unix launcher mentioned in
  OKUBENI.TXT is absent.
- Root LALE.BAT invokes `DosBox\dosbox.exe -conf dosbox.conf -lang
  DosBox\Turkish.lang`; it is a Windows host launcher, not a DOS game batch file.
- Original configuration mounts relative directory `lale` as T:, switches to
  T:, runs IST.EXE at the drive root, then exits. It specifies 7000 CPU cycles,
  16 MiB RAM, XMS off, EMS/UMB on, SVGA S3, and Sound Blaster 16 at 220/IRQ7/DMA1.
- Bundled dosbox.exe and SDL DLLs are Windows PE32; IST.EXE and KUR.EXE are DOS
  MZ files. Neither unknown executable was run directly on Linux.
- Linux `/usr/bin/dosbox` is DOSBox Staging 0.82.2 (Fedora package); Linux
  `/usr/bin/dosbox-x` is DOSBox-X 2026.10.01. Both are x86-64 ELF executables.
- OKUBENI.TXT is UTF-8. It documents EMS, emulator cycle controls, game controls,
  and KUR.EXE as the sound setup tool; these are documentation claims.
- Twenty original game files are present in lale/ excluding the Ghidra project.
  0GFL.CKD is 218,306,786 bytes; IST.EXE is 385,328 bytes. Resource observations
  are now documented in RESOURCE_FORMATS.md. The manual was examined in Phase Three.

## Launcher and checks

`../launch-lale.sh` defaults to DOSBox-X, with DOSBox fallback and an explicit
DOSBOX_BIN override restricted to executable ELF files. It resolves the project
path independently of CWD, seeds twenty explicitly listed game files into
runtime/lale, and preserves existing files on repeat launches. No Ghidra files
or emulator installation are copied. Runtime includes the Turkish language file
and attribution document. A generated configuration preserves the original
emulation settings and startup sequence. Mapper/capture relative paths resolve
within runtime; XDG_CONFIG_HOME also points within runtime. Concurrent launcher
use is locked. Original LALE.BAT and dosbox.conf remain unchanged.

Checks passed: Bash syntax, executable mode, preparation from /tmp with a spaced
project path, repeated preparation preserving all twenty runtime files, absence
of Ghidra files in the runtime copy, and unchanged source hashes. Shellcheck is
not installed. The launcher has not been validated with the Staging fallback.

Launch attempt log: `LAUNCH_SMOKE.log`. DOSBox-X read the generated configuration
and selected the intended runtime working directory, but exited with
`Can't init SDL x11 not available`. DISPLAY/Wayland variables exist but do not
establish usable GUI access from this executor. The game did not have a verified
successful launch. No visual, keyboard, save/load, or audio checks completed.

Manual test from a KDE terminal:

```bash
cd '/home/zabumafu/Projects/LALE DOS'
./launch-lale.sh
```

Confirm whether the title/menu appears, input and sound work, Alt+Enter toggles
fullscreen, and saves survive relaunch. Ctrl+F9 exits the emulator. Saves and
changed game settings belong under runtime/lale; do not copy them over originals.

## REA verification already performed

REA CLI and the active MCP server both report 6.4.0 at
`/home/zabumafu/.local/npm/bin/rea`. Live binary_session succeeded, and explicit
expected version/path checks returned aligned. The client exposes 170 REA tools;
skill version 37 matches. Ghidra readiness reports 12.1.4 and JDK 25.0.4.1 with
all prerequisite checks passing. Hopper is absent; IDA is not configured.

Separate `rea mcp doctor --json` subprocess transport test failed with
`Connection closed`, despite the functioning active client connection. The
cause remains unknown. The user subsequently accepted REA verification as
complete. During Phase Three a real REA static PE resource inspection of
Uninstall.exe succeeded; full Evidence is in `evidence/rea-phase-three.json`.
No installation/configuration was performed. A prior `dosbox --version` probe
was not a reliable version query for
Staging and emitted configuration compatibility warnings; package metadata
supplied the recorded version instead.

## Next work

Phase Three deliverables are FILE_MANIFEST.sha256, ASSET_INVENTORY.md,
RESOURCE_FORMATS.md and FILE_DEPENDENCIES.md, with OPEN_QUESTIONS.md as the
evidence ledger. Reproducible inventory probes are under `../tools/`; complete
byte observations and member hashes are under `evidence/`.

The inventory covers 25 original distribution files (239,098,766 bytes) and
validates 790 FLiB member records across eight CKD files. TRDOS.DAT renders as a
coherent 256-glyph bitmap font. IST has 220,448 appended bytes beginning FBOV.
These observations establish analysis leads, not recovered gameplay or codecs.

Next research is Phase Four: executable layout, overlay investigation and
decompilation using REA/Ghidra in a separate agent-owned workspace. Follow with
resource-loader tracing; retain original segment:offset addresses and evidence.
Manual Stage B feedback remains outstanding; it need not trigger repeated REA
verification. Preserve unknowns; do not start a replacement game engine.
