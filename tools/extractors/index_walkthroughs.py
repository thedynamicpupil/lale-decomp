#!/usr/bin/env python3
"""Read-only source video index with SHA-bound frame cache and contact sheets.

Coarse samples retain ffmpeg source presentation timestamps; labels are
recording positions, not claims of exact original game ticks. Targeted
frames use an accurate output seek and are cached separately. No audio decoded.
"""
import argparse
import hashlib
import json
import math
import re
from pathlib import Path
import subprocess
from PIL import Image, ImageDraw


def run(args):
    return subprocess.run(args, check=True, capture_output=True, text=True).stdout


def digest(path):
    h = hashlib.sha256()
    with path.open('rb') as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b''):
            h.update(block)
    return h.hexdigest()


def stamp(seconds):
    minutes, sec = divmod(seconds, 60)
    return f'{int(minutes):02d}:{sec:05.2f}'


def sheets(samples, folder, prefix, columns=4, rows=5):
    result = []
    for page, start in enumerate(range(0, len(samples), columns * rows)):
        selected = samples[start:start + columns * rows]
        canvas = Image.new('RGB', (384 * columns, 242 * math.ceil(len(selected) / columns)), '#181818')
        draw = ImageDraw.Draw(canvas)
        for i, sample in enumerate(selected):
            with Image.open(folder / sample['file']) as frame:
                frame.thumbnail((384, 216))
                x, y = i % columns * 384, i // columns * 242
                canvas.paste(frame, (x, y))
            draw.text((x + 5, y + 218), stamp(sample['seconds']), fill='white')
        name = f'{prefix}-{page + 1:02d}.jpg'
        canvas.save(folder / name, quality=90)
        result.append(name)
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--root', type=Path, default=Path(__file__).resolve().parents[2])
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--target', nargs=2, metavar=('VIDEO_NUMBER', 'SECONDS'), action='append', default=[])
    args = parser.parse_args()
    args.root = args.root.resolve()
    args.output = args.output.resolve()
    protected = [args.root / name for name in ('reference media', 'lale', 'DOSBox')]
    if any(args.output == path or path in args.output.parents for path in protected):
        raise ValueError('output must be outside protected source directories')
    args.output.mkdir(parents=True, exist_ok=True)
    entries = []
    for number in range(1, 6):
        matches = list((args.root / 'reference media').glob(f'{number} - *.mp4'))
        if len(matches) != 1:
            raise ValueError(f'expected one recording numbered {number}: {matches}')
        source = matches[0]
        folder = args.output / f'video-{number}'
        folder.mkdir(exist_ok=True)
        sha = digest(source)
        manifest = folder / 'index.json'
        if manifest.exists():
            entry = json.loads(manifest.read_text())
            if entry.get('format_version') != 2:
                raise ValueError('incompatible exploratory cache; use a new output directory')
            if entry['sha256'] != sha:
                raise ValueError(f'source changed: {source}; use a new output directory')
            for sample in entry['samples'] + entry.get('targeted', []):
                if not (folder / sample['file']).is_file():
                    raise ValueError('cache incomplete; use a new output directory')
        else:
            metadata = json.loads(run(['ffprobe', '-v', 'error', '-show_format', '-show_streams', '-of', 'json', str(source)]))
            (folder / 'ffprobe.json').write_text(json.dumps(metadata, indent=2))
            duration = float(metadata['format']['duration'])
            interval = 10 if number <= 2 else 20
            process = subprocess.run(['ffmpeg', '-hide_banner', '-loglevel', 'info', '-nostdin', '-i', str(source), '-an', '-vf', f"select='isnan(prev_selected_t)+gte(t-prev_selected_t,{interval})',scale=384:-2,showinfo", '-fps_mode', 'vfr', '-q:v', '3', str(folder / 'sample-%04d.jpg')], check=True, capture_output=True, text=True)
            (folder / 'sampling.log').write_text(process.stderr)
            times = [float(t) for t in re.findall(r'\bn:\s*\d+.*?pts_time:([0-9.]+)', process.stderr)]
            files = sorted(folder.glob('sample-*.jpg'))
            if len(times) != len(files):
                raise ValueError('source timestamp/frame count mismatch')
            samples = [{'seconds': t, 'file': p.name} for t, p in zip(times, files)]
            entry = {'format_version': 2, 'number': number, 'source': str(source.relative_to(args.root)), 'sha256': sha,
                     'duration_seconds': duration, 'interval_seconds': interval,
                     'timestamp_basis': 'decoded source frame presentation timestamp; not gameplay/input time',
                     'samples': samples, 'sheets': sheets(samples, folder, 'contact'), 'targeted': []}
        for requested_number, requested_time in args.target:
            if int(requested_number) != number:
                continue
            seconds = float(requested_time)
            if not 0 <= seconds < entry['duration_seconds']:
                raise ValueError(f'target outside video: {seconds}')
            name = f'target-{seconds:010.3f}.png'
            if not (folder / name).exists():
                run(['ffmpeg', '-hide_banner', '-loglevel', 'error', '-nostdin', '-ss', str(seconds), '-i', str(source), '-frames:v', '1', str(folder / name)])
            sample = {'seconds': seconds, 'file': name}
            if sample not in entry['targeted']:
                entry['targeted'].append(sample)
        manifest.write_text(json.dumps(entry, indent=2, ensure_ascii=False) + '\n')
        entries.append(entry)
        print(f"{number}: {entry['duration_seconds']:.2f}s; {len(entry['samples'])} cached coarse samples; {len(entry['targeted'])} targeted")
    (args.output / 'index.json').write_text(json.dumps(entries, indent=2, ensure_ascii=False) + '\n')
    lines = ['# Original walkthrough visual cache', '', 'Timestamps are recording positions. Coarse labels retain decoded source presentation timestamps; they do not establish engine cadence.', 'Source recordings remain read-only. Re-run the same command to reuse the SHA-bound cache.', '']
    for entry in entries:
        n = entry['number']
        lines += [f"## {n}. {entry['source']}", '', f"Duration: {entry['duration_seconds']:.2f}s. SHA256: `{entry['sha256']}`.", '']
        lines += [f'- [Contact sheet {i+1}](video-{n}/{p})' for i, p in enumerate(entry['sheets'])]
        lines += [f"- [{stamp(p['seconds'])} targeted frame](video-{n}/{p['file']})" for p in entry['targeted']]
        lines += ['']
    (args.output / 'INDEX.md').write_text('\n'.join(lines) + '\n')


if __name__ == '__main__':
    main()
