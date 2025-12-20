#!/usr/bin/env bash
set -euo pipefail

CANON_HEADER="> STATUS: CANONICAL — IMMUTABLE  
> VERSION: v1.6 (Post-Disaster Recovery)  
> CHANGES REQUIRE NEW VERSION
"

CORE_DIR="core"

FILES=(
  "architecture.md"
  "contexts.md"
  "modes.md"
  "data-flow.md"
  "tenancy.md"
)

echo "== Elyon-Sol: Creating canonical core files =="

mkdir -p "$CORE_DIR"

for file in "${FILES[@]}"; do
  path="$CORE_DIR/$file"

  if [[ -f "$path" ]]; then
    echo "SKIP (exists): $path"
  else
    echo "CREATE: $path"
    {
      echo "$CANON_HEADER"
      echo
      echo "# $(echo "$file" | sed 's/-/ /g; s/.md//g' | awk '{ for(i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) substr($i,2) }1')"
      echo
      echo "_This document is part of the Elyon-Sol v1.6 canonical core._"
    } > "$path"
  fi
done

echo "Done."
