#!/usr/bin/env bash

set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"

org="${1:?uso: compila_figuras.sh <fichero.org> (ejecutar dentro del subdirectorio de la lección)}"

echo
echo "========================================"
echo "Compilando $(basename "$(pwd)")"
echo "========================================"

emacs --batch \
    -l "$ROOT/build.el" \
    "$org"
