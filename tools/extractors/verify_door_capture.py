#!/usr/bin/env python3
"""Read-only door evidence comparison. Candidate images are NOT certified views.

Uses existing strict CMP parsing, original draw stacks and raw DOS bank reads.
Writes only a caller-selected NEW directory, never normalizes/crops CMP streams.
"""
import argparse
import hashlib
import json
import struct
from pathlib import Path

from decode_cmp import decode, members


def words(path):
    raw = path.read_bytes()
    return struct.unpack('<' + 'H' * (len(raw) // 2), raw)


def run(root, output):
    capture = root / 'analysis/phase-five/door-20261015/capture'
    bank = members((root / 'lale/3D.CKD').read_bytes())
    images = {s: decode(bank[n][1]) for s, n in [
        (25, 'DUVAR2.CMP'), (30, 'KAPI3.CMP'), (34, 'KAPIAN3.CMP'),
        (39, 'YER5.CMP'), (47, 'YER2.CMP'), (49, 'YER5.CMP'),
        (57, 'TAV2A.CMP'), (61, 'TAV2A.CMP'), (79, 'UFUK1.CMP'),
    ]}

    def draw(target, a, scaled=False):
        sx, sy, sw, sh, dx, dy = a[:6]
        if scaled:
            dw, dh, slot, _, mirror = a[6:11]
        else:
            dw, dh, slot, mirror = sw, sh, a[6], a[8] == 0x3c4
        stride, height, pixels = images[slot & 255]
        assert sx + sw <= stride and sy + sh <= height
        for y in range(dh):
            for x in range(dw):
                tx, ty = dx + (dw - 1 - x if mirror else x), dy + y
                if tx >= 200 or ty >= 200:
                    continue
                # Candidate only: one contiguous core call, X fraction0.
                ix = sx + ((x * ((sw << 16) // dw)) >> 16)
                iy = sy + ((y * ((sh << 16) // dh)) >> 16)
                value = pixels[iy * stride + ix]
                if value != 254:
                    target[ty * 200 + tx] = value

    buffers = {65: bytearray([254]) * 40000, 66: bytearray([254]) * 40000}
    exe = (root / 'lale/IST.EXE').read_bytes()
    for i in range(1, 15):
        w = words(capture / f'CR2-{i:02}.BIN')
        scaled = (capture / f'CP2-{i:02}.BIN').read_bytes()[1] == 0x22
        at = 0x28430 + w[0]
        assert exe[at-5:at] == (bytes.fromhex('9a5a0c2800') if scaled else bytes.fromhex('9a30042800'))
        a = w[2:14]
        draw(buffers[a[9 if scaled else 7] & 255], a, scaled)
    for y in range(54, 173):
        buffers[65][y * 200 + 58:y * 200 + 144] = bytes([254]) * 86
    base = buffers[66].copy()
    for i, value in enumerate(buffers[65]):
        if value != 254:
            base[i] = value

    frames = []
    for stage, ordinal in enumerate([15, 21, 27, 34]):
        w = words(capture / f'BASE-{ordinal:02}.BIN')
        assert w[0] == 0x7eb6
        assert w[2:10] == (stage * 86, 0, 86, 119, 58, 54, 34, 65)
        out = base.copy()
        draw(out, w[2:14])
        # The omitted initial transient draw can affect only rows0..112;
        # every such byte has a later opaque resource pixel in each stage.
        assert 254 not in out[:200 * 113]
        frames.append(out)
    frame0 = (capture / 'FR0-PIX.BIN').read_bytes()
    assert frames[0] == frame0

    destination = bytearray([254]) * 40000
    for i in range(7):
        draw(destination, words(capture / f'DST-{i:02}.BIN')[2:14])
    actual_destination = (capture / 'R3-DEST-PIX.BIN').read_bytes()
    vga = (capture / 'R3-OPEN-VGA.BIN').read_bytes()
    aperture_errors = [(x, y, frames[3][y*200+x], vga[(y+1)*320+x-2])
                       for y in range(54, 173) for x in range(58, 144)
                       if frames[3][y*200+x] != vga[(y+1)*320+x-2]]
    destination_errors = [(i % 200, i // 200, a, b)
                          for i, (a, b) in enumerate(zip(destination, actual_destination)) if a != b]

    def state(name):
        ds = (capture / name).read_bytes()
        return {'x': struct.unpack_from('<H', ds, 0xb9f3)[0],
                'y': struct.unpack_from('<H', ds, 0xb9f1)[0],
                'facing': ds[0xb9f0], 'guard3b06': ds[0x3b06],
                'choice_bb9e': struct.unpack_from('<H', ds, 0xbb9e)[0],
                'veto_bba8': struct.unpack_from('<H', ds, 0xbba8)[0]}
    before, after = state('R3-PRECOMMIT.BIN'), state('R3-COMMITTED.BIN')
    assert (before['x'], before['y'], after['x'], after['y']) == (2, 1, 2, 0)
    for name in ['R3-DOOR-BIOS.BIN', 'R3-PRECOMMIT-BIOS.BIN', 'R3-COMMIT-BIOS.BIN']:
        b = (capture / name).read_bytes()
        assert b[:2] == b[2:4]
    assert words(capture / 'R3-UP-EV3-ST.BIN')[2:4] == (180, 3)
    assert words(capture / 'R3-UP-EV1-ST.BIN')[2:4] == (30, 1)
    rejected = state('R3-REJECTED.BIN')
    assert rejected['choice_bb9e'] == rejected['veto_bba8'] == 1
    assert (rejected['x'], rejected['y']) == (2, 1)

    output.mkdir(parents=True, exist_ok=False)
    report = {'classification': 'DOS evidence + UNWIRED rendering candidate; not native acceptance',
              'hayir': rejected, 'before_commit': before, 'after_commit': after,
              'keyboard_buffer_empty_at_helper_entry_and_exit': True,
              'candidate_frame0_matches_all_40000_bytes': True,
              'candidate_final_aperture_mismatches': len(aperture_errors),
              'candidate_final_aperture_first_errors': aperture_errors[:12],
              'candidate_destination_mismatches': len(destination_errors),
              'candidate_destination_first_errors': destination_errors[:12],
              'limits': ['Initial dialogue flag249 was explicitly set; creation/film skipped under debugger.',
                         'Core bank splitting/fraction and complete destination framebuffer lifetime unresolved.',
                         'Seven retained destination draws are not certified as a complete instrumentation trace.',
                         'No pixel patches or captured images used as native replacement assets.']}
    (output / 'comparison.json').write_text(json.dumps(report, indent=2) + '\n')
    for i, b in enumerate(frames + [destination]):
        (output / f'candidate-{i}.indices').write_bytes(b)
    palette = bank['PAL3D.PAL'][1]
    from PIL import Image
    for i, b in enumerate(frames + [destination]):
        im = Image.frombytes('P', (200, 200), bytes(b))
        im.putpalette([(v << 2) | (v >> 4) for v in palette])
        im.save(output / f'candidate-{i}.png')
    print(json.dumps({k: v for k, v in report.items() if 'errors' not in k and k != 'limits'}, indent=2))


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--root', type=Path, default=Path('.'))
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    run(args.root, args.output)
