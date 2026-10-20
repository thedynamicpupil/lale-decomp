#!/usr/bin/env python3
"""Decode a bounded FLiB CMP member using the instruction-backed packet rules.

PNG is an inspection preview. Preserve raw indices and six-bit palette bytes.
Reject dimension discrepancies instead of cropping or inventing pixels.
"""
import argparse
import hashlib
import json
from pathlib import Path
import struct

def members(data):
    if data[:4] != b'FLiB' or len(data) < 12:
        raise ValueError('not a FLiB container')
    count, table = struct.unpack_from('<II', data, 4)
    if table + count * 65 != len(data):
        raise ValueError('directory bounds do not match file')
    result = {}
    cursor = 12
    for ordinal in range(count):
        row = data[table + ordinal * 65:table + (ordinal + 1) * 65]
        if row[:4] != b'FiLE':
            raise ValueError('invalid member magic')
        name = row[4:36].split(b'\0', 1)[0].decode('ascii')
        offset, size, second = struct.unpack_from('<III', row, 53)
        if offset != cursor + 65 or size != second or offset + size > table:
            raise ValueError('invalid member bounds')
        if data[cursor:offset] != row:
            raise ValueError('inline/directory records differ')
        if name.upper() in result:
            raise ValueError('ambiguous duplicate member name')
        result[name.upper()] = (offset, data[offset:offset + size])
        cursor = offset + size
    if cursor != table:
        raise ValueError('unexplained bytes before directory')
    return result

def decode(payload, budget=8 * 1024 * 1024):
    if len(payload) < 4:
        raise ValueError('CMP header truncated')
    width, height = struct.unpack_from('<HH', payload)
    expected = width * height
    if not expected or expected > budget:
        raise ValueError('invalid dimensions or decode budget exceeded')
    pixels = bytearray()
    cursor = 4
    while cursor < len(payload):
        control = payload[cursor]
        cursor += 1
        if control <= 128:
            if cursor + control > len(payload):
                raise ValueError('literal packet truncated')
            pixels.extend(payload[cursor:cursor + control])
            cursor += control
        else:
            if cursor == len(payload):
                raise ValueError('repeat packet truncated')
            pixels.extend(bytes([payload[cursor]]) * (control - 128))
            cursor += 1
        if len(pixels) > budget:
            raise ValueError('decode budget exceeded')
    if len(pixels) != expected:
        raise ValueError(f'dimension discrepancy: {len(pixels)} decoded indices, {expected} expected')
    return width, height, bytes(pixels)

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('container', type=Path)
    parser.add_argument('member')
    parser.add_argument('--palette', required=True)
    parser.add_argument('--output-dir', required=True, type=Path)
    args = parser.parse_args()
    data = args.container.read_bytes()
    index = members(data)
    offset, payload = index[args.member.upper()]
    palette_offset, palette = index[args.palette.upper()]
    width, height, pixels = decode(payload)
    if len(palette) % 3 or len(palette) > 768 or not palette or max(palette) > 63:
        raise ValueError('unsupported six-bit palette')
    if max(pixels) >= len(palette) // 3:
        raise ValueError('pixel index outside selected palette')
    args.output_dir.mkdir(parents=True, exist_ok=False)
    (args.output_dir / 'indices.bin').write_bytes(pixels)
    (args.output_dir / 'palette6.bin').write_bytes(palette)
    from PIL import Image
    im = Image.frombytes('P', (width, height), pixels)
    im.putpalette([(v << 2) | (v >> 4) for v in palette])
    im.save(args.output_dir / 'preview.png')
    metadata = dict(container=str(args.container), container_sha256=hashlib.sha256(data).hexdigest(),
                    member=args.member, member_offset=offset, member_sha256=hashlib.sha256(payload).hexdigest(),
                    palette=args.palette, palette_offset=palette_offset,
                    width=width, height=height, indices_sha256=hashlib.sha256(pixels).hexdigest(),
                    preview='RGB triplet interpretation, six-bit expansion (v<<2)|(v>>4). Palette association requires call-site verification.',
                    decoder_source='IST overlay 16b5 code 043b, original file 0x59d4b; REA ev_942d02e2ccc11b2c3ae591fbf0e7e44c898e27f5a3264b878ec791b53d019a54')
    (args.output_dir / 'provenance.json').write_text(json.dumps(metadata, indent=2)+'\n')
    print(json.dumps(metadata))

if __name__ == '__main__':
    main()
