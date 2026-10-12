# Encargo: cortar el Plan de escritura en dos ficheros (manual operativo ↔ fichas y semillas)

Fecha: 2026-10-12. Para una sesión de Claude (Opus) sobre el repositorio
`PEconometria`. Trabajo mecánico de mover texto; no se reescribe ninguna
frase salvo las remisiones que el corte obliga a rehacer. Antes de tocar
nada: `git log` y `git status` (otra sesión puede haber dejado cambios); si
existe `doc/prompts/.#PlanDeEscritura.org` (lock de Emacs), avisar y no
escribir hasta que desaparezca. Hacer el corte de una sola vez, en una sola
pasada, y no dejar el Plan a medias entre comprobaciones.

## Motivo y decisión

`doc/prompts/PlanDeEscritura.org` tiene 4882 líneas y 503 KB (unos 145 000
tokens). Los prompts `PreparacionLeccion.org`, `PreparacionPracticaGretl.org`,
`PreparacionNotebook.org`, `Revisión.org` y `deployWeb.org` lo cargan entero
como mensaje de sistema con `insert-file-contents`. La mitad del fichero son
las fichas §7.x de sesiones ya escritas (246 KB) y la tabla de semillas §10
(88 KB), que solo hacen falta al escribir una sesión nueva; quedan dos por
escribir (S25 y S26) más la lección 17.

Decisión del autor (12-10-2026): el Plan se queda con lo operativo y las
fichas de sesiones escritas y las semillas pasan a un segundo fichero. **La
numeración de secciones no cambia en ninguno de los dos ficheros**: §7.14
sigue llamándose §7.14 y §10 sigue siendo §10 aunque vivan en el fichero
nuevo. Así todas las remisiones del corpus (`Encargo-*`, `Informe-*`,
`Revision-*`, Guía de estilo, memoria de las sesiones de Claude) siguen
siendo válidas y lo único que hay que añadir es *en qué fichero* está cada
cosa.

Fichero nuevo: `doc/prompts/PlanDeEscritura-fichas.org`.

## 1. Qué se mueve y qué se queda

Se queda en `PlanDeEscritura.org`:

- §1, §2, §3, §4, §5, §6, §8, §9, §11 enteros.
- De §7: el preámbulo de la sección (glosario operativo, nota «Sobre la
  profundidad de las fichas pendientes», párrafo «Corazón operativo del
  manual»), §7.0 entero (tabla, reestructuración de septiembre, aulas,
  huelga del 5-nov, «Importante»), y las dos fichas pendientes, §7.26
  (Sesión 25) y §7.27 (Sesión 26).

Se mueve a `PlanDeEscritura-fichas.org`, en este orden y sin cambiar una
línea de su interior:

- Las fichas §7.1 a §7.25 (todas las de sesiones escritas, incluida la §7.5
  «Práctica dispersión + correlación»).
- Las fichas §7.28 (catálogo de cuadernos) y §7.29 (apéndice de geometría).
- §10 entero (cabecera, convenciones de lectura y la tabla).

Dentro del Plan, donde estaban las fichas movidas, queda un solo párrafo
tras §7.0 (antes de §7.26):

```
** 7.1–7.25, 7.28 y 7.29: fichas de las sesiones ya escritas
Están en =PlanDeEscritura-fichas.org=, con la misma numeración. Cargar ese
fichero al escribir o revisar una sesión (§1, paso 2); no hace falta para
desplegar ni para revisiones de estilo.
```

Y donde estaba §10:

```
* 10 Semillas vivas
La tabla está en =PlanDeEscritura-fichas.org=, §10, con la misma numeración
y las mismas convenciones de lectura. Se carga junto con las fichas.
```

## 2. Cabecera del fichero nuevo

Copiar las líneas de cabecera del Plan (desde `# -*- mode: org -*-` hasta
`\maketitle`), cambiando solo:

```
#+TITLE: Plan de escritura del curso "Principios de Econometría": fichas y semillas
#+SUBTITLE: Fichas §7.1–§7.29 de las sesiones escritas y tabla de semillas §10
```

Debajo de `\maketitle`, antes de la primera ficha, un bloque `#+begin_center`
con este texto:

```
Este fichero es la segunda mitad de =PlanDeEscritura.org=. Conserva la
numeración de aquel: las secciones §7.1–§7.29 y §10 son las que el Plan,
la Guía de estilo y los informes de =doc/prompts/= citan con esos números.
Toda remisión a §1–§6, §7.0, §8, §9 y §11 apunta al Plan. Las reglas de §2
(jerarquía y registro dual de referencias) se aplican aquí igual.
```

Las fichas van bajo un encabezado de nivel 1 `* 7. Fichas por sesión
(sesiones escritas)` para que `** 7.N` conserve su nivel; §10 va como `* 10
Semillas vivas (promesas plantadas ↔ dónde se cobran)`, el mismo título de
ahora.

## 3. Remisiones que hay que rehacer en el Plan

Las remisiones a fichas y a §10 que quedan en el Plan siguen siendo
correctas en número; solo hay que decir una vez dónde están. Cambios
concretos:

- §1, paso 2: la línea «Su ficha (§7.N) para la canónica del contenido»
  pasa a «Su ficha (§7.N; si N ≤ 24, en =PlanDeEscritura-fichas.org=) para
  la canónica del contenido». La línea «§10 (Semillas)…» pasa a «§10
  (Semillas, en =PlanDeEscritura-fichas.org=)…». En «Plantilla viva», tras
  «última ficha [ESCRITA] del tipo correspondiente en §7», añadir «(fichero
  de fichas)».
- §1, paso 3, apartado (b): «de §10» → «de §10 (fichero de fichas)».
- §1, paso 7: «Actualización de la Ficha §7.N» → «Actualización de la
  Ficha §7.N (en el Plan mientras esté pendiente; al pasar a ESCRITA, la
  ficha se traslada al fichero de fichas)». «Actualización de §10» → «de
  §10 (fichero de fichas)».
- §2, «Regla de oro» y «Jerarquía»: sin cambios de contenido; añadir al
  final de la lista un punto: «/Dos ficheros/: las fichas de sesiones
  escritas (§7.1–§7.29) y las semillas (§10) están en
  =PlanDeEscritura-fichas.org= con esta misma numeración; el resto, aquí.»
- §2, «Material adicional pendiente»: «(§7.5)» → «(§7.5, fichero de
  fichas)».
- Las demás menciones «ver ficha §7.N», «§7.28», «§7.17», «§7.18», «§7.20»,
  «§7.22», «§7.24», «§7.25» en §4.6, §5, §6, §7.0 y §9 (localizarlas con
  `grep -n '§7\.[1-9]' doc/prompts/PlanDeEscritura.org`) se dejan tal cual:
  el punto nuevo de §2 ya dice dónde están.
- Las menciones a «§7.0», «§4.x», «§9.x» dentro del fichero de fichas se
  dejan tal cual (apuntan al Plan, como dice la cabecera).

## 4. Lo que NO se hace aquí

- No se recorta, resume ni reescribe ninguna ficha ni ninguna fila de §10:
  el texto se mueve íntegro. Las anotaciones «Revisado 2026-…», los
  precedentes y las notas «SUPERADO» viajan con su ficha.
- No se toca §4 (ni §4.1): el acercamiento de §4.1 a la Guía de estilo se
  decidirá aparte.
- No se tocan `PreparacionLeccion.org`, `PreparacionPracticaGretl.org`,
  `PreparacionNotebook.org`, `Revisión.org` ni `deployWeb.org`: el autor
  decide cómo cargar el fichero de fichas (previsiblemente añadiéndolo a
  `gptel-context` cuando haga falta). Anotarlo en el informe.
- No se tocan `GuiaDeEstilo.org`, `index.org`, lecciones, prácticas ni los
  informes históricos de `doc/prompts/`.
- No commitear: el autor revisa y commitea.

## 5. Verificación

1. **Nada perdido**: con un script corto en Python (en el scratchpad, no en
   el repo), comprobar que cada línea del Plan antiguo (`git show
   HEAD:doc/prompts/PlanDeEscritura.org`) aparece, como multiconjunto, en la
   unión del Plan nuevo y el fichero de fichas. Las únicas líneas que pueden
   faltar son las modificadas en el paso 3 y los dos encabezados de sección
   sustituidos; listarlas todas en el informe. Las únicas líneas nuevas son
   las de los pasos 1 a 3.
2. **Tamaños**: `wc -lc` de los dos ficheros. Orientación: el Plan debe
   quedar en torno a 190 KB y el de fichas en torno a 320 KB.
3. **Remisiones**: `grep -n '§10\|§7\.[1-9]' doc/prompts/PlanDeEscritura.org`
   y comprobar a mano que cada aparición es una de las tratadas en el paso 3
   o una «ver ficha §7.N» que se deja tal cual.
4. **Exportación**: el PDF del Plan lo exporta el autor desde Emacs (no hay
   regla en el `makefile`). Si se dispone de Emacs con Org y XeLaTeX, exportar
   los dos ficheros a PDF en modo batch y comprobar que compilan; si no,
   omitirlo y decirlo en el informe. En todo caso añadir a `.gitignore`,
   junto a las líneas 84–85 (`doc/prompts/PlanDeEscritura.pdf` y `.tex`),
   `doc/prompts/PlanDeEscritura-fichas.pdf` y `.tex`.
5. `git status`: deben aparecer solo `PlanDeEscritura.org` (modificado),
   `PlanDeEscritura-fichas.org` (nuevo), `.gitignore` y el informe.

## 6. Informe de vuelta

Escribir `doc/prompts/Informe-2026-10-12-corte-plan.org` con: las líneas
modificadas del paso 3 (antes/después); la salida del script del paso 5.1
(líneas que faltan y líneas nuevas); los tamaños; la salida de los grep; si
los PDF compilan; y una lista de las remisiones del corpus a «§7.N» o «§10»
fuera del Plan (`grep -rln '§7\.[1-9]\|§10' doc/prompts/ *.org
org-lessons org-pract`) para que el autor vea que ninguna necesita cambio.
