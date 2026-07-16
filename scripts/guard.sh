#!/usr/bin/env bash
# guard.sh — prevent any proprietary source from entering the PUBLIC repo.
# Run as a pre-commit hook and in CI. Fails if a forbidden path/pattern is staged.
#
# Forbidden (would leak agent logic):
#   - anything under crates/
#   - anything under agents/ (the *.toml manifests)
#   - any *.toml that looks like an agent manifest (has slug = "...")
#   - the core system_prompt source files
set -euo pipefail

echo "[guard] checking staged files for proprietary source leaks..."

leak=0
while IFS= read -r f; do
  [ -z "$f" ] && continue
  # forbidden directory trees
  case "$f" in
    crates/*|agents/*|*/crates/*|*/agents/*)
      echo "  LEAK: forbidden path -> $f"; leak=1; continue;;
  esac
  # any .toml containing an agent-manifest signature
  if [[ "$f" == *.toml ]]; then
    if git show ":${f}" 2>/dev/null | grep -Eq '^(slug|system_prompt|lane)\s*=' ; then
      echo "  LEAK: manifest-like TOML -> $f"; leak=1; continue
    fi
  fi
  # core prompt source
  case "$f" in
    *lauras-agents-core/src/lib.rs|*lauras-agents-metacog/*|*lauras-agents-registry/src/lib.rs)
      echo "  LEAK: engine/prompt source -> $f"; leak=1; continue;;
  esac
done < <(git diff --cached --name-only --diff-filter=ACM)

if [ "$leak" -ne 0 ]; then
  echo "[guard] ABORT: proprietary source would be committed to the PUBLIC repo."
  echo "[guard] Remove the flagged files (they belong in the private repo only)."
  exit 1
fi
echo "[guard] OK: no proprietary source staged."
