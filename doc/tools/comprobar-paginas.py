#!/usr/bin/env python3
"""Comprueba los enlaces «Practicas-pdf/<fichero>.pdf#page=N][etiqueta]]» de las
lecciones y prácticas contra los PDF compilados en org-pract/: la página N debe
contener «Actividad K» (etiqueta «actividad K»), «Preguntas» (etiqueta con
«pregunta») o «Figura» (etiqueta con «figura»). Imprime los que fallan con la
página real cuando la encuentra.

Segundo patrón (2026-10-04): los enlaces «Lecciones-pdf/Apendice-geometria.pdf#page=N][etiqueta]]»
al apéndice de geometría. La página N (leída con «pdftotext -layout», para que el
número y el título de la sección queden en la misma línea) debe contener una línea
que empiece por el número de la primera sección de la etiqueta: «apéndice, sección
7.2» → «7.2»; «apéndice (secciones 8» → «8»; una etiqueta que es solo un número
(«6.5») → ese número; «Resultado k» → la sección que le corresponde (1 → 7.1,
2 → 7.2, 2 bis → 7.3, 3 → 8). Los enlaces al apéndice sin «#page=» no se comprueban.

Uso:  python3 doc/tools/comprobar-paginas.py [ficheros .org ...]
      (sin argumentos: todas las lecciones y prácticas)
Requiere pdftotext (poppler). Ejecutar tras recompilar las prácticas, porque
cualquier cambio que alargue una práctica mueve sus páginas.
"""
import glob, re, subprocess, sys

files = sys.argv[1:] or sorted(glob.glob('org-lessons/S*-Lecc*.org') + glob.glob('org-pract/S*-Prct-*.org'))
pat = re.compile(r'Practicas-pdf/([\w-]+)\.pdf#page=(\d+)\]\[([^\]]+)\]')
pat_ap = re.compile(r'Lecciones-pdf/Apendice-geometria\.pdf#page=(\d+)\]\[([^\]]+)\]')
AP_PDF = 'org-lessons/Apendice-geometria.pdf'
RESULTADOS = {'1': '7.1', '2': '7.2', '2 bis': '7.3', '3': '8'}
cache = {}
cache_layout = {}

def page_layout(pdf, n):
    if (pdf, n) not in cache_layout:
        r = subprocess.run(['pdftotext', '-layout', '-f', str(n), '-l', str(n), pdf, '-'], capture_output=True, text=True)
        cache_layout[(pdf, n)] = r.stdout
    return cache_layout[(pdf, n)]

def n_pages(pdf):
    r = subprocess.run(['pdfinfo', pdf], capture_output=True, text=True)
    m = re.search(r'Pages:\s+(\d+)', r.stdout)
    return int(m.group(1)) if m else 0

def seccion(label):
    """Número de la primera sección citada en la etiqueta."""
    m = re.search(r'secci[oó]n(?:es)?\s+(\d+(?:\.\d+)?)', label)
    if m:
        return m.group(1)
    m = re.search(r'Resultados?\s+(\d+(?: bis)?)', label)
    if m:
        return RESULTADOS.get(m.group(1))
    m = re.fullmatch(r'\s*(\d+(?:\.\d+)?)\s*', label)
    return m.group(1) if m else None

def tiene_seccion(num, txt):
    return re.search(r'^\s*' + re.escape(num) + r'\s+[^\d\s.]', txt, re.M) is not None

def page(pdf, n):
    if (pdf, n) not in cache:
        r = subprocess.run(['pdftotext', '-f', str(n), '-l', str(n), pdf, '-'], capture_output=True, text=True)
        cache[(pdf, n)] = r.stdout
    return cache[(pdf, n)]

def matches(label, txt):
    if 'figura' in label.lower():   # antes que «actividad»: «figura de la actividad 1» es una figura
        return re.search(r'\bFigura \d', txt) is not None
    m = re.search(r'actividad (\d+)', label, re.I)
    if m:
        return re.search(r'^Actividad ' + m.group(1) + r'\b', txt, re.M) is not None
    m = re.search(r'pregunta (\d+)', label, re.I)
    if m:
        return re.search(r'^' + m.group(1) + r'\.\s', txt, re.M) is not None
    if 'pregunta' in label.lower():
        return re.search(r'^Preguntas', txt, re.M) is not None
    return True

bad = 0
for f in files:
    for i, line in enumerate(open(f, encoding='utf-8'), 1):
        for m in pat.finditer(line):
            name, n, label = m.group(1), int(m.group(2)), m.group(3)
            pdf = f'org-pract/{name}.pdf'
            try:
                txt = page(pdf, n)
            except FileNotFoundError:
                print(f'{f}:{i}  {name}: PDF no encontrado'); bad += 1; continue
            if not matches(label, txt):
                real = next((p for p in range(1, 30) if matches(label, page(pdf, p))), None)
                print(f'{f}:{i}  {name} «{label}» page={n} -> real={real}')
                bad += 1
        for m in pat_ap.finditer(line):
            n, label = int(m.group(1)), m.group(2)
            num = seccion(label)
            if num is None:
                print(f'{f}:{i}  apéndice «{label}»: no se reconoce la sección'); bad += 1; continue
            try:
                ok = tiene_seccion(num, page_layout(AP_PDF, n))
            except FileNotFoundError:
                print(f'{f}:{i}  apéndice: PDF no encontrado'); bad += 1; continue
            if not ok:
                # el índice ocupa las primeras páginas: se busca a partir de la 3
                real = next((p for p in range(3, n_pages(AP_PDF) + 1) if tiene_seccion(num, page_layout(AP_PDF, p))), None)
                print(f'{f}:{i}  apéndice «{label}» (sección {num}) page={n} -> real={real}')
                bad += 1
print('todos los #page= correctos' if bad == 0 else f'{bad} enlaces por corregir')
