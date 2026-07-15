#!/usr/bin/env bash
set -euo pipefail

make all index

mkdir -p _ghpages/{Transparencias,Lecciones-html,Lecciones-pdf,Practicas-html/guiones,Practicas-pdf,CuadernosElectronicos}

# --- org-lessons ---
find org-lessons -maxdepth 1 -name '*.slides.html' -exec cp {} _ghpages/Transparencias/ \;
find org-lessons -maxdepth 1 -name '*.html' ! -name '*.slides.html' -exec cp {} _ghpages/Lecciones-html/ \;
find org-lessons -maxdepth 1 -name '*.pdf'  -exec cp {} _ghpages/Lecciones-pdf/ \;
find org-lessons -maxdepth 1 -name '*.ipynb' -exec cp {} _ghpages/CuadernosElectronicos/ \;

# --- org-pract ---
find org-pract -maxdepth 1 -name '*.html' -exec cp {} _ghpages/Practicas-html/ \;
find org-pract -maxdepth 1 -name '*.pdf'  -exec cp {} _ghpages/Practicas-pdf/ \;
find org-pract/guiones -maxdepth 1 -name '*.inp' -exec cp {} _ghpages/Practicas-html/guiones/ \; 2>/dev/null || true

# --- CuadernosElectronicos ---
find CuadernosElectronicos -maxdepth 1 -name '*.ipynb' -exec cp {} _ghpages/CuadernosElectronicos/ \;

# --- portada y binder ---
cp requirements.txt _ghpages/
[ -f index.html ] && cp index.html _ghpages/ || echo "Aviso: no se encontró index.html"

cd _ghpages
git add -A
git commit -m "Actualiza material generado ($(date -I))"
git push origin gh-pages
