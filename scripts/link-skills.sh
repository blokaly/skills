#!/usr/bin/env bash
set -euo pipefail

# Links all active skills in the repository to ~/.agents/skills.
# Only links from engineering/ and anything-else/ buckets.
# Skips work-in-progress/ and archived/.
#
# Override destination with: AGENTS_HOME=/custom/path ./scripts/link-skills.sh

REPO="$(cd "$(dirname "$0")/.." && pwd)"
DEST="${AGENTS_HOME:-$HOME/.agents}/skills"

# Prevent symlink loop: if DEST is a symlink into this repo, bail out.
if [ -L "$DEST" ]; then
  resolved="$(readlink -f "$DEST")"
  case "$resolved" in
    "$REPO"|"$REPO"/*)
      echo "error: $DEST is a symlink into this repo ($resolved)." >&2
      echo "Remove it (rm \"$DEST\") and re-run." >&2
      exit 1
      ;;
  esac
fi

mkdir -p "$DEST"

ACTIVE_BUCKETS=("engineering" "anything-else")

for bucket in "${ACTIVE_BUCKETS[@]}"; do
  bucket_path="$REPO/skills/$bucket"
  if [ ! -d "$bucket_path" ]; then
    continue
  fi

  find "$bucket_path" -name SKILL.md -not -path '*/node_modules/*' -print0 |
  while IFS= read -r -d '' skill_md; do
    src="$(dirname "$skill_md")"
    name="$(basename "$src")"
    target="$DEST/$name"

    if [ -e "$target" ] && [ ! -L "$target" ]; then
      rm -rf "$target"
    fi

    ln -sfn "$src" "$target"
    echo "linked $name -> $src"
  done
done
