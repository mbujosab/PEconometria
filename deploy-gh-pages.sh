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

mkdir -p "$DEST"/{Transparencias,Lecciones-html,Lecciones-pdf,Practicas-html/guiones,Practicas-pdf,CuadernosElectronicos,img,css}

find org-lessons -maxdepth 1 -name '*.slides.html'                  -exec cp {} "$DEST"/Transparencias/ \;
find org-lessons -maxdepth 1 -name '*.html' ! -name '*.slides.html' -exec cp {} "$DEST"/Lecciones-html/ \;
find org-lessons -maxdepth 1 -name '*.pdf'                          -exec cp {} "$DEST"/Lecciones-pdf/ \;

# Logo: para insertar en la página web
cp -r img/Logo.jpg "$DEST"/img/

# Logo: para insertar en la página web
cp -r css/index.css "$DEST"/css/

# Figuras: tanto el HTML como los slides referencian img/<subcarpeta>/*.png
# con ruta relativa a org-lessons/. Sin esto no se ve ninguna figura.
#
# SOLO los PNG, que es lo unico que referencian. Copiar el arbol img/ entero
# publicaba ademas 532 ficheros de compilacion de LaTeX (.tex .log .fls
# .fdb_latexmk .aux), los Makefile, build.el, compila_figuras.sh y hasta los
# ~undo-tree~ de Emacs, duplicados en Lecciones-html/ y en Transparencias/:
# mas de mil URLs rastreables sin contenido frente a las 32 del sitemap.
for destino in "$DEST"/Lecciones-html "$DEST"/Transparencias; do
    ( cd org-lessons && find img -type f -name '*.png' \
          -exec cp --parents {} "$destino"/ \; )
done

find org-pract -maxdepth 1 -name '*.html'        -exec cp {} "$DEST"/Practicas-html/ \;
find org-pract -maxdepth 1 -name '*.pdf'         -exec cp {} "$DEST"/Practicas-pdf/ \;
find org-pract/guiones -maxdepth 1 -name '*.inp' -exec cp {} "$DEST"/Practicas-html/guiones/ \;

# Salida de gretlcli por práctica (gráficos, estimaciones, etc.): una
# carpeta por cada .org de org-pract, mismo nombre sin extensión.
# "guiones" no es una de ellas (ya se copia aparte, arriba).
for d in org-pract/*/; do
    nombre=$(basename "$d")
    # "guiones" ya se copia aparte, arriba. "CursoAntiguo" son los .org de la
    # edicion anterior de la asignatura: nada los enlaza y son contenido
    # duplicado y obsoleto. Para volver a publicarlos, quitelo de este case.
    case "$nombre" in
        guiones|CursoAntiguo) continue ;;
    esac
    cp -r "$d" "$DEST"/Practicas-html/
done

find CuadernosElectronicos -maxdepth 1 -name '*.ipynb' -exec cp {} "$DEST"/CuadernosElectronicos/ \;

# --- Índices navegables para las carpetas sin index.html propio ---
for carpeta in Transparencias Lecciones-html Lecciones-pdf \
               Practicas-html Practicas-pdf CuadernosElectronicos; do
    tree -H '.' --noreport --charset utf-8 \
         -T "$carpeta" -o "$DEST/$carpeta/index.html" \
         "$DEST/$carpeta"
    # Son listados de directorio, no contenido, y Google llega a ellos porque
    # el README del repositorio los enlaza. Que no entren en el indice, pero
    # que siga los enlaces hacia las lecciones y las practicas.
    sed -i '0,/<head>/s||<head>\n <meta name="robots" content="noindex,follow">|' \
        "$DEST/$carpeta/index.html"
done

cp index.html "$DEST"/
cp doc/google17677b077c5d0c0d.html "$DEST"/
cp requirements.txt "$DEST"/
cp robots.txt "$DEST"/
touch "$DEST"/.nojekyll

# --- sitemap.xml -----------------------------------------------------------
# Se genera aquí, al final, para que siempre refleje lo que de verdad se ha
# copiado (el worktree se vacía en cada despliegue, así que un sitemap.xml
# estático se perdería). Incluye la portada y las paginas HTML de lecciones y
# practicas; no incluye los PDF ni las transparencias, que son otra
# presentacion del mismo contenido y solo servirian para diluirlo.
BASE="https://mbujosab.github.io/PEconometria"

# Fecha del ultimo cambio real de una pagina: la del ultimo commit de su .org
# de origen y, si todavia no esta en git, su fecha de modificacion. Antes se
# estampaba $(date +%F) en las 32 URLs, con lo que cada despliegue declaraba
# que el curso entero habia cambiado hoy; un sitemap que miente asi se gana
# que Google deje de hacerle caso.
fecha_fuente() {
    local origen=$1
    local fecha=""
    if [ -e "$origen" ]; then
        if git -C "$REPO_ROOT" diff --quiet -- "$origen" 2>/dev/null; then
            # Limpio respecto a git: manda la fecha del ultimo commit.
            fecha=$(git -C "$REPO_ROOT" log -1 --format=%cs -- "$origen" 2>/dev/null || true)
        fi
        # Editado y sin commitear (o todavia sin seguimiento): su mtime.
        [ -n "$fecha" ] || fecha=$(date -r "$origen" +%F)
    fi
    [ -n "$fecha" ] || fecha=$(date +%F)
    printf '%s' "$fecha"
}
{
    echo '<?xml version="1.0" encoding="UTF-8"?>'
    echo '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">'
    printf '  <url><loc>%s/</loc><lastmod>%s</lastmod><changefreq>weekly</changefreq><priority>1.0</priority></url>\n' \
           "$BASE" "$(fecha_fuente index.org)"
    for par in Lecciones-html:org-lessons Practicas-html:org-pract; do
        carpeta=${par%%:*}
        fuente=${par##*:}
        find "$DEST/$carpeta" -maxdepth 1 -name '*.html' ! -name 'index.html' \
             | LC_ALL=C sort \
             | while read -r f; do
            nombre=$(basename "$f")
            printf '  <url><loc>%s/%s/%s</loc><lastmod>%s</lastmod><priority>0.8</priority></url>\n' \
                   "$BASE" "$carpeta" "$nombre" \
                   "$(fecha_fuente "$fuente/${nombre%.html}.org")"
        done
    done
    echo '</urlset>'
} > "$DEST"/sitemap.xml
echo "sitemap.xml: $(grep -c '<url>' "$DEST"/sitemap.xml) URLs"

cd "$DEST"
git add -A
git commit -m "Actualiza material generado ($(date +%F))"
git push origin gh-pages
