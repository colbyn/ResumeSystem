#!/usr/bin/env bash
set -euo pipefail

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

watchexec \
  --restart \
  --clear \
  --project-origin "$root_dir" \
  --watch "$root_dir/source" \
  --ignore "$root_dir/output/**" \
  --exts tex,sty,cls,bib,bbl,bst \
  -- './scripts/build.sh && printf "\n== reloaded ==\n\n"'
