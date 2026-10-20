# Appearance portrait/body resources, 2026-10-14

Parent original-assembly tracing verifies helper `167c:011f` copies 13 bytes from DS:48ec (literal `s` followed by zero bytes), then concatenates the appearance name from DS:269b + 13×appearance. It loads prefixed CMP into slot 0x47, bare CMP into slot 0xb, and a KOR through the extension helper. Parent retains instruction/address evidence separately. The prefix construction explains why an ASCII scan of standalone complete names was insufficient.

Read-only archive matching finds all 16 corresponding prefixed members in IVIR.CKD and all 16 bare body CMP/KOR pairs in SAVAS.CKD. Every portrait header is **160×32**, consistent with five 32×32 portrait cells. Prefix families: INSAN1/2, IROSP1/2, LAVUK1/2, MAGA1/2, MEMUR1/2, OGREN1/2, OGRET1/2, SILI1/2. Exact source offsets, dimensions and KOR presence are in `appearance-members-addendum-20261014.json`. This establishes archive availability; matching the parent's entire 13-byte table still belongs to its retained table evidence.

New original-size cross-archive previews, using parent-confirmed party PALBAT.PAL binding, are in `extracted/phase-five/batch-appearance-callsite-20261014/`:

- IVIR SINSAN1.CMP at 1094408, **160×32**: visibly five face/portrait expressions on black. Complete 5120 indices decode exactly.
- SAVAS INSAN1.CMP at 124354, **149×39**: visibly several complete human body poses on magenta. Complete 5811 indices decode exactly.
- Palette SAVAS PALBAT.PAL at 207230, exact original palette preserved.

No frame crops, scene composites or inferred transparency were applied. Parent verifies rectangular callback `3599:02d0` copies opaquely without palette-index transparency; that applies to this rectangular callback, not necessarily body sprite rendering. Body sprite renderer, KOR rectangle interpretation and animation timing remain unresolved. The body IROSP1 member is among the +1 dimension anomalies and has not been cropped or accepted by strict decoding.
