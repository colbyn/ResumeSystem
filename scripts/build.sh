#!/usr/bin/env bash
set -euo pipefail

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
out_dir="$root_dir/output"
src="$root_dir/source/main.tex"

mkdir -p "$out_dir"

tectonic \
  --outdir "$out_dir" \
  --synctex \
  "$src"
