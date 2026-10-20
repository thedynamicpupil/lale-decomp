# Original world warning, choice, dialogue and acquisition boundaries

This new checkpoint preserves all prior evidence. Original bytes remain unchanged.
`world_ui.rs` implements encoded byte normalization, original font drawing, warning
text plans, choice plans/controls, bounded party maximum selection and dialogue
portrait frame/timing helpers. Three native tests pass, including original DOS
warning DS hitbox comparison. This is source recovery plus DS validation; complete
warning/dialogue/acquisition screen pixel equivalence remains unverified.

Original resident05dc2198 (`IST.EXE` a358..a7ac) presents two choices. Options use
16da003e normalization. Their origins are x=80 or240 minus floor(10*byte_length/2).
DSbbaa becomes min(old+2,6), y=148+(bbaa-1)*8. Shadow color0 is offset(1,1),
foregroundDS9666, firstletterDS9665. Mouse inclusive boxes are
[x-3,y-3,x+measured_width+3,y+13]. Fresh R3-WARN-DS records oldtext linecounter2,
new4 and exact boxes(57,169,95,185),(212,169,257,185). Native tests reproduce both
using original DENEYX.CMP. e/E selects0, h/H selects1; BIOS lowbyte matching is
casefolded. Enter, arrows, Space and Esc have no special choice action.

Resident05dc2948 (`ab08..af55`) normalizes message bytes, uppercase-converts the
first byte for its prefix glyph, then lowercases it again and renders remaining
text. Info mode uses image5 IREM6.CMP for uppercase atlas, DS9665 color. Prefix
origin(4,DS9658+5); uppercase renderer draws19x19 at y-5. Body origins x23 for
firsttwo lines,4 thereafter; y=DS9658+line*8, max6. There is no automatic word
wrap: helper25ec (`a7ac..ab07`) chooses the earliest0a/b6 separator, temporarily
NULs it, renders, restores it, advances consumed length. DSbbaa increments only
when consuming a separator. StyleDS9673==2 adds left/up edgeDS9668 plus black
right/down shadow; otherwise black(1,1) shadow. Native `warning` only covers
info presentation and retains explicit caller linecounter/styles.

Both font resources live in IVIR.CKD: DENEYX.CMP (13x1000 proportional glyphs,
11rows stride13, metadata width+1 drawn, width+2 advance); IREM6.CMP (uppercase
atlas). Proportional glyphs recolor only index255. Uppercase atlas preserves
indices except transparent254. Original16da0b43 source is retained in earlier
renderer-font-original.asm; new helpers implement its full byte dispatch including
newline and excludedasterisk. Bytes remain original encoded bytes, without
invented Unicode or replacement glyphs.

REA modal Evidence ev_2301e4708f30684768a399430842ed5dca2097c948440a4defce919f5f3af6a6
and text Evidence ev_53869bd6253077f1ed98036fcbf7942e60a5dc3f4ee4127fc9c427a22de39419
are retained in modal-2198-rea.json / text-2948-rea.json. They were obtained from
read-only originals/owned synthetic entry wrappers. Assembly validates stack
arguments where decompiler types/context are incomplete. R3-WARN-VGA rawA000
bytes do not match the logical warning-screen bottom rows; they were excluded
from pixel assertions rather than treated as a valid packed screen fixture.

Opcode23 [01,0f] calls1689:46e3(0,1,15), selects the firstpartyindex1..4 whose
SIGNED fieldword is maximal, tieslowestindex, and storesDSbb9c. Word address is
99a6+index*5c+field*2 (firstpartyfield15 at9a20). NoRNG or party mutation is in this
selector. Actual REA Evidence ev_48c713d309ad80af6b0992f90a48a366082a797102e9ec9b27ec5ff929aeabcd is retained selector23-rea.json and raw instructions
party-selector-46e3.asm (47d53..4812f); native maximum_party_field covers this
exact command's max branch, not every general selector mode.

Opcode17 speaker5 substitutes DSbb9c (must<5) then calls2948 mode0. It saves32x32
screen rectangle at(8,110), renders a31x31 border, then30x30 portrait at(9,111),
sourceY1, slot70+speaker. Party portrait resources are the original S-prefixed
appearance CMPs (160x32), already decoded by character_appearance.rs. Selected
speaker HP word99e0+speaker*5c must bepositive; otherwise original retries RNG
range4+1 until alive; if no party alive it calls a separate handler. Every150-unit
timer step consumes RNG range2: nonzero→sourceX1; zero consumes another range2
and chooses sourceX97 or129. Budget starts20+6*linecount; source postdecrement
stops after budget+2 draws. Esc/Space/Enter are accepted after>=4 draws, mouse
after>=3. Portrait save is restored/freed afterward. The pure helper preserves
frame RNG ordering and stopping thresholds; caller must supply the live RNG and
source portraits. This is not a claim that current native gameplay RNG call order
or full dialogue presentation is already verified in DOS.

Acquisition1689:2f21 (`46591`) mode0 adds pendingwords bba2/bba4/bba6 to
bb6f/bb71/bb73 at46611..46636 BEFORE input. Keyboard lowbyte1b dispatches through
table47cd4 to4718e, clears loop local, then cleanup. It does not run a transfer.
Cleanup47bd1..47c39 clears10 temporaryitemwords bb55+2*i (i1..10), and pending
resourcewords bba2/bba4/bba6. Modes1/2 firstcopy lowbytes tobbb7+i/bbac+i; mode0
skips copies. Thus mode0 Esc retains entry resource additions and discards
untransferred temporary items. Event/region1a also exits; event1b is a different
conversion action in modes!=0 and must not be confused with keyboardASCII1b.
The native module exposes addition and Esc recognition only; inventory UI,
resource naming, item transfer, bank loads and cleanup presentation are not
silently approximated. Acquisition host presentation remains incomplete.

The remaining dialogue prefix binding was subsequently recovered: main7c8d loads
image84 from DS396a `irem62.cmp`, mode1 via16b5:0020. IVIR.CKD/IREM62.CMP is the
mode0 uppercase prefix atlas; info mode usesimage5 IREM6.CMP. Raw load bytes are
font-bindings-main.asm. `warning` can supply shared body layout, but callers must
draw its prefix with the mode-appropriate atlas and body color (dialogueDS966c).

Message background05dc1f6a at a12a allocates320*DS965a if absent, always copies
the current screen bottom [y=DS9658,heightDS965a] into the save and clears the
same area color0. With fresh DS this is [0,148,320,52]. Existing allocation is
reused but re-saved on each call. It does not reset bbaa. Restore05dc1eb9 at
a079..a129 copies the saved bottom back, frees save, and always resets bbaa=0
(even if no save). Choice closes throughrestore; dialogueopcode17 starts with
restore before2948. This allows source-equivalent bottom layering without
invented UI art. Full original outerHUD remains a separate presentation scope.
