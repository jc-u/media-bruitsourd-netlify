#!/usr/bin/env bash
# Downloads large audio zips (excluded from Git) from a GitHub Release before the Astro build.
set -euo pipefail

REPO="jc-u/media-bruitsourd-netlify"
TAG="audio-assets-v1"
BASE_URL="https://github.com/${REPO}/releases/download/${TAG}"

declare -A ASSETS=(
  ["ann-bonny-mp3.zip"]="public/audio/ann-bonny/mp3.zip"
  ["ann-bonny-wav.zip"]="public/audio/ann-bonny/wav.zip"
  ["astero-mp3.zip"]="public/audio/37500-yens/astero/mp3.zip"
  ["astero-wav.zip"]="public/audio/37500-yens/astero/wav.zip"
)

for asset in "${!ASSETS[@]}"; do
  dest="${ASSETS[$asset]}"
  if [[ -s "$dest" ]]; then
    echo "Skipping ${dest} (already present)"
    continue
  fi
  mkdir -p "$(dirname "$dest")"
  echo "Downloading ${asset} -> ${dest}"
  curl -fL --retry 3 -o "$dest" "${BASE_URL}/${asset}"
done
