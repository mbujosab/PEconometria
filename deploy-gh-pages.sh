#!/usr/bin/env bash
set -euo pipefail

# --- Ubicación fija: este script vive siempre en la raíz de "main" ---
REPO_ROOT=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
DEST="$REPO_ROOT/_ghpages"

cd "$REPO_ROOT"

# --- Salvaguardas ---
MAIN_BRANCH=$(git rev-parse --abbrev-ref HEAD)
if [ "$MAIN_BRANCH" = "gh-pages" ]; then
    echo "ERROR: estás en la rama 'gh-pages' en $REPO_ROOT. ¿Seguro que" >&2
    echo "       este es el checkout de 'main'? Abortando." >&2
    exit 1
fi

if [ ! -e "$DEST/.git" ]; then
    echo "ERROR: $DEST no existe o no es un worktree git válido." >&2
    echo "       Crea el worktree con:" >&2
    echo "       git worktree add _ghpages gh-pages" >&2
    exit 1
fi

WT_BRANCH=$(git -C "$DEST" rev-parse --abbrev-ref HEAD)
if [ "$WT_BRANCH" != "gh-pages" ]; then
    echo "ERROR: $DEST está en la rama '$WT_BRANCH', no 'gh-pages'. Abortando." >&2
    exit 1
fi

echo "Repo principal (main): $REPO_ROOT"
echo "Destino (gh-pages):    $DEST"
echo "-- OK, desplegando --"

# --- Limpieza confinada al worktree: SIN -x, nunca toca ignorados ---
git -C "$DEST" rm -rf --ignore-unmatch . >/dev/null
git -C "$DEST" clean -fd

mkdir -p "$DEST"/{Transparencias,Lecciones-html,Lecciones-pdf,Practicas-html/guiones,Practicas-pdf,CuadernosElectronicos}

find org-lessons -maxdepth 1 -name '*.slides.html'                  -exec cp {} "$DEST"/Transparencias/ \;
find org-lessons -maxdepth 1 -name '*.html' ! -name '*.slides.html' -exec cp {} "$DEST"/Lecciones-html/ \;
find org-lessons -maxdepth 1 -name '*.pdf'                          -exec cp {} "$DEST"/Lecciones-pdf/ \;

# Figuras: tanto el HTML como los slides referencian img/<subcarpeta>/*.png
# con ruta relativa a org-lessons/. Sin esto no se ve ninguna figura.
cp -r org-lessons/img "$DEST"/Lecciones-html/
cp -r org-lessons/img "$DEST"/Transparencias/

find org-pract -maxdepth 1 -name '*.html'        -exec cp {} "$DEST"/Practicas-html/ \;
find org-pract -maxdepth 1 -name '*.pdf'         -exec cp {} "$DEST"/Practicas-pdf/ \;
find org-pract/guiones -maxdepth 1 -name '*.inp' -exec cp {} "$DEST"/Practicas-html/guiones/ \;

# Salida de gretlcli por práctica (gráficos, estimaciones, etc.): una
# carpeta por cada .org de org-pract, mismo nombre sin extensión.
# "guiones" no es una de ellas (ya se copia aparte, arriba).
for d in org-pract/*/; do
    nombre=$(basename "$d")
    [ "$nombre" = "guiones" ] && continue
    cp -r "$d" "$DEST"/Practicas-html/
done

find CuadernosElectronicos -maxdepth 1 -name '*.ipynb' -exec cp {} "$DEST"/CuadernosElectronicos/ \;

cp index.html "$DEST"/
cp requirements.txt "$DEST"/
touch "$DEST"/.nojekyll

cd "$DEST"
git add -A
git commit -m "Actualiza material generado ($(date +%F))"
git push origin gh-pages
