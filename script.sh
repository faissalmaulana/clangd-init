#!/usr/bin/env bash

set -euo pipefail

FILE=".clangd"

echo "Initializing clangd project..."

if [[ -e "$FILE" ]]; then
    echo "Error: $FILE already exists."
    exit 1
fi

cat > "$FILE" <<'EOF'
# yaml-language-server: $schema=https://json.schemastore.org/clangd.json
CompileFlags:
  Add: [-xc]
EOF

echo "Created $FILE"
echo "Done."
