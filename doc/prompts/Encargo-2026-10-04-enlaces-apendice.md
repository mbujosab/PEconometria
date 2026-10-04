# Encargo: hiperenlaces de las lecciones y prácticas al apéndice de geometría

Repositorio: este mismo (`PEconometria`). Contexto: el 4-10-2026 se trasladó el apéndice «Estructura geométrica de la probabilidad y de la inferencia en el modelo de regresión» a `org-lessons/Apendice-geometria.org` (se compila como una lección: PDF y HTML, sin transparencias; entrada en `index.org`, Tema III), y se revisaron las lecciones 9, 11, 12, 13 y 14 y nueve prácticas para que remitan a él. Esas remisiones son hoy **texto** («apéndice, sección 7.2», «apéndice (secciones 8 y 9)», «apéndice, Resultado 3»…). La tarea es convertirlas en **hiperenlaces dobles pdf+html**, como hace el curso con las citas a prácticas (regla §5.1 del Plan), y ampliar el comprobador de páginas para que las vigile. Es una tarea mecánica: no cambies ninguna palabra fuera de lo que aquí se indica, y nada de matemáticas. Ninguna sesión paralela edita ahora estos ficheros.

## 1. Anclas en el apéndice

En `org-lessons/Apendice-geometria.org`, añade a cada encabezado de nivel 1 y 2 un bloque de propiedades con `CUSTOM_ID`, con el esquema `sec-N` y `sec-N-M` (números de la sección tal como los numera la exportación: 1, 1.1, …, 13). Ejemplo:

```
* El espacio de las variables aleatorias
:PROPERTIES:
:CUSTOM_ID: sec-1
:END:

** Funciones sobre $\Omega$
:PROPERTIES:
:CUSTOM_ID: sec-1-1
:END:
```

Son 37 encabezados (13 de nivel 1 y 24 de nivel 2); la lista con su número está más abajo. Compruébalo en el HTML exportado: `grep -c 'id="sec-' org-lessons/Apendice-geometria.html` debe dar 37. Ningún `CUSTOM_ID` puede coincidir con un `#+NAME` del fichero (los únicos `#+NAME` son los `fig:…` de las figuras).

## 2. Páginas del PDF

Tras añadir las anclas, recompila el apéndice (`timeout 900 make org-lessons/Apendice-geometria.pdf org-lessons/Apendice-geometria.html < /dev/null`) y obtén la página en que empieza cada sección con `pdftotext -layout` página a página (el encabezado de la sección aparece como línea que empieza por su número). A 4-10-2026, con 30 páginas, eran estas; verifícalas, porque son las que van en los enlaces:

| sección | pág. | sección | pág. | sección | pág. |
|---|---|---|---|---|---|
| 1 | 3 | 4.3 | 11 | 6.6 | 20 |
| 1.1 | 3 | 5 | 12 | 7 | 20 |
| 1.2 | 4 | 5.1 | 12 | 7.1 | 20 |
| 1.3 | 4 | 5.2 | 12 | 7.2 | 21 |
| 1.4 | 5 | 5.3 | 13 | 7.3 | 22 |
| 1.5 | 6 | 5.4 | 13 | 8 | 23 |
| 2 | 7 | 5.5 | 15 | 9 | 24 |
| 2.1 | 7 | 6 | 16 | 10 | 25 |
| 2.2 | 9 | 6.1 | 16 | 11 | 27 |
| 3 | 9 | 6.2 | 17 | 12 | 28 |
| 4 | 10 | 6.3 | 17 | 13 | 30 |
| 4.1 | 10 | 6.4 | 18 | | |
| 4.2 | 11 | 6.5 | 19 | | |

Los «Resultados» citados por nombre están en: Resultado 1 → sección 7.1; Resultado 2 → 7.2; Resultado 2 bis (Gauss–Markov) → 7.3; Resultado 3 → 8.

## 3. Forma de los enlaces

Patrón del curso (el de las citas a prácticas, con pdf primero y html entre paréntesis):

```
[[https://mbujosab.github.io/PEconometria/Lecciones-pdf/Apendice-geometria.pdf#page=21][apéndice, sección 7.2]] ([[https://mbujosab.github.io/PEconometria/Lecciones-html/Apendice-geometria.html#sec-7-2][html]])
```

Reglas:

1. La etiqueta del enlace pdf es el texto que ya hay, sin cambiarlo: «apéndice, sección 7.2», «apéndice (sección 9)», «apéndice (sección 7, Resultados 1 y 2)», «apéndice, Resultado 3», etc. El enlace pdf apunta a la página de la **primera** sección mencionada (para «Resultado k», a la sección que le corresponde); el enlace html, al ancla de esa misma sección. Si el texto menciona dos secciones («secciones 8 y 9», «secciones 5.4, 6.5 y 7.1»), además de lo anterior cada número posterior lleva su propio enlace pdf a su página (sin html), para que ningún número quede sin destino.
2. Donde el texto diga solo «el apéndice» sin número (por ejemplo «el apéndice separa las dos cosas en dos resultados» en S16-C, o «lo explica el apéndice … (secciones 2 y 3)» en L9), enlaza el nombre al PDF (sin `#page=`) y al html, y los números a sus páginas como en la regla 1.
3. En la lección 11, el apartado «Apéndice: lanzar una moneda infinitas veces» (ancla `apendice-copias`) cita el título completo del apéndice y las secciones 1.5, 2 y 3: título → pdf+html sin página; cada número → su página.
4. En las prácticas, la frase «apéndice, sección N» dentro de una nota al pie o de una respuesta se enlaza igual.
5. No toques las menciones que están dentro de las transparencias (`#+attr_ipynb` con `slide_type` distinto de `skip`): a 4-10-2026 no hay ninguna; si encuentras alguna, anótala y déjala como texto.
6. No cambies nada más. Si ves una remisión con un número de sección que no existe o que no corresponde al contenido citado, no la corrijas: anótala en el informe.

## 4. Dónde están (a 4-10-2026)

Menciones de «apéndice» por fichero (incluye alguna que no es remisión, como «apéndice B.1» de Wooldridge o el apartado `apendice-copias`; distingue):

- `org-lessons/S12-Lecc09.org`: 5
- `org-lessons/S15-Lecc11.org`: 12
- `org-lessons/S17-Lecc12.org`: 13
- `org-lessons/S19-Lecc13.org`: 16
- `org-lessons/S20-Lecc14.org`: 3 (una es el enlace a `S15-Lecc11.html#apendice-copias`, que se queda)
- `org-pract/S14-Prct-D-simulados-matricial.org`: 5
- `org-pract/S16-Prct-A-montecarlo.org`: 4
- `org-pract/S16-Prct-B-condicionar.org`: 1
- `org-pract/S16-Prct-C-sorpresas.org`: 1
- `org-pract/S18-Prct-A-hprice2-inferencia.org`: 1
- `org-pract/S18-Prct-C-cobertura.org`: 4
- `org-pract/S21-Prct-C-distribucion-F.org`: 2
- `org-pract/S22-Prct-A-colinealidad-montecarlo.org`: 2
- `org-pract/S22-Prct-B-hprice2-vif.org`: 1

Localízalas con `grep -n "apéndice" <fichero>`.

## 5. El comprobador de páginas

`doc/tools/comprobar-paginas.py` comprueba hoy los enlaces `Practicas-pdf/<f>.pdf#page=N][etiqueta]]`. Amplíalo con un segundo patrón para `Lecciones-pdf/Apendice-geometria.pdf#page=N][etiqueta]]` y para los enlaces pdf sueltos a números de sección (etiqueta = el número): la página N debe contener una línea que empiece por el número de la primera sección que aparezca en la etiqueta (`sección 7.2` → línea que empieza por `7.2`; `Resultado 3` → sección 8, usa la tabla de correspondencia; etiqueta que es solo un número → ese número). Usa `pdftotext -layout` para esa comprobación, porque sin `-layout` el número y el título pueden salir en líneas distintas. Mantén el formato de salida («todos los #page= correctos» o la lista de los que fallan con la página real). Documenta el patrón nuevo en la cabecera del guion.

## 6. Comprobaciones finales

1. Recompila todo lo tocado: `timeout 900 make org-lessons/<L>.pdf org-lessons/<L>.html < /dev/null` para las cinco lecciones (no hace falta regenerar transparencias: nada cambia en ellas) y `timeout 1500 make org-pract/<P>.pdf org-pract/<P>.html < /dev/null` para las nueve prácticas (`timeout 1800` en S16-A/B/C, S18-C, S21-C, S22-A).
2. `python3 doc/tools/comprobar-paginas.py` sobre todo: debe decir «todos los #page= correctos». Si una práctica se alarga por los enlaces y mueve una página citada desde otro sitio, corrige ese `#page=` (es lo que el guion señala).
3. En cada HTML tocado, `grep -c "Apendice-geometria.html#sec-"` debe coincidir con el número de remisiones del fichero, y `grep -c '<<'` debe seguir siendo 0 en las prácticas.
4. No hagas commits ni `git add`. Termina con un informe corto: ficheros tocados, número de enlaces por fichero, cualquier remisión dudosa (regla 6 del punto 3) y cualquier página movida.
