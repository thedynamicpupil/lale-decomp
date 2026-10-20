# Physical attack and party writeback — 2026-10-20

Phase1 static recovery supporting the first original tactical encounter. New
REA files were produced by the root investigator; this subtask reviewed their
output and validated critical paths against retained original-byte assembly.
No DOS runtime observation, Rust mechanic or gameplay acceptance is claimed.
All offsets below are hexadecimal physical IST.EXE offsets unless labelled DS,
record offset or logical overlay address. Original1694 file base is49c50.

## Functions and source identity

|Original logical entry|Physical body|Function|
|---|---|---|
|1694:3f5b|4dbab..4e47c|Physical attack, both hands, hit/damage/cost, incapacitation and side check|
|1694:6828|50478..50711|Party equipped-hand attack parameters and attack threshold|
|1694:8111|51d61..51eb8|Four-party persistent numeric writeback|
|1694:0000|49c50..49cd9|Graphics/resource cleanup; does not copy HP|
|1694:b40a|5505a onward|Battle main host, inputs and termination return|
|1694:1b6d|4b7bd onward|Turn selection and decisive side result|
|1694:aa60|546b0..546fd|Party experience/progress award helper; follows class into party record offset08|
|1694:aaae|546fe onward|Progress-dependent update; full growth formulas remain to audit|

Source original SHA256 is
`9ba1640ae2ee33579cb1c914d0686346f53c4c7ef6520c7d92262b9c2f06b05e`.
The relevant assembly is retained at
`analysis/phase-five/area-fields-20261015/attributes/overlay-1694.asm`.
All instruction lines in the first four complete bodies above were compared
against original IST bytes; none differed. Full linear listings contain data
and misleading near-target text: validate signed relative displacement and
16-bit IP before using target labels. Examples4dead→50478 and4e09f→546b0
are incorrectly displayed as40478/446b0 in that adjusted listing.

Retained REA evidence in this directory:

- `physical-attack-rea.json`, `physical-attack.pseudo.c`:
  `ev_3bb5af646184812e74dc65eb81b97b2f434431b82930cbdd6774e54b8694e36a`.
- `attack-parameters-rea.json`, `attack-parameters.pseudo.c`:
  `ev_269d53697c2b38ba97ccab6d81f723989d7024566f6b2870561d282d581d27f2`.
- `party-writeback-rea.json`, `party-writeback.pseudo.c`:
  `ev_6a2b3acae9a5fe7c947c90d5af32a8021cb02a0d62b821b17a7c378837f2f23a`.
- `combat-main.pseudo.c`, `turn-scheduler.pseudo.c`,
  `initiative-order.pseudo.c` supply call context, not independent runtime proof.

## Two distinct combat tables

Use these explicit original coordinates; decompiler data aliases such as
DAT3042_0a6a differ from the actual resident addressing visible in assembly.

`A(i) = DS:a08a + 40*i`, actor indices1..28; party actors25..28 correspond
to original party records1..4. `T(c)=DS:9f1a + 46*c` is shared class/stat data.
The actor's class comes from `A(i)+6`. Enemies can share a class/stat record;
their current HP and coordinates remain per actor.

|Actor offset|Meaning proven by consumers|
|---|---|
|00|Signed current HP; active iff >0|
|02|Current Damak/resource copied to party38 on return|
|04|Facing1..4, temporarily+4 while attacking|
|06|Class/stat record selector|
|08/0a|Battle coordinates|
|0c|Last attacker/target relationship|
|0e|Side1 or2; decisive side-presence array indexed by this|
|12|Attack threshold source for normal attack|
|14|Defender random-roll bound source|
|20|Additional effect/vecize dispatch ID on successful physical damage|
|22|Positive disables a normal scheduler turn; hit branch also forces roll0 and lethal raw damage|
|24|Set1 after positive damage, cleared by turn scheduler|

|Class offset|Use in physical combat|
|---|---|
|00|Base/max HP copied from party0c and restored there|
|02|Encoded primary damage, hundreds=random span parameter, remainder=base|
|08|Protection subtracted after a hit|
|0a|Turn allowance before effect adjustments|
|0c/0e|First/second hand encoded speeds|
|10|Base/max Damak copied from party0a|

These offsets are direct consumer semantics. Other class fields and all effect
names still require full source mapping; do not fill them from RPG conventions.

## Physical attack exact main arithmetic

Entry requires global attacker DS:d56e>0 and target DS:d56c>0. It reads their
class selectors once and loops hand DS:d5b6 from1 to2, rechecking target HP.
The following pseudocode is analysis notation, not original source.

For each hand, physical4dc08..4dc9b:

```
cost = signed_word(T(attacker_class) + 0x0a + 2*hand)
if cost > 100: cost -= 100       # exactly once, not remainder100
if hand == 1 and cost == 0: cost = 1
allowed = (DS:d5a4 != 0) or (remaining >= cost)
```

The compare is signed and permits **equal** remaining allowance. The manual's
"more than speed" wording does not override `jge` here. Hand2 can enter a
special miss/failure continuation if not allowed and previous miss flagd55a=1;
otherwise disallowed/nonpositive cost or targetHP<=0 skips that hand.

For an allowed hand:

1. Calculate class/weapon matchup bonuses, discussed below.
2. Load defender roll source `E=A(target)+14`, protection `P=T(target_class)+8`.
3. Set hit threshold `H=A(current_actor)+12 - DS:d5c2 + hit_bonus`.
   This deliberately reads global current actor, not necessarily attacker during
   exceptional/counterattack paths. Preserve that exact context dependency.
4. Let `encoded=T(attacker_class)+2`, `q=encoded/100`, signed truncation toward0.
   Consume original RNG scaled to bound `q+1`; raw damage is
   `R(q+1) + encoded - q*100 + damage_bonus` (4de21..4de6b).
5. Target status A+22>0 overwrites raw damage with targetHP+P **after** consuming
   that random draw.
6. For hand2 with party attacker index>24, invoke6828 and consume another
   damage draw using its encoded parameter/base. The first damage draw above
   remains consumed; it is not removed just because its value is overwritten.
   6828 also overwrites H with its own hit threshold, so the earlier normal H
   matchup/penalty expression is not blindly reapplied afterward.
7. Unless d5a4 override is active, remaining=max(0,remaining-cost), before the
   hit roll (4dee7..4df00). A miss still costs allowance.
8. Consume hit roll `r=R(E+5)`; target status A+22>0 then overwrites r with0,
   still consuming the RNG draw (4df03..4df56).
9. Hit iff signed `r<=H` (4df56..4df5f). On hit,
   damage=max(0,raw_damage-P) and targetHP-=damage. Successful zero damage uses
   message/action4, distinct from miss5; positive damage uses3.

`R(n)` denotes the original RNG1779 plus runtime signed multiply/division
helpers1242/12df with bound n, as explicit in instructions. Use the existing
verified original RNG scaling and wrapping semantics; this report has not run
new random differentials or proved exceptional nonpositive-bound behavior.
All WORD additions/subtractions/multiplications wrap16 bits. Signed `cwd/idiv`
is not host floor division for negative numbers, and min/max comparisons must
use the original signed domain after wrapping.

## Party weapon parameter helper6828

Let B=DS99a6+92*p for selected party p=DS2898, and `u16`/`i16` reads be original
WORD reads interpreted as required by the following signed operations.
Select ref=B3e for hand2, otherwise B3c. Resolve raw=WORD[B+2*ref], id=raw%100;
id43 maps to26 for this helper. If raw==0 use encoded200, otherwise read weapon
table DS0e79+14*id. This tests raw==0 after dereferencing; do not replace it
with `ref==0` and silently change a record0 edge case.

```
base = encoded%100 + max(0, signed(B10)/100) + raw/100
if (WORD[B+2*WORD[B3c]] % 100) == signed(B2c): base += 1
H = signed(B14)/300 + base
if signed(B2a)>500: H=max(0,H-2)
if effect(p+24,10): H+=1
if effect(p+24,20): H=max(0,H-2)
H=max(0,H-signed(B2a)/300)
if effect(p+24,21): H=0
```

B10 is previously mapped Vuruş Gücü, B14 Çeviklik. B2a is deliberately kept
unnamed here; trace its initializer/display/depletion before declaring fatigue.
B2c is a primary-weapon specialization comparison. The comparison always
dereferences **primary** ref even when calculating hand2. Existing helper call
20e0 at4bd30 tests effect IDs; those numeric values are not inferred names.

For stone2 the weapon encoded parameter is201; this helper's base can include
character, raw-item and specialist terms. Thus201 is not201 damage. Table+10
stone speed2 is independently cached; runtime comparison remains required.

## Matchup, miss/counterattack and termination limits

The bonus branch4dcb8..4ddd3 requires attacker class1..4 and target class>4.
It compares WORDs at party offsets3c/3e **directly** with0 and26 before indexing
weapon table+6. Since real inventory refs are35..44, this branch may skip the
weapon bonus for normal equipped party items. Do not repair it into an item-ID
lookup without original runtime evidence. Other comparisons use the party
36-byte auxiliary records and enemy-group descriptors: match adds damage3/hit2;
another match subtracts damage2/hit1. Full race/class labels remain unresolved.

Miss branches4e1f6..4e25d can exhaust remaining allowance and set missd55a.
Under additional conditions (margin>5, d568clear, d5b4clear, d5b2==1,
d5c2clear), setd568 for counterattack. Main host swaps attacker/target, sets
d5a4 override, invokes3f5b, then clears override. Do not invent guaranteed
retaliation or charge normal actor allowance in that override route.

Positive damage marks target A+24 and queries effects15/19; optional effect
dispatch and item25 special branches can consume additional RNG and alter
state. They are explicit unresolved dependencies for a general physical engine,
even if controlled first-encounter tests show no such effects.

HP<=0 triggers action2 and removes the actor's occupied cell through0c27.
It does not by itself prove permanent death: the manual's below−5 distinction
needs the exploration/death consumers. The attack ends by scanning all28 actor
HPs; live side1/side2 set DS2634/2636. If either absent it sets632e=1. Scheduler
1b6d performs a related scan and returnsffff: absent side2→632e1, else632e2.
Main common exit does not fabricate rewards; it cleans battle state then calls
8111. Caller interpretation and world encounter flags must be traced separately.

## Persistent party results —8111

The exact four-party writeback is now understood without requiring cleanup0000
to perform any HP copy. Party actor is `i=24+p`; therefore
`A(i)=DS:a44a+40*p`, matching8111's apparently separate40-byte source table.

|Party numeric byte offset|Source|
|---|---|
|0c|T(p)+00, base/max HP|
|0a|T(p)+10, base/max Damak|
|16|T(p)+12, retained attribute|
|2e,30,32,34,36|A(24+p)+16,18,1a,1c,1e|
|38|A(24+p)+02, current Damak|
|3a|A(24+p)+00, current HP, including nonpositive values|
|44|A(24+p)+20, effect/dispatch field|

Equipment refs and raw inventory are already mutated directly in the live party
records, so8111 does not copy or rebuild them. Award helperaa60 likewise writes
party offset08 directly and invokesaaae. Permanent-death handling, full growth
formulas, transient effect persistence and caller save serialization are still
separate work; copying only currentHP would omit original persistent writes.

## Next bounded verification

1. Original DOS entry and one no-effect party bare-hand attack: capture actor/
   class tables, remaining allowance, RNG before/after and each damage/hit draw.
2. Acquire stone normally, equip through original input, repeat same capture;
   include equal-allowance attack boundary, miss and hit-zero-damage cases.
3. Capture one enemy attack through AI; verify exact current-actor dependency,
   damage, hit inequality and action depletion.
4. Win once and lose once in runtime copies; compare all368 numeric bytes,
   encounter flags, RNG and resumed world controls. Establish caller result and
   original defeat/death behavior before acknowledging native encounter8.

This is a source-backed implementation model for ordinary physical attacks and
party writeback, with identified dependencies. It is not Phase1 fully complete,
DOS-verified combat, a native playable battle, or desktop acceptance.
