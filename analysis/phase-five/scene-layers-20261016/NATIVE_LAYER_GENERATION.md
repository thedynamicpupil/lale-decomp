# General native scene command generation — 2026-10-16

New Phase Five evidence and native asset support. Earlier evidence, protected
originals, protected GUI Ghidra project and Phase Four completion status are
unchanged. This increment follows the user's persistent PC1/PC2 navigation
objective. It does not certify movement/events or every area in the game.

## Implemented native original logic

`rust-port/crates/lale-assets/src/scene_layers.rs` implements original1662
3cdd,43c9,58e2 in native Rust, with exact PC-cell reads and live generated
projection words as inputs. Root implemented4f55/56e0 in`scene_near.rs`,3969 in
`scene_walls.rs`,3471/35ff in`scene_geometry.rs`,and explicit200x200 original
fallback context/resource selection. None is an instruction VM.

`scene_commands.rs` composes all five passes in original3932 call order:
3cdd→43c9→4f55→56e0→58e2. It expands wall commands through3969 and the actual
provided resource table. Byte/word effects are applied to context in source
order before generating subsequent passes. `commands_with_tables` accepts
resource-specific tables;`commands_200` uses eight references to the verified
fixed200x200 fallback after absence of KOR has been established by the caller.
The parent separately verified the PC1/PC2 resource case. No DS snapshot or
captured per-cell draw list is loaded by this production path.

Common neighborhood coordinates use live forward basis(fx,fy):
`x'=x+depth*fx-lateral*fy`, `y'=y+depth*fy+lateral*fx`,with16-bit wrapping before
signed bounds checks. The validated cell offset is`15*(y'*width+x')`.

Far3cdd samples depth3,lateral-2/+2 for two-pixel edge strips, optional
background below the horizon, then lateral-3,-2,-1,0,3,2,1. It reads fields9/8
for floor/ceiling slots35/55 plus stored byte, and interleaves3969 geometry
indices33..36 for the appropriate side directions. The edge strips do not
suppress field8=0, while the main row does.

Middle43c9 samples depth2 in order-3,-2,-1,3,2,1,0. Floor variation adds
`5*((facing&1)|(((x+y)&1)<<1))`;ceiling adds twice that pattern. Offcenter
floor/ceiling are original0f21 calls,not rectangular/scaled calls. Center draws
use0430. Wall calls and DS:3af9 low-bit effects retain source order.

Current58e2 samples depth0,lateral-1,+1,0. Its pattern uses signed IDIV
remainders rather than replacing them with unsigned parity for arbitrary
negative coordinates. It emits side0f21 calls and wall22/24,center0430 draws,
sets byte3af8 to field8!=0,then wall23/26/25 and3af9 masks16/32/64 from the
left/right/forward movement-state bytes. These byte effects are explicit
commands,not inferred wall booleans.

## Exact original cropped primitive

Original resident0ac6:0f21/filedf81..e150 resolves bank mappings in row chunks,
then calls one of four original row callbacks directly. It does **not** call
0430 or0c5a. A trace limited to those two primitives misses these visible
polygon strips. The parent traced the missing destination pixels to these
calls and independently compared the complete indexed viewport.

Callbacks original0ac6:10f1,1185,1261,1307 correspond to files
e151,e1e5,e2c1,e367. Actual REA/Ghidra dossiers and original instructions agree:

- Base source x=`sx-row`,span length=`width+2*row`.
- Right destination x=`dx+slope*row`;unsigned right-edge clipping can shorten
  the span or end the callback.
- Left destination x=`dx-(slope+2)*row`;signed left-edge clipping adjusts source
  x,length and destination x,or ends the callback.
- Floor source/destination rows increase. Ceiling first adds
  `start_row+row_count` and then subtracts the row index. It includes the exact
  original bottom-row offset; no guessed off-by-one correction is applied.
- Final copy is original09d4:004c with sourcefar,destinationfar,length,key254.

`crop_callback_spans` retains the exact16-word callback ABI and16-bit far
offset arithmetic. It can therefore be checked at original bank-chunk boundaries
without flattening segment aliases. Parent`scene_crop::draw_crop` supplies the
flat-image boundary using actual image/destination strides and preserves key254.
The flat path still rejects spans outside its resolved original image; it does
not silently replace invalid pointer behavior.

## Source evidence and validation

`source-provenance.json` binds new original source slices to IST.EXE SHA256
9ba1640ae2ee33579cb1c914d0686346f53c4c7ef6520c7d92262b9c2f06b05e.
Core original ranges are:

|Consumer|Original file range,end exclusive|
|---|---|
|3cdd|2c10d..2c7ef|
|43c9|2c7f9..2d385|
|58e2|2dd12..2e2af|
|0f21 wrapper|df81..e151|
|four row callbacks|e151..e455|

Actual REA opened the existing immutable synthetic1662 wrapper in a separate
owned ephemeral Ghidra12.1.4 project. Sessions were closed after exports. No
protected GUI project was opened or changed. `layers-crop-rea.json` retains:

- 43c9:`ev_ebd59449c4f38aa7868bbd8adb3ac7cdbf61883b29f963dfd0862f9c563db81f`.
- 0f21:`ev_4d5a2091fbed51d6d79383a4fd4bb9e142da4a100df83fd6ae0e44d526397fe5`.
- 10f1:`ev_17ea44b49350141494b9eddc9db6b1f14cc6e723587d3c6032dbc52bf5888535`.
- 1185:`ev_5039901c0ece3c05adbadc5a112f75aea3988941500bf261805b6566f2850fee`.
- 1261:`ev_964dab65703d47e974afca0c0ce151e84d0881d961984028710f0941abee00b9`.
- 1307:`ev_993f638a8e4cea179d53f7267bc45dc303ea15d96279e9c743abc905a552b6e6`.

`fifth-layer-rea.json` retains58e2:
`ev_88b69a3b98f2c3ca8a61584d79eaa2dc6c544cf18d40f0e1521fb4159f8eaa80`.
The existing prior3cdd dossier was reused. Pseudocode aliases and parameter
prototypes remain fallible; original instructions establish the transcriptions.

Seven bounded integration tests pass offline:

- Common neighborhood bounds/wrap and original north candidate offset.
- All four retained facings'32 direct3cdd calls,ordered normalized10 arguments
  and exact return addresses.
- Four facings' direct43c9 calls and DS:3af9 low-bit effects.
- Four facings' direct58e2 calls and DS:3af8/3af9 current-cell effects.
- Fresh destination(2,0),facing0 current pass:four0f21 and two0430 calls match
  raw NV5 stacks including return IP and normalized selectors/callback segments.
- Full five-layer generator matches **all117** retained original0430/0c5a
  calls,in exact order,across the four starting facings. Newly recovered0f21
  calls are excluded only from this old trace comparison because that trace
  did not trap them.
- Full five-layer generator matches **all11** fresh NV5 destination calls,
  including all four0f21 calls,in exact order.

The parent separately reports original destination viewport equality
40000/40000 indices after these four crops were included. That parent result is
not a new physical-input observation by this static worker. General projection,
source allocation/scaling,additional coordinates and playable navigation retain
their parent-owned verification obligations. No broad area/game completeness
or new user desktop acceptance is inferred.
