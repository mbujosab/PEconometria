#!/usr/bin/env python3
"""Comprueba los enlaces «Practicas-pdf/<fichero>.pdf#page=N][etiqueta]]» de las
lecciones y prácticas contra los PDF compilados en org-pract/: la página N debe
contener «Actividad K» (etiqueta «actividad K»), «Preguntas» (etiqueta con
«pregunta») o «Figura» (etiqueta con «figura»). Imprime los que fallan con la
página real cuando la encuentra.

Uso:  python3 doc/tools/comprobar-paginas.py [ficheros .org ...]
      (sin argumentos: todas las lecciones y prácticas)
Requiere pdftotext (poppler). Ejecutar tras recompilar las prácticas, porque
cualquier cambio que alargue una práctica mueve sus páginas.
"""
import glob, re, subprocess, sys

files = sys.argv[1:] or sorted(glob.glob('org-lessons/S*-Lecc*.org') + glob.glob('org-pract/S*-Prct-*.org'))
pat = re.compile(r'Practicas-pdf/([\w-]+)\.pdf#page=(\d+)\]\[([^\]]+)\]')
cache = {}

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
print('todos los #page= correctos' if bad == 0 else f'{bad} enlaces por corregir')
