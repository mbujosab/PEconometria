# Encargo: renumerar las sesiones 20 y 21 (laboratorio del F ↔ lección 14) y aplicar el calendario definitivo

Fecha: 2026-10-08. Para una sesión de Claude (Opus) sobre el repositorio
`PEconometria`. Trabajo mecánico; las decisiones ya están tomadas y
registradas en `doc/prompts/PlanDeEscritura.org`, §7.0, nota «Huelga del 5 de
noviembre de 2026 y calendario definitivo». Léela antes de empezar. Antes de
tocar nada: `git log` y `git status` (otra sesión puede haber dejado cambios);
si hay ficheros `.#algo` (locks de Emacs), avisar y no escribir en ellos.

## Decisión que se aplica

Por la huelga del jueves 5-nov-2026 se pierde la sesión de ese día y todo lo
posterior se desplaza. El autor ha decidido que el laboratorio del F siga
inmediatamente a la lección 13. En consecuencia **el laboratorio del F pasa
de la sesión 21 a la 20, y la lección 14 (colinealidad) pasa de la sesión 20
a la 21**. Ningún otro número de sesión cambia. Regla única para todo el
trabajo: *lab F ≡ sesión 20; lección 14 ≡ sesión 21*.

Calendario definitivo (fechas de la portada):

| Ses. | Fecha       | Contenido                                   |
|------|-------------|---------------------------------------------|
| 17   | vie 06-nov  | Lección 12                                  |
| 18   | jue 12-nov  | Laboratorio: t e IC                         |
| 19   | vie 13-nov  | Lección 13                                  |
| 20   | jue 19-nov  | Laboratorio: contraste F (ex sesión 21)     |
| 21   | vie 20-nov  | Lección 14 (ex sesión 20)                   |
| 22   | jue 26-nov  | Laboratorio: colinealidad                   |
| 23   | vie 27-nov  | Lección 15                                  |
| 24   | jue 03-dic  | Lección 16                                  |
| 25   | jue 10-dic  | Sesión abierta: lección 17, laboratorio o dudas, a decidir con los alumnos |
| 26   | vie 11-dic  | Laboratorio integrador                      |

Las sesiones 1 a 16 no cambian de fecha. El viernes 4-dic es la prueba de
evaluación (no es una sesión).

## 1. Renombrar ficheros (con `git mv` los rastreados)

- `org-lessons/S20-Lecc14.org` → `org-lessons/S21-Lecc14.org`.
- `org-lessons/img/S20-Lecc14/` → `org-lessons/img/S21-Lecc14/`; dentro,
  `figuras-S20-Lecc14.org` → `figuras-S21-Lecc14.org` (y cualquier ruta
  interna que lleve el nombre viejo: `:tangle`, comentarios, la orden
  `compila_figuras.sh` del fichero).
- `org-pract/S21-Prct-A-hprice2-restricciones.org` → `org-pract/S20-Prct-A-hprice2-restricciones.org`.
- `org-pract/S21-Prct-B-ramanathan-conjunta.org` → `org-pract/S20-Prct-B-ramanathan-conjunta.org`.
- `org-pract/S21-Prct-C-distribucion-F.org` → `org-pract/S20-Prct-C-distribucion-F.org`.
- Borrar los generados con el nombre viejo (no están en git): en
  `org-lessons/`, `S20-Lecc14.{pdf,html,tex,ipynb,slides.html}` y los `.png`
  de `img/S20-Lecc14/` se regeneran con el nombre nuevo; en `org-pract/`,
  `S21-Prct-*.{pdf,html,tex}`, los directorios `S21-Prct-*/`,
  `guiones/S21-Prct-*.inp` y `.stamps/S21-Prct-*`. Comprobar con
  `git status` que no queda nada rastreado con el nombre viejo.
- Comprobar si `CuadernosElectronicos/` o `doc/tools/` nombran alguno de
  estos ficheros (`grep -rn 'S20-Lecc14\|S21-Prct'`).

## 2. Sustituir los nombres de fichero en el texto

En `org-lessons/*.org`, `org-pract/*.org`, `index.org`,
`doc/prompts/PlanDeEscritura.org`, `doc/prompts/GuiaDeEstilo.org` y
`makefile`: `S20-Lecc14` → `S21-Lecc14` y `S21-Prct` → `S20-Prct` (también
dentro de las URL `https://mbujosab.github.io/PEconometria/Practicas-pdf/…`,
`Practicas-html/…`, `Lecciones-pdf/…`, `Lecciones-html/…`,
`Transparencias/…`). NO tocar los informes históricos de `doc/prompts/`
(`Revision-*.org`, `Nota-*.org`, `Encargo-*.md`, `Informe-*.org`,
`contrastes/`, `estilo/`): describen el estado de su fecha.

## 3. Sustituir los números de sesión en el texto

Localizar con `grep -n 'sesión 2[01]\|Sesión 2[01]\|Ses\. 2[01]\|ses\. 2[01]\|sesiones 2[01]\|(sesión 2[01])'`
en lecciones, prácticas, `index.org` y Plan, y decidir cada caso por su
contexto con la regla única (lab F = 20, lección 14 = 21). Casos seguros:

- En las tres prácticas del F (ahora `S20-Prct-*`): `#+Title: Sesión 21 (A)`
  → `Sesión 20 (A)` (B y C igual); `#+DESCRIPTION: Práctica de Gretl,
  sesión 21 (…)` → `sesión 20`; «la práctica A/B/C de la sesión 21» cuando se
  refiera a estas mismas prácticas → «de la sesión 20».
- En `S21-Lecc14.org`: `* Preguntas de repaso (sesión 20)` → `(sesión 21)`;
  cualquier «sesión 20» que se refiera a sí misma → 21.
- En todas las demás lecciones y prácticas (S19-Lecc13, S22-Prct-A/B/C/D,
  S23-Lecc15, S24-Lecc16, S18-Prct-*, etc.): «práctica A/B/C de la sesión
  21» → «sesión 20»; «sesión 20» referida a la lección 14 → «sesión 21».
- Lo que NO cambia: «lección 13», «lección 14», «sesión 22» y los demás
  números; las fechas y sesiones anteriores a la 17.

En `doc/prompts/PlanDeEscritura.org`:

- Tabla §7.0: intercambiar el contenido de las filas 20 y 21 (la 20 pasa a
  ser «Lab Gretl | Aplicar F (reales); distribución de F bajo H0
  (simulados)» y la 21 «Teoría | Diagnóstico I: colinealidad…»), conservando
  la columna «Sem» tal cual y el estado ESCRITA. No tocar la fila 24
  (PENDIENTE: la marca el autor).
- Fichas: `** 7.21 Ficha — Sesión 20 (Colinealidad)` y `** 7.22 Ficha —
  Sesión 21 (Lab Gretl: F)` intercambian su posición en el fichero y sus
  títulos pasan a `** 7.21 Ficha — Sesión 20 (Lab Gretl: F)` y `** 7.22 Ficha
  — Sesión 21 (Colinealidad)`. Dentro de ambas fichas y en el resto del Plan
  (§4, §9, §10, otras fichas), actualizar «§7.21»/«§7.22» y «sesión 20/21»,
  «Ses. 20/21» con la regla única. En §10 las celdas del tipo «*21* (S21-C:
  …)» pasan a «*20* (S20-C: …)», y «20 (…colinealidad…)» a «21 (…)». Dejar
  intactas las frases históricas que explican la reordenación de septiembre
  (párrafo «Reestructuración de las sesiones 16-26», mapa antiguo→nuevo) y
  la nota «Huelga del 5 de noviembre», que ya describe el estado nuevo.
- Ficha de la lección 14 (ex §7.21): su línea sobre «guiños (labs 21 y 22)»
  pasa a «lab 22; el lab 20 (F) ya anticipó la elipse», conforme al cierre
  nuevo de la lección 14.

## 4. `index.org`

- Tabla-calendario del principio: fechas de S17 a S26 según el calendario de
  arriba; S20 pasa a «Laboratorio» y S21 a «Lección 14».
- Bloques de sesión: el bloque `id="S21"` (laboratorio del F, con sus tres
  prácticas) pasa a `id="S20"`, código S20, fecha jue 19-nov-2026; el bloque
  `id="S20"` (lección 14) pasa a `id="S21"`, código S21, fecha vie
  20-nov-2026. Enlaces internos `href="#S20"`/`#S21` en consecuencia. Fechas
  de S17, S18, S19, S22, S23, S24, S25, S26 según la tabla.
- Las dos «notas de calendario» que explicaban por qué la S21 aparecía antes
  que la S20 (los bloques se agrupan por tema) sobran: con el cambio, el
  orden temático y el cronológico coinciden. Suprimirlas.
- Bloque S25 (10-dic): añadir en su resumen «Sesión abierta: lección 17,
  laboratorio o resolución de dudas, según prefieran los alumnos». Bloque
  S26: fecha vie 11-dic-2026.
- Contador de portada: no cambia (24 de 26).

## 5. Recompilar y verificar

- `make org-lessons/S21-Lecc14.pdf org-lessons/S21-Lecc14.html
  org-lessons/S21-Lecc14.ipynb org-lessons/S21-Lecc14.slides.html` (las
  figuras se regeneran solas desde `img/S21-Lecc14/`).
- `make` de PDF y HTML de las tres prácticas `S20-Prct-*` y de TODA práctica
  o lección cuyo `.org` haya cambiado en los pasos 2-3 (enlaces o números):
  previsiblemente S19-Lecc13, S22-Prct-A/B/C/D, S23-Lecc15, S24-Lecc16 y
  alguna práctica de las sesiones 14-18; para las lecciones, los cuatro
  formatos. `make index`.
- `python3 doc/tools/comprobar-paginas.py` sin argumentos: todo correcto.
- `python3 doc/tools/medir-transparencias.py 0 org-lessons/S21-Lecc14.slides.html`
  y de cualquier otra lección recompilada: ninguna pantalla por encima de
  700 px.
- `grep -c '\\\$' org-lessons/S21-Lecc14.tex` debe dar 0.
- `grep -rn 'S20-Lecc14\|S21-Prct' --include=*.org --include=*.py --include=makefile .`
  solo debe encontrar los informes históricos de `doc/prompts/`.

## 6. Lo que NO se hace aquí

- No commitear: el autor revisa y commitea.
- No tocar `qbank-PEconometria`: su sesión debe actualizar
  `examenesPOM/00CreaExamenes.org` (la sesión 20 ya no es «hasta lección
  14»; es el laboratorio del F, y la lección 14 es la sesión 21). Anotarlo en
  el informe para que el autor se lo pase a esa sesión.
- No reescribir ninguna frase más allá de los números y nombres: las
  adaptaciones de contenido (anticipaciones a la lección 14 en las prácticas
  del F y cierre de la lección 14) ya están hechas y commiteadas.

## 7. Informe de vuelta

Escribir `doc/prompts/Informe-2026-10-08-renumerar-S20-S21.org` con: la
lista de ficheros renombrados y modificados; los casos de «sesión 20/21» que
exigieron decidir por contexto y cómo se decidieron; la salida de las
verificaciones del paso 5; y lo que haya quedado sin verificar o dudoso.
