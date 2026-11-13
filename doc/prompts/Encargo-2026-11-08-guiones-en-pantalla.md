# Encargo: que los guiones de las prácticas muestren en pantalla lo que guardan en ficheros (08-11-2026)

Repositorio: este mismo (`PEconometria`). Encargo mecánico para una sesión de Opus. Estado de partida: `main` en `5312aec` o posterior. Decisión del autor (08-11): cada actividad de cada guion `.inp` debe mostrar en pantalla la misma salida que guarda en el fichero de texto que el documento de la práctica incluye, con **una sola ejecución** (variante `readfile()`, probada con Gretl 2022c, el instalado; `outfile --tee` no existe en esa versión).

## Cómo están hoy los guiones

Cada práctica `org-pract/SNN-Prct-X-*.org` tiene bloques `gretl` **visibles** (`#+NAME: Nombre`, `:eval no`, los que el alumno lee en el PDF) y bloques **ocultos** que se tanglean al guion `guiones/SNN-Prct-X-*.inp` (`:tangle guiones/… :exports none :noweb yes`). Los ocultos envuelven cada actividad así:

```
outfile --quiet fichero.txt
    <<Nombre>>
end outfile
```

y después el `.org` incluye `./SNN-Prct-X-*/fichero.txt` en el documento. Inventario del 08-11: 31 prácticas (todas con el bloque de cabecera y el listado del guion), **173 envoltorios** `outfile --quiet X.txt` (170 con un solo `<<Nombre>>` dentro, uno con dos, cuatro con comandos `printf` sueltos en vez de referencia noweb) y **2 envoltorios** `outfile --quiet plano.plt` (S14-A y S14-B: escriben un guion de gnuplot, no una salida; **no se tocan**). Figuras: 26 líneas `gnuplot … --output="x.png"` en bloques ocultos. El guion se ejecuta al compilar con `DIRECTORIO=… gretlcli -b guiones/….inp` (bloque `sh` de cada `.org`), y los ficheros resultantes van a `org-pract/SNN-Prct-X-*/` (en `.gitignore`).

Consecuencia: el alumno que ejecuta el `.inp` en Gretl no ve ninguna salida; todo va a ficheros.

## Qué hay que hacer

1. **En cada envoltorio `outfile --quiet X.txt … end outfile`** (los 173, incluidos los cuatro con `printf` sueltos y el que tiene dos referencias), añadir inmediatamente después de `end outfile`:

   ```
   printf "%s", readfile("X.txt")     # muestra en pantalla lo que se acaba de guardar en X.txt
   ```

   con el mismo nombre de fichero que el `outfile`. Nada más cambia en el envoltorio: ni el orden, ni la sangría, ni las referencias noweb. Los bloques visibles no se tocan (el documento de la práctica queda idéntico).

2. **Figuras.** Probar primero con un guion (por ejemplo S07-A) si `gnuplot price rooms --output=display` ejecutado con `gretlcli -b` termina sin error y sin dejar ficheros sueltos. Si es así, añadir antes de cada `gnuplot … --output="x.png"` la misma orden con `--output=display` y el comentario `# en pantalla`, y en la línea existente el comentario `# guardada para el documento`. Si en modo `-b` da error o crea ficheros, **no tocar las figuras** y anotarlo en «Aplicado».

3. **Cabecera de cada guion.** En el bloque oculto de cabecera que empieza «Los dos primeros comandos son necesarios para que Gretl guarde los resultados…» (está en cada `.org`), añadir al final del comentario un párrafo:

   ```
   # Cada actividad guarda su salida en un fichero de texto (el que el documento de la práctica
   # muestra) y la imprime a continuación en pantalla con readfile(), de modo que al ejecutar
   # este guion se ve lo mismo que en el documento.
   ```

4. **Comprobación de que ningún cálculo cambia.** Antes de empezar, `make` y guardar una copia de todos los `org-pract/SNN-Prct-*/*.txt` (por ejemplo `tar` a un directorio fuera del repositorio). Después de los cambios, `make` entero y comparar: los ficheros `.txt` deben ser **idénticos** byte a byte (`diff -r`); si alguno difiere, es que la transformación ha alterado una ejecución, y hay que averiguar por qué antes de seguir. Los PDF y HTML de las prácticas tampoco deben cambiar de contenido salvo el listado del guion («Código completo de la práctica», que incluye el `.inp` entero): compruébelo en dos prácticas con `pdftotext` y `diff`.

5. **Prueba de pantalla.** Ejecutar a mano tres guiones (S07-A, S18-A y S20-C, que tiene un Monte Carlo) con `DIRECTORIO=/tmp/prueba gretlcli -b guiones/….inp > salida.txt` y comprobar que `salida.txt` contiene cada una de las tablas que los ficheros `.txt` de esa práctica guardan (una vez cada una, no dos).

## Método

- Comprobar que no hay ficheros abiertos en Emacs (`ls org-pract/.#*`); si los hay, avisar y no tocar ese fichero.
- Un script de Python que recorra las 31 prácticas con una expresión regular sobre el patrón exacto `^outfile --quiet (\S+\.txt)\n(.*?)^end outfile\n` (multilínea), inserte la línea `printf` y cuente; `assert` de que el número de inserciones por fichero coincide con el número de `outfile --quiet *.txt` de ese fichero y de que ningún `readfile(` existía antes. Nunca `sed -i`. Todos los asserts antes de escribir.
- `make` tarda varios minutos (ejecuta los 31 guiones). El ruido de `autoloads`/`use-package`/`scimax` es normal.
- `python3 doc/tools/comprobar-paginas.py`: estado limpio = «7 enlaces por corregir» (falsos positivos conocidos de L9, L14 y L16). Si una práctica cambia de número de páginas por el listado del guion más largo, el comprobador lo dirá y hay que actualizar los `#page=` que apunten a ella (las lecciones y otras prácticas enlazan actividades por página).
- No commitear, empujar ni desplegar: el autor lo ordena.
- Rellenar el apartado «Aplicado»: recuento de inserciones por práctica, decisión sobre las figuras con el resultado de la prueba, resultado del `diff -r` de los `.txt`, prácticas cuyo número de páginas cambió y enlaces actualizados, y la prueba de pantalla de los tres guiones.

## Aplicado

Ejecutado el 08-11-2026 por Opus (Claude Code), sin commitear. Script de Python con todos los asserts antes de escribir (sin envoltorios en bloques visibles, cuerpo de cada envoltorio sin otro `outfile` ni fin de bloque, inserciones = número de `outfile --quiet *.txt` por fichero, ningún `readfile(` ni `--output=display` previo, una sola cabecera por fichero, fichero sin cambios desde la copia previa). Ningún `.#` de Emacs abierto.

**1. Envoltorios: 173 inserciones** de `printf "%s", readfile("X.txt")` tras `end outfile` (los dos `plano.plt` de S14-A y S14-B intactos). Por práctica: S04-A 1, S04-B 2, S07-A 7, S07-B 10, S07-C 4, S11-A 7, S11-B 6, S11-C 0 (no tiene envoltorios), S11-D 2, S14-A 9, S14-B 6, S14-C 6, S14-D 8, S16-A 7, S16-B 11, S16-C 9, S18-A 7, S18-B 5, S18-C 7, S20-A 8, S20-B 3, S20-C 3, S22-A 2, S22-B 6, S22-C 8, S22-D 6, S25-A 8, S25-B 3, S26-A 3, S26-B 5, S26-C 4.

**2. Figuras: aplicado.** Prueba previa con `gretlcli -b` (Gretl 2022c): `gnuplot price rooms --output=display` y `gnuplot --input=@fin --output=display` terminan sin error y no dejan ningún fichero (ni en el directorio de trabajo, ni en el directorio actual, ni en `~/.gretl`, ni en `/tmp`). Se han duplicado las **14 líneas `gnuplot … --output="x.png"` de bloques ocultos**: S07-A 3, S11-B 2, S11-D 4, S14-A 1 y S14-B 1 (estas dos en los guiones `*-plano.inp`, con `--input=@fin`), S18-C 1, S22-A 1, S22-C 1; comentarios alineados dentro de cada bloque. El inventario daba 26; la diferencia está en lo que **no se ha tocado**, para decisión del autor:
- 7 `gnuplot --output` en bloques **visibles** que se tanglean directamente (S11-C: png, pdf y eps; S14-A `price_sqft_simple.png`; S14-C las tres curvas de `peso edad`): duplicarlas cambiaría el documento.
- 14 `freq … --plot="x.png"` y 3 `boxplot … --output="x.png"` en bloques ocultos (S04-A, S07-C, S16-A, S16-C, S18-C, S20-C, S22-A): el encargo nombra solo `gnuplot`, y un segundo `freq … --plot=display` imprimiría otra vez la tabla de frecuencias (habría que añadir `--quiet`, sin probar).

**3. Cabecera:** párrafo añadido en las 31 prácticas (en S14-B y S18-C la otra aparición de «Los dos primeros» es prosa y no se ha tocado).

**4. Comprobación.** Antes, `make -q pract` estaba al día; copia de los 173 `.txt`, los 31 PDF y los guiones fuera del repositorio. Después, `make` entero (rc=0, las 31 prácticas re-tangleadas y re-ejecutadas): **los 173 `.txt` son idénticos byte a byte** (`cmp` uno a uno; ninguno falta ni sobra). `pdftotext` + `diff` en S07-A y S20-C: solo cambia el listado «Código completo de la práctica» y, por el desplazamiento, el pie de página. Las líneas `printf … readfile` con su comentario superan el ancho del listado y minted las parte (`,→`); si molesta, basta acortar el comentario.

**Páginas:** crecen en una página (todas por el listado, que va antes de «Respuestas») S07-B 12→13, S11-D 6→7, S16-B 14→15, S16-C 17→18, S22-C 12→13, S25-B 7→8, S26-B 8→9, S26-C 8→9. `python3 doc/tools/comprobar-paginas.py`: «7 enlaces por corregir», los falsos positivos conocidos (L9, L14, L16); **ningún enlace actualizado**.

**5. Prueba de pantalla** (`DIRECTORIO=<scratchpad>/prueba/… gretlcli -b guiones/….inp > salida`): S07-A (7 `.txt`), S18-A (7) y S20-C (3, con el Montecarlo): rc=0 y el contenido completo de cada `.txt` aparece en la salida **exactamente una vez**; el directorio de trabajo de S07-A queda con los mismos ficheros que el de `make`.

**Sesión principal (08-11, tras el informe de Opus):** el comentario de las 173 líneas `readfile` se acorta a `# en pantalla` (línea más larga: 76 caracteres; ya no se parte en el listado del PDF). Recompilado. Con el comentario corto, el listado es más breve y solo cinco prácticas conservan la página de más (S16-B, S16-C, S22-C, S26-B, S26-C); S07-B, S11-D y S25-B vuelven a su número de páginas anterior. Commiteado (d9d1458) y desplegado (gh-pages 6bf10a3) el 08-11 por orden del autor.

**Decisión del autor (08-11):** los puntos 1 y 2 que Opus dejó sin tocar se quedan como están: los 7 `gnuplot --output` de bloques visibles (S11-C, S14-A, S14-C) y los `freq --plot` y `boxplot --output` de bloques ocultos no se duplican en pantalla. Encargo cerrado.

