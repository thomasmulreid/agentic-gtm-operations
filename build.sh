#!/usr/bin/env bash
#
# Rebuilds the installable .zip for every skill in this repo.
#
#   ./build.sh          rebuild the zips
#   ./build.sh --check   don't write anything; exit 1 if any zip is out of date
#
# A "skill" is any top-level directory containing a SKILL.md.
# Zips are built with a fixed timestamp so that identical content always
# produces an identical file — rebuilding when nothing changed is a no-op,
# and git stays quiet.

set -euo pipefail

cd "$(dirname "$0")"

CHECK_ONLY=false
[[ "${1:-}" == "--check" ]] && CHECK_ONLY=true

FIXED_TIMESTAMP="202001010000"
stale=0
built=0

staging="$(mktemp -d)"
trap 'rm -rf "$staging"' EXIT

for skill_md in */SKILL.md; do
  skill="$(dirname "$skill_md")"
  zip_file="${skill}.zip"

  # Copy to staging, drop junk, and flatten timestamps for reproducibility.
  rm -rf "${staging:?}/${skill}"
  cp -R "$skill" "$staging/$skill"
  find "$staging/$skill" \( -name '.DS_Store' -o -name '._*' \) -delete
  find "$staging/$skill" -exec touch -t "$FIXED_TIMESTAMP" {} +

  (cd "$staging" && zip -rqX "${skill}.new.zip" "$skill")

  if [[ -f "$zip_file" ]] && cmp -s "$zip_file" "$staging/${skill}.new.zip"; then
    echo "  ok       $zip_file"
    continue
  fi

  if $CHECK_ONLY; then
    echo "  STALE    $zip_file  (run ./build.sh)"
    stale=$((stale + 1))
  else
    mv "$staging/${skill}.new.zip" "$zip_file"
    echo "  rebuilt  $zip_file"
    built=$((built + 1))
  fi
done

if $CHECK_ONLY; then
  if (( stale > 0 )); then
    echo
    echo "$stale zip(s) out of date. Run ./build.sh and commit the result."
    exit 1
  fi
  echo
  echo "All zips match their source folders."
else
  echo
  echo "Done. $built zip(s) rebuilt."
fi
