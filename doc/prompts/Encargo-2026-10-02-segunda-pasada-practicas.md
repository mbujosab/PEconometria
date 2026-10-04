# Encargo: segunda pasada sobre las prácticas S14–S22 (prosa desfasada tras noweb y reordenación)

Repositorio: este mismo (`PEconometria`). Contexto: ayer se convirtieron las prácticas para que el código visible sea el que produce la salida (noweb) y se reordenaron para que cada salida vaya bajo su bloque; después se aplicó una lectura crítica. Una segunda lectura ha encontrado, sobre todo, prosa que sigue contando los bloques y los `printf` antiguos. Las reglas de edición son las de `doc/prompts/Encargo-2026-10-01-noweb-practicas.md` y `Encargo-2026-10-01-revision-S12-S22.md` (léelos). Ninguna sesión paralela edita ahora `org-pract/`; las lecciones (`org-lessons/`) NO se tocan: si algo te lleva a una lección, anótalo.

Ya corregido por la otra sesión (no repetir): S14-B frase «no son ortogonales» y «cuasivarianza» (`:176`, `:323`); S16-A y S16-B la notación `Sxx` con datos en minúscula; S16-C objetivo 4, `:100` y `:452`; S18-B `:217`; S21-C `:344` («ellas»); S22-D `:339` y `:349`.

## Reglas

1. Donde se indica un texto, úsalo tal cual. Donde se pide «describir», la descripción debe nombrar las líneas que ahora se ven (cuántos `printf` y qué imprimen; los bloques `Abrir…`, `…Resultados`; bucles), en una o dos frases, sin reescribir lo demás.
2. No cambies código salvo donde se pide (S16-C histogramas, S21-B correlación). Si añades una orden al bloque visible, el oculto la ejecuta por noweb; añade el `outfile` e `#+include:` correspondientes si produce salida de texto.
3. Lenguaje de los contrastes (§4.1 del Plan, actualizado 2026-10-02): ni «los datos no son compatibles con H0» ni «los datos son compatibles con H0» como veredicto; fórmula fija «datos como estos no serían raros si H0 fuese cierta». «Compatible» sí se admite en la *pregunta* de un contraste y en la lectura de un intervalo.
4. Citas a otras prácticas: hiperenlace doble pdf+html a la actividad concreta (`:CUSTOM_ID:` del destino; créalo si falta, en minúsculas con guiones y distinto de todo `#+NAME`). Dentro de la misma sesión también (decisión: la regla de §5.1 se aplica igual).
5. Tras editar cada práctica: compilar (`timeout 900 make org-pract/<nombre>.pdf org-pract/<nombre>.html < /dev/null`; `timeout 1800` en S16-A/B/C, S18-C, S21-C, S22-A), comprobar que las salidas no cambian salvo donde se añade código, `grep -c '&lt;&lt;'` en el HTML = 0, `grep -Pzo '#\+end_src\n\n\n\s+#\+latex: \}'` vacío, y al final `python3 doc/tools/comprobar-paginas.py` sobre todas las prácticas (también sobre `org-lessons/*.org`: si una página de práctica enlazada desde una lección se mueve, anótalo, no edites la lección).
6. No hagas commits ni `git add`.

## Lista por práctica (numeración del informe de la segunda pasada)

### S14-A
- `:128–139`: la prosa describe la salida de `summary … --simple` que no se muestra. Añade `outfile`/`#+include:` para mostrarla (sigue el patrón de las demás prácticas), y recompila.
- `:431`: «como en la práctica C de la sesión 7» → enlace doble (S07-C, actividad que corresponda; ancla existente `generacion-datos` u otra).
- `:431`: «`%10.4f`, cuatro decimales en diez» → describe los formatos reales (`%10.3f` para la constante, `%8.2f` para el residuo).

### S14-B
- `:151` y `:195`: hay prosa entre el bloque visible y su salida; mueve la salida justo debajo del bloque (regla código → salida).
- `:109–121`: la salida de `summary` no se muestra; mostrarla como en S14-A.
- `:168` y `:371`: «la práctica de Ramanathan» → enlace doble a S14-A (ancla `bedrms`).
- `:290`: el fichero se llama `r2AjustadoCuatroModelos.txt` y contiene tres modelos; renombra el fichero a `r2AjustadoTresModelos.txt` (en el oculto y en el `#+include:`) o corrige la prosa si dice «cuatro».
- `:366` pregunta 1 (C15 de ayer): comprueba que quedó coherente con `:166` y `:389`; si no, armoniza.

### S14-C
- `:113/:130`, `:140–147`, `:168`: `print --byobs` y los tres `ols` no tienen salida en el documento y `:168` pide «Anote R² y R̄²»: muestra esas salidas (outfile + include).
- `:246` («como en la práctica B») y `:394` («la Práctica A de hoy») → enlaces dobles.
- `:386`: «como pudo ocurrir con radial en la práctica anterior» → «como ocurrió con =radial= en la práctica B de esta sesión» con enlace doble a S14-B (ancla `r2-ajustado`).

### S14-D
- `:116/:134`: «El printf final imprime la correlación» pero el bloque no tiene salida mostrada: muéstrala (outfile + include) y, en el texto del `printf`, cambia «(no son ortogonales)» por «(no son ortogonales en desviaciones)».
- `:351`: «Este segundo bloque es el que da sentido al primero» → reescribe sin «primero/segundo», nombrando los bloques por lo que hacen.
- `:110`: `var(x)` no es nuevo (ya en S07-B): pásalo a «Seguimos usando» o cita S07-B.

### S16-A
- `:422`: «Tres bloques» → «Cuatro bloques» y nombra `ReabrirReplicasVCV`.
- `:118`: «en el guion completo del final se ve dónde va cada open» → quítalo o di que cada `open` está ahora en su bloque.
- `:120` y `:151`: `%d` no es nuevo (S07-B, S11-D, S14-B): corrige la atribución.

### S16-B
- `:238` y `:331`: la prosa cuenta los bloques antiguos; menciona `AbrirRepFijo`, `AbrirRepVar` y la reapertura de `repGrande`; en `:331` son cuatro bloques.

### S16-C
- Cuentas de bloques: `:171` «dos bloques» → tres; `:259` y `:338` «Tres bloques» → cuatro; `:474` «dos bloques finales» → tres. Comprueba cada una leyendo la actividad.
- Histogramas con órdenes solo en el oculto (`:310` `freq b_peq --normal --plot`; `:413–414` `freq pal_nor`, `freq pal_chi`): el bloque visible debe llevar la orden que el alumno teclearía (`freq b_peq --normal`, `freq pal_nor`, `freq pal_chi`), el oculto la misma con `--plot="@workdir/…"` dentro de un `outfile` que recoja el texto (tabla de frecuencias y contraste de normalidad), y un `#+include:` de ese texto bajo el bloque, porque `:324` y la respuesta 2 citan que el contraste rechaza por la curtosis (Doornik–Hansen 243, p ≈ 1,7e−53) y el alumno debe verlo. Recompila y comprueba que las cifras citadas aparecen.
- `:98`, `:110`, `:125`, `:129`, `:236`, `:259`: citas a las prácticas A y B de la misma sesión → enlaces dobles.

### S18-A
- `:110`: `$nobs` no es nuevo (S07, S14): corrige la atribución.

### S18-B
- `:113`: `max()` no es nuevo (S11-A, S16-B): corrige.
- `:299` (pregunta 1): «multiplicar por diez los valores del regresor» → «multiplicar por diez la separación de cada valor del regresor respecto de 50», coherente con la respuesta de `:322`.

### S18-C
- `:234`: «Los dos primeros printf…» → describe los seis `printf` (cabecera incluida).
- `:370`: «la misma estructura que los de la Actividad 3» → «la misma estructura que los dos últimos bloques de la Actividad 3».
- `:362`: «con doce observaciones, dos de cada tres veces no se rechaza…» → añade «en un diseño como este».

### S21-A
- `:158`, `:221`, `:257`: «El printf» → describe los `printf` que ahora se ven (4, 4 y 3) y qué imprimen (SRC_r, aumento de la SRC, F, crítico, valor p…).
- `:111`: `%d` y `%.3g` no son nuevos (S07-B, S11-D, S16, S18); solo `%.4e` lo es.
- `:347`: «La práctica B de la sesión 22 le pondrá números» → enlace doble a S22-B (actividad 1 o la que corresponda).

### S21-B
- `:111`: «$vcv aparece en el guion completo de la Actividad 3» → «está en el bloque `Esquinas` de la Actividad 3».
- `:117`: «El guion completo calcula además los t como cociente…» → quitar (ya no existe `unaAuna.txt`) y mencionar el `printf` de `t_c`.
- `:159`: «El printf imprime el F…» → dos `printf`: el primero las SRC y el aumento, el segundo F, crítico y valor p.
- `:188`: la correlación 0,53 no la imprime ninguna salida: añade al bloque visible de la Actividad 1 (`Completo`) la orden `corr bedrms baths` (su salida va al mismo `completo.txt`), recompila, y escribe la cifra con los decimales que imprima Gretl (0,532).
- `:288` (respuesta 1): «bedrms y baths comparten poco» → «=bedrms= y =baths= solo comparten parte de su variación (correlación 0,53)».
- `:292` (respuesta 3): «cualquiera de ellos es compatible con los datos» → «datos como estos no serían raros si el coeficiente valiese cualquiera de ellos».

### S21-C
- `:120`: describe los seis `printf` de `BajoH0Resultados`, y explica en una frase por qué el bloque redefine `sig` y `Fc506` después del `open` (el `open` de las réplicas borra los escalares). Quita el «cuatro escalares» → «cinco».
- `:192`: menciona la media, la mediana y el cuantil que ahora se imprimen. El `Fc20` calculado en `N20` antes del bucle es inútil (el `open` lo borra y `N20Resultados` lo recalcula): quítalo del bloque visible `N20` si no se usa dentro del bucle; si se usa, déjalo y explícalo.
- `:111`: añade que `BajoH0Resultados` y `N20Resultados` redefinen escalares tras `open`.
- `:260`: «se repite el bloque…, como hace el guion completo» → el bloque visible ya contiene la repetición: quita la remisión.
- `:107–108`: `$Fstat` y `$rsq` pasan de «Lo nuevo» a «Seguimos usando» (sesiones 18 y 11).

### S22-A
- `:187`: «Las opciones --plot y --output mandan cada gráfico a un fichero» → di que el guion las añade (el visible no las lleva), o quítalo.
- `:119`: «las matrices y mcov (práctica A de la sesión 16)» → enlace doble a S16-A (actividad del apéndice de la matriz).
- `:299`: la cita «muestras en las que los regresores varíen por separado» no es literal de L14; escribe «lo que la lección 14 llamó regresores que varíen por separado».
- `elif`: añádelo a «Lo nuevo» de la descripción (no aparece en ninguna práctica anterior).

### S22-B
- `:125`: describe los cinco `printf` de `Auxiliar` (longitudes, seno, producto).
- `:222`: describe el `printf` inicial de `SinLnox` («price ~ rooms + nox…»).

### S22-C
- `:115`: «Las dos últimas líneas estiman las dos regresiones simples» → ahora están en el bloque `Simples`, con dos `ols` y dos `printf`; descríbelo.
- `:108`: «Comandos nuevos: no hay ninguno» → añade el operador ternario `(i == 1) ? 40 : 10` (nuevo) y `loop foreach` sobre números (en S07-B era sobre series), con una línea de descripción.
- `:244`: «El segundo bloque imprime los resultados» → nómbralo: «el bloque `ContrastesResultados`».
- `:160`: el oculto genera `costAge.png` que nada incluye: quita esa orden del oculto (o incluye la figura si tiene sentido; mejor quitarla).
- Actividad 6: el primer párrafo de «Lo que debe observar» comenta `ortogonal.txt` pero va detrás de la salida de la predicción; divide «Lo que debe observar» en dos (uno tras cada salida) o reordena para que cada comentario siga a su salida.

### S22-D
- `:108`: «Comandos nuevos» cita `list`, que ya no se usa: quítalo.
- `:215`: la descripción de `Auxiliar` omite el `printf` de las longitudes (417/889): añádelo.
- `:262`: la prosa de la Actividad 5 no sigue el orden del código (`dif` y los dos `restrict` están en `ContrasteRacional`; el de seis restricciones no va al final): reescribe la descripción siguiendo el bloque línea a línea.
- `:358`: «VIF moderado (4,5)» → `$4{,}5$`.

## Para decisión del profesor (no tocar; solo anotar en el informe)
- S18-A `:289`, `:326`, `:405` y S18-B `:324`: usos de «compatible» en pregunta o lectura de intervalo (admitidos por §4.1).
- S22-B `:339`: el informe decía que había un vector traspuesto `a^⊤Va`; no se ha encontrado. Si lo ves, anótalo con la línea.

## Plan de escritura (`doc/prompts/PlanDeEscritura.org`)

Hallazgos de la segunda pasada sobre el Plan (numeración del informe de lecciones). En cada caso añade una línea «Revisado 2026-10-02: …» debajo de la entrada afectada; no borres lo anterior.

- (28) Las dos líneas «Reabierto el 2026-10-01» (una en §7.17, ficha de la sesión 16, y otra en §7.21) dicen «presentado como otros generadores del mismo subespacio»; la corrección (c) de §7.23 dice que en la transparencia se escribe «ortogonal a los demás». Añade a ambas: «(en los apuntes; en la transparencia, «que es ortogonal a los demás», F27)». Y en el informe anota que la línea de E5 está en §7.17, no en §7.16.
- (29) §9.3, punto 4 (Frisch–Waugh): sigue diciendo «Lo que sigue excluido: la demostración del teorema, su uso como mecanismo de cálculo» y que no se nombra el teorema. Añade: «Revisado 2026-10-02: reabierto; L14 lo demuestra en nota al pie, lo nombra («teorema de Frisch–Waugh–Lovell») y lo usa en «Ortogonalizar» (E5); sigue excluido como método general de cálculo (Gram–Schmidt)». En §7.21, la línea «falta anotar la reapertura en §9.3/§9.4» → marcar como hecha hoy. En §7.21 «Material aprobado», la exclusión de `omit --auto` → añade «Revisado 2026-10-02: ya no excluido; L14 lo describe (F22)».
- (30) §7.16, la frase «Una versión anterior de §7.14 afirmaba que la ses. 15 "lo evita deliberadamente": era incorrecto, y ya está corregido allí» → añade «Revisado 2026-10-02: superada por F5 (la fórmula con selector se retiró en 9d72500 y no se recupera)».
- (31) §7.17: «la familia ortogonal ya está verificada en S14-Prct-D con un diseño factorial ±1» → «Revisado 2026-10-02: con n=40 ortogonalizadas (F14)».
- (32) §10, fila «Más dispersión del regresor…»: «la misma enfermedad que tener pocos datos» → «el mismo problema que tener pocos datos» (F25). Añade en §10 una fila nueva para el cobro «parte propia → ortogonalizar»: sembrado en L14 («Qué hacer y qué no», «Ortogonalizar»), cobrado en S22-C (actividad 6) y S22-D; y menciónalo en la fila «Colinealidad medida».
- (33) §7.18: «Pendiente: segunda lectura completa de la lección con ese criterio» → «Revisado 2026-10-02: hecha el 30-09 (repaso de estilo S02–S22)».
- (34) §7.21, F25: la medición «máximo 668 px» es del 30-09; añade «Re-medido 2026-10-02 tras los cambios de t9: todas las transparencias de L14 por debajo de 700 px (t9 654 px)».
- (35) §4.1: donde dice que en L13 se aplicó en «Tres restricciones», añade «y en «El estadístico F» (un F cercano a 1 … es lo que H0 hace esperar), 2026-10-02». §4.2: donde dice «aplicado en L12 y L13 («El estadístico F»)», añade «y en «Lectura geométrica: la misma figura» de L13 (2026-10-02): las afirmaciones «en promedio» se escriben como esperanzas de sumas de cuadrados evaluadas sobre la muestra aleatoria; no se declara ninguna convención».
- §7.14 (A8, F3): añade «Revisado 2026-10-02 (decisión del usuario): el título de la transparencia 1 de L10 conserva «del plano al hiperplano»; la regla A8 se aplica al texto, no al título».
- §7.23, corrección (a): «si el objetivo es predecir, nada (dentro del rango de los datos; …)» → añade «Precisión 2026-10-02: lo que cuenta no es el rango de cada variable, sino la distancia a la nube conjunta de los regresores (S22-C, actividad 6: el coche de 300 semanas y 10 mil millas está dentro del rango de cada variable y lejos de la recta)».
- §7.23, línea sobre los apuntes de t9 («dos maneras de conseguir variación propia, una operación que no la crea, y reconocerlo»): añade «Revisado 2026-10-02: ahora «una sola manera, más información (más observaciones o una muestra más amplia); reformular; la operación que cambia los generadores; y, antes que todas, decir que la muestra no responde a la pregunta»».

## Informe final
En español, conciso: por práctica, qué aplicaste (con la numeración de arriba), cifras nuevas comprobadas, salidas añadidas, páginas de actividades que hayan cambiado (sobre todo las enlazadas desde lecciones: S18-A act. 5, S22-C act. 6, S22-D act. 3, S14-D act. 2 y 4, S16-B pregunta 4, S21-B act. 3, S22-B act. 3 y 5), y lo que no aplicaste.
