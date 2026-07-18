#!/usr/bin/env bash

set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"

find "$ROOT" -mindepth 1 -maxdepth 1 -type d | sort |
while read -r dir
do
    org=$(find "$dir" -maxdepth 1 -name '*.org')

    [ -z "$org" ] && continue

    echo
    echo "========================================"
    echo "Compilando $(basename "$dir")"
    echo "========================================"

    (
        cd "$dir"

        emacs --batch \
            -l "$ROOT/build.el" \
            "$(basename "$org")"
    )
done
