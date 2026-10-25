#!/usr/bin/env python3
"""Extrae el texto de ficheros .pptx sin dependencias externas (2026-10-25).

Para cada fichero abre el zip, recorre ppt/slides/slideN.xml en orden numérico y
extrae, en el orden del documento, el texto de los elementos a:t (texto) y m:t
(fórmulas OMML); un salto de línea por párrafo (a:p) y por fórmula de bloque.
Añade las notas de ppt/notesSlides/notesSlideN.xml bajo «Notas:». Cuenta por
diapositiva las imágenes (p:pic, sin contar las de mc:Fallback, que duplican una
fórmula) y los objetos OLE (p:oleObj; con progId Equation.* son fórmulas de
MathType o del editor de ecuaciones, cuyo texto no es extraíble), y marca «SOLO
IMAGEN» las que tienen imágenes u objetos OLE y menos de 20 caracteres de texto.
Añade bajo «SmartArt:» el texto de los diagramas (ppt/diagrams/dataN.xml) que
enlaza la diapositiva. Avisa si el orden de presentación (presentation.xml) no
es el numérico.

Escribe un .txt por fichero en doc/CursoEstadisticaPrevio/txt/ con separadores
«=== Diapositiva N ===» y, al final, el recuento: diapositivas, con texto, solo
con imagen y caracteres extraídos. Imprime el mismo recuento en la salida.

Uso:  python3 -I doc/tools/extraer-pptx.py doc/CursoEstadisticaPrevio/*.pptx
"""
import os, re, sys, zipfile
import xml.etree.ElementTree as ET

NS = {
    'a': 'http://schemas.openxmlformats.org/drawingml/2006/main',
    'p': 'http://schemas.openxmlformats.org/presentationml/2006/main',
    'm': 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    'mc': 'http://schemas.openxmlformats.org/markup-compatibility/2006',
    'r': 'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
}
A_T, A_P = '{%s}t' % NS['a'], '{%s}p' % NS['a']
M_T, M_OMATH = '{%s}t' % NS['m'], '{%s}oMath' % NS['m']
P_PIC, MC_FALLBACK = '{%s}pic' % NS['p'], '{%s}Fallback' % NS['mc']
P_OLE = '{%s}oleObj' % NS['p']
REL_DIAGRAMA = 'http://schemas.openxmlformats.org/officeDocument/2006/relationships/diagramData'
SALIDA = 'doc/CursoEstadisticaPrevio/txt'


def recorrer(el, trozos, cuenta, en_fallback=False):
    """Recorre el árbol en orden de documento; acumula texto y cuenta p:pic
    (cuenta[0]), fórmulas OLE (cuenta[1]) y otros objetos OLE (cuenta[2])."""
    if el.tag == MC_FALLBACK:
        en_fallback = True
    if el.tag == P_PIC and not en_fallback:
        cuenta[0] += 1
    if el.tag == P_OLE and not en_fallback:
        if (el.get('progId') or '').startswith('Equation'):
            cuenta[1] += 1
        else:
            cuenta[2] += 1
    if el.tag in (A_T, M_T) and el.text and not en_fallback:
        trozos.append(el.text)
    if el.tag == M_OMATH:
        trozos.append(' ')
    for hijo in el:
        recorrer(hijo, trozos, cuenta, en_fallback)
    if el.tag == A_P:
        trozos.append('\n')


def texto_de(z, nombre):
    trozos, cuenta = [], [0, 0, 0]
    recorrer(ET.fromstring(z.read(nombre)), trozos, cuenta)
    lineas = [re.sub(r'[ \t]+', ' ', l).strip() for l in ''.join(trozos).split('\n')]
    return '\n'.join(l for l in lineas if l), cuenta


def diagramas_de(z, n):
    """Texto de los SmartArt enlazados desde slideN.xml."""
    rels = 'ppt/slides/_rels/slide%d.xml.rels' % n
    if rels not in z.namelist():
        return ''
    textos = []
    for r in ET.fromstring(z.read(rels)):
        if r.get('Type') == REL_DIAGRAMA:
            destino = os.path.normpath(os.path.join('ppt/slides', r.get('Target')))
            if destino in z.namelist():
                textos.append(texto_de(z, destino)[0])
    return '\n'.join(t for t in textos if t)


def orden_presentacion(z):
    """Números de diapositiva en el orden de presentation.xml (None si falla)."""
    try:
        pres = ET.fromstring(z.read('ppt/presentation.xml'))
        rels = ET.fromstring(z.read('ppt/_rels/presentation.xml.rels'))
    except KeyError:
        return None
    destino = {r.get('Id'): r.get('Target') for r in rels}
    orden = []
    for s in pres.iter('{%s}sldId' % NS['p']):
        m = re.search(r'slide(\d+)\.xml$', destino.get(s.get('{%s}id' % NS['r']), ''))
        if m:
            orden.append(int(m.group(1)))
    return orden


def extraer(ruta):
    z = zipfile.ZipFile(ruta)
    nombres = set(z.namelist())
    nums = sorted(int(m.group(1)) for n in nombres
                  if (m := re.fullmatch(r'ppt/slides/slide(\d+)\.xml', n)))
    salida, con_texto, solo_imagen, caracteres = [], 0, [], 0
    con_formulas, total_formulas = [], 0
    for k, n in enumerate(nums, 1):
        texto, (pics, formulas, oles) = texto_de(z, 'ppt/slides/slide%d.xml' % n)
        smartart = diagramas_de(z, n)
        if smartart:
            texto = (texto + '\nSmartArt:\n' + smartart).strip()
        nchar = len(texto.replace('\n', '').replace(' ', ''))
        caracteres += len(texto)
        if nchar > 0:
            con_texto += 1
        if formulas:
            con_formulas.append(k)
            total_formulas += formulas
        partes = []
        if pics:
            partes.append('%d imagen(es)' % pics)
        if formulas:
            partes.append('%d fórmula(s) OLE' % formulas)
        if oles:
            partes.append('%d otro(s) objeto(s) OLE' % oles)
        marca = ''
        if (pics or formulas or oles) and nchar < 20:
            solo_imagen.append(k)
            marca = '  [SOLO IMAGEN: %s, %d caracteres]' % (', '.join(partes), nchar)
        elif partes:
            marca = '  [%s]' % ', '.join(partes)
        salida.append('=== Diapositiva %d ===%s' % (k, marca))
        salida.append(texto)
        notas = 'ppt/notesSlides/notesSlide%d.xml' % n
        if notas in nombres:
            tn, _ = texto_de(z, notas)
            # quita el número de diapositiva que suelen llevar las notas
            tn = '\n'.join(l for l in tn.split('\n') if not re.fullmatch(r'\d+', l))
            if tn:
                salida.append('Notas:\n' + tn)
                caracteres += len(tn)
        salida.append('')
    orden = orden_presentacion(z)
    aviso = ''
    if orden and orden != nums:
        aviso = 'AVISO: el orden de presentación no es el numérico: %s' % orden
    resumen = ('Recuento: %d diapositivas; %d con texto; %d solo con imagen %s; '
               '%d caracteres extraídos; %d fórmulas OLE no extraíbles en %d '
               'diapositivas %s' % (len(nums), con_texto, len(solo_imagen), solo_imagen,
                                    caracteres, total_formulas, len(con_formulas),
                                    con_formulas))
    os.makedirs(SALIDA, exist_ok=True)
    destino = os.path.join(SALIDA, os.path.splitext(os.path.basename(ruta))[0] + '.txt')
    with open(destino, 'w', encoding='utf-8') as f:
        f.write('\n'.join(salida + [resumen, aviso]).rstrip() + '\n')
    print('%s\n  %s%s' % (os.path.basename(ruta), resumen, ('\n  ' + aviso) if aviso else ''))


if __name__ == '__main__':
    for ruta in sys.argv[1:]:
        try:
            extraer(ruta)
        except (zipfile.BadZipFile, ET.ParseError, KeyError) as e:
            print('%s\n  ERROR: %s' % (os.path.basename(ruta), e))
