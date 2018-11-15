#!/usr/bin/env bash
PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin
set -e
for f in "$@"; do
	ffmpeg -i "$f" -c:v libx264 -preset medium -crf 20 -c:a copy "${f%.*}_h264.mp4"
done
