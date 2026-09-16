#!/usr/bin/env bash
#
# Rebuilds the installable .zip for every skill in this repo.
#
#   ./build.sh          rebuild any zip whose contents no longer match its folder
#   ./build.sh --check   don't write anything; exit 1 if any zip is out of date
#
# A "skill" is any top-level directory containing a SKILL.md.
#
# "Out of date" means the files inside the zip differ from the files in the
# folder. It deliberately does NOT mean the zip bytes differ: macOS and Linux
# ship different `zip` builds that write different archive headers and walk
# directories in a different order, so two archives with identical contents
# are routinely not byte-identical. Comparing bytes would make every zip look
# stale the moment it was built on the other platform.

set -euo pipefail

cd "$(dirname "$0")"

CHECK_ONLY=false
[[ "${1:-}" == "--check" ]] && CHECK_ONLY=true

# Packed files get a fixed timestamp and a sorted order so that rebuilding on
# the same machine twice produces the same bytes, and git stays quiet.
FIXED_TIMESTAMP="202001010000"
JUNK=( -name '.DS_Store' -o -name '._*' )

stale=0
built=0

work="$(mktemp -d)"
trap 'rm -rf "$work"' EXIT

for skill_md in */SKILL.md; do
  skill="$(dirname "$skill_md")"
  zip_file="${skill}.zip"

  # A clean copy of the folder — what the zip is supposed to contain.
  src="$work/src"
  rm -rf "$src"
  mkdir -p "$src"
  cp -R "$skill" "$src/$skill"
  find "$src/$skill" \( "${JUNK[@]}" \) -delete

  # Compare against what the committed zip actually holds.
  if [[ -f "$zip_file" ]]; then
    packed="$work/packed"
    rm -rf "$packed"
    mkdir -p "$packed"
    if unzip -qo "$zip_file" -d "$packed" 2>/dev/null &&
       diff -r "$src/$skill" "$packed/$skill" >/dev/null 2>&1; then
      echo "  ok       $zip_file"
      continue
    fi
  fi

  if $CHECK_ONLY; then
    echo "  STALE    $zip_file  (run ./build.sh)"
    stale=$((stale + 1))
    continue
  fi

  find "$src/$skill" -exec touch -t "$FIXED_TIMESTAMP" {} +
  rm -f "$work/out.zip"
  (cd "$src" && find "$skill" -print0 | sort -z | xargs -0 zip -qX "$work/out.zip")
  mv "$work/out.zip" "$zip_file"
  echo "  rebuilt  $zip_file"
  built=$((built + 1))
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
