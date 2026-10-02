# Encargo: aplicar la parte mecánica de la lectura crítica de las sesiones 12–22

Repositorio: este mismo (`PEconometria`). El informe completo está en `doc/prompts/Revision-2026-10-01-lectura-critica-S12-S22.org`; léelo entero antes de empezar (los números de hallazgo de abajo, A13, C2, D2…, son los suyos). También conviene leer `doc/prompts/Encargo-2026-10-01-noweb-practicas.md`: sus criterios sobre bloques de código (el visible es el canónico, noweb, una línea en blanco antes de `#+latex: }`) siguen vigentes.

**Reparto para no pisarnos.** Otra sesión (Fable) está editando a la vez `org-lessons/*.org`, `org-pract/S14-Prct-D-simulados-matricial.org` y `org-pract/S16-Prct-C-sorpresas.org`. **No toques esos ficheros.** Tuyos son: el resto de `org-pract/*.org` y `doc/prompts/PlanDeEscritura.org`. Si un hallazgo te lleva a uno de los ficheros reservados, anótalo en el informe y sigue.

## Reglas

1. Erratas, cifras, enlaces, atribuciones y frases de una línea: corrige directamente, con el texto que se indica. Donde el informe propone un texto exacto, úsalo tal cual.
2. No reescribas matemáticas ni argumentos más allá de lo indicado. Si algo te parece mal y no está en la lista, anótalo.
3. Lenguaje de los contrastes (§4.1 del Plan): nunca «los datos no son compatibles con H0», ni afirmaciones tajantes sobre el parámetro («la pendiente es 1», «rooms no aporta nada»). Fórmulas aceptadas: «a la luz del contraste…», «el contraste no rechaza que…», «datos como estos serían muy raros si…».
4. Forma de usted; sin coloquialismos.
5. Después de editar una práctica, compílala (`timeout 900 make org-pract/<nombre>.pdf org-pract/<nombre>.html < /dev/null`; `timeout 1800` en las de Monte Carlo) y comprueba que las salidas de Gretl no cambian salvo donde se añade código (C12). Al final, recompila también las que solo cambian por enlaces.
6. Los `#page=` se comprueban con `pdftotext -f N -l N org-pract/<fichero>.pdf -`: la página debe contener «Actividad K» (o la figura / «Preguntas»). **Hazlo al final de todo**, con los PDF ya recompilados, porque las páginas pueden moverse.
7. No hagas commits ni `git add`. El profesor commitea.

## Prácticas

### A13 — Lenguaje de los contrastes
- `S18-Prct-B-regresor-disperso.org:324`: «los datos son poco compatibles con una pendiente nula, con un 5 % de riesgo de equivocarse» → «a la luz del contraste, datos como estos serían raros si la pendiente fuese nula (menos del 5 % de las veces)».
- `S22-Prct-A-colinealidad-montecarlo.org:298`: «los datos rechazan que la pareja sobre» → «el contraste rechaza que sobren los dos a la vez».
- `S22-Prct-B-hprice2-vif.org:334`: «Que rooms no aporta nada a la reproducción de nox» → «Que, una vez está lnox, rooms apenas añade nada a la reproducción de nox».
- `S22-Prct-D-hprice1-tasacion.org:329`: «el modelo con la tasación como único regresor y pendiente 1 es una descripción aceptable» puede quedarse; pero en `:371` (respuesta 7): «El contraste dice que la pendiente de la tasación es 1 y que las características no añaden nada» → «El contraste no rechaza que la pendiente de la tasación sea 1 ni que las características no añadan nada»; y «Las inmobiliarias ordenan bien las viviendas y, en esta muestra, tasan por encima…» → «A la luz de los dos contrastes, la tasación ordena bien las viviendas y, en esta muestra, está por encima del precio de venta en una cantidad aproximadamente constante».

### A7 — S21-Prct-C-distribucion-F.org:344 (respuesta 2)
Sustituir «Bajo H0 cierta, y es constante más ruido, y la parte de ŷ que se aparta de ȳ es la sombra del ruido sobre las k−1 direcciones de los regresores no constantes. Por el reparto por igual de la lección 13, cada dimensión recibe en media σ² de longitud al cuadrado del ruido» por: «Bajo $H_0$ cierta, cada realización de $\boldsymbol y$ es una constante más la realización de las perturbaciones, y la parte de $\boldsymbol{\mathop{\widehat y}}$ que se aparta de $\boldsymbol{\mathop{\overline y}}$ es la proyección de esa realización sobre las $k-1$ direcciones de los regresores no constantes. Por el reparto por igual de la lección 13, la suma de cuadrados de esa proyección, evaluada sobre la muestra aleatoria, tiene esperanza $\sigma^2$ por dimensión». El resto de la respuesta se mantiene.

### A10 — S16-Prct-A-montecarlo.org:510 (respuesta 1)
«para que coincidieran tendría que anularse $\sum_iW_iU_i$, es decir, la perturbación sorteada tendría que resultar ortogonal al regresor centrado» → «para que coincidieran en esa réplica tendría que anularse $\sum_iw_iu_i$ (la identidad evaluada sobre los datos sorteados), es decir, la perturbación sorteada tendría que resultar ortogonal al regresor centrado».

### A15 — S22-Prct-C-ramanathan-coches.org
«kilómetros» → «millas» en los tres sitios (`:98` y las actividades 2 y 6; buscar también «kilometraje», que puede quedarse). La variable `miles` está en miles de millas.

### C2 — S21-Prct-B-ramanathan-conjunta.org:188
«quitar los dos regresores a la vez sube la SRC en 1573, menos de la mitad de lo que vale una sola dimensión de ruido, 𝔰²=1670» → «quitar los dos regresores a la vez sube la SRC en 1573, es decir, 787 por cada una de las dos dimensiones que se quitan: menos de la mitad de lo que vale una dimensión de ruido, 𝔰²=1670». Y «porque los dos regresores comparten poco entre sí» → «porque los dos regresores solo comparten parte de su variación (correlación 0,53)»; comprueba la cifra en las salidas.

### C3, C4 — S21-Prct-C-distribucion-F.org
- `:313`: «unas cinco veces mayor» → la cifra real con un decimal, según las salidas (el informe da 24,71/3,545 ≈ 7). Comprueba y escribe «unas siete veces mayor» si procede.
- `:249` (pie de figura): «llega hasta 9, y el 5 % superior empieza en 3,24 en lugar de 2,62» → «llega casi hasta 9, y el valor crítico al 5 % es 3,24 en lugar de 2,62 (el cuantil empírico del 95 % está en 3,28)»; comprueba 3,28 y el máximo en `n20.txt`.

### C7 — S22-Prct-A-colinealidad-montecarlo.org:296 (respuesta 2, error matemático)
Sustituir «El coeficiente de la suma es la coordenada del regresor $\boldsymbol x_2+\boldsymbol x_3$ en la base $\{\boldsymbol x_2+\boldsymbol x_3,\ \boldsymbol x_3\}$, y su parte propia es lo que $\boldsymbol x_2+\boldsymbol x_3$ no comparte con $\boldsymbol x_3$. Cuando $\boldsymbol x_2$ y $\boldsymbol x_3$ están alineados, su suma es casi el doble de largo que cada uno y la varianza de $\hat\beta_2+\hat\beta_3$ es la de un solo coeficiente, $0{,}011$» por: «Como $\hat\beta_2\boldsymbol x_2+\hat\beta_3\boldsymbol x_3=(\hat\beta_2+\hat\beta_3)\boldsymbol x_2+\hat\beta_3(\boldsymbol x_3-\boldsymbol x_2)$, la suma $\hat\beta_2+\hat\beta_3$ es la coordenada de $\boldsymbol x_2$ en la base $\{\boldsymbol x_2,\ \boldsymbol x_3-\boldsymbol x_2\}$, y se mide con la parte propia de $\boldsymbol x_2$ respecto de la diferencia $\boldsymbol x_3-\boldsymbol x_2$. Cuando $\boldsymbol x_2$ y $\boldsymbol x_3$ están alineados, esa diferencia es casi ortogonal a $\boldsymbol x_2$, la parte propia es casi todo $\boldsymbol x_2$, y la varianza de $\hat\beta_2+\hat\beta_3$ es la de un solo coeficiente sin colinealidad, $0{,}011$». El resto de la respuesta se mantiene.

### C8 — S22-Prct-A-colinealidad-montecarlo.org:300 (respuesta 4, afirmación falsa)
«y con ella el ajuste: $\boldsymbol{\mathop{\widehat y}}$ es el mismo que el de cualquier otra réplica, con el mismo $\mathfrak s$ y el mismo $R^2$» → «y con ella el ajuste: la $\mathrm{SRC}$ de esa réplica es la misma que tendría con cualquiera de los otros tres valores de $\rho$, porque el subespacio es el mismo; lo mal determinado es el reparto entre las dos coordenadas, no el punto $\boldsymbol{\mathop{\widehat y}}$».

### C9 — S22-Prct-A-colinealidad-montecarlo.org
- `:298`: «Que $t=0{,}9$ es lo que se obtiene tres de cada cuatro veces con $\rho=0{,}99$» → «Que un $t$ no significativo es lo que se obtiene tres de cada cuatro veces con $\rho=0{,}99$».
- `:189`: «covarianza casi igual a la varianza en valor absoluto» → añadir «salvo con $\rho=0$, donde es prácticamente nula» (comprueba las cifras: 0,0003 frente a 0,0108).

### C10 — S22-Prct-C-ramanathan-coches.org:292
«el de miles saldría menos negativo en la misma medida» → «el de miles saldría menos negativo en proporción».

### C11 — S22-Prct-B-hprice2-vif.org
- `:233`: «ninguna comparte nada con rooms» → «ninguna comparte casi nada con rooms».
- `:312` (pregunta 4): «Los intervalos de nox con y sin lnox no se solapan ni de lejos en su centro: 404 frente a −1 885» → «Los intervalos de nox con y sin lnox tienen centros muy distintos, 404 frente a −1 885, aunque el segundo está contenido en el primero».

### C12 — S22-Prct-D-hprice1-tasacion.org, actividad 5 y respuesta 7
En el bloque visible `ContrasteRacional`, después del primer `restrict … end restrict` y de `scalar Frac = $test`, añade un segundo bloque con las seis restricciones (`b[const] = 0` más las cinco anteriores) y `scalar Fseis = $test`; en el bloque `DiferenciaMedia` añade un `printf` que imprima «Con la sexta restriccion, constante = 0: F(6,%d) = %.3f   valor p = %.4f» con `df`, `Fseis` y `pvalue(F, 6, df, Fseis)`. Actualiza la descripción del bloque (una frase) y en la respuesta 7 cita la cifra impresa en lugar de «el F rechaza» a secas. Debe salir F(6,82) ≈ 4,77. Recompila y comprueba.

### C13 — S18-Prct-C-cobertura.org:357
Quitar «, el $\sqrt{n-k}$ de la identidad» (la frase sigue: «lo único que ha crecido es la longitud del regresor, y con ello la frecuencia…»).

### C14 — S14-Prct-B-hprice2-r2ajustado.org:174
Quitar «y rooms (habitaciones, entre 3,6 y 8,8) y nox (partes por cien millones, entre 3,9 y 8,7) están medidas en escalas muy distintas» y dejar la frase en «donde interviene también la magnitud del coeficiente del regresor añadido y la escala de cada variable. La correlación indica si habrá desplazamiento; no indica cuánto».

### C1 — S14-Prct-B-hprice2-r2ajustado.org (promesa de L10:671)
En el «Lo que debe observar» de la actividad donde se estiman las dos simples y la múltiple con rooms y nox, añade una frase que compruebe lo que L10 promete: «Fíjese que $R^2$ no es la suma de los dos $R^2$ simples: $0{,}4841+0{,}1815=0{,}666$ frente a $0{,}535$, porque rooms y nox no son ortogonales (lección 10)». Comprueba las tres cifras en las salidas de la práctica antes de escribirlas.

### C15 (parte de S14-B) — S14-Prct-B-hprice2-r2ajustado.org:366
La pregunta 1 dice «cambian relativamente poco» y la respuesta (`:389`) «muy desiguales»; armoniza la pregunta: «¿por qué los coeficientes cambian de forma tan desigual (el de rooms apenas, el de nox casi a la mitad)?» o similar, coherente con `:166` y `:389`.

### C16 — S18-Prct-C-cobertura.org
- `:430`: quitar la frase «Rechazar de menos no aumenta los rechazos de una hipótesis cierta…» si no aporta nada, o reescribirla con contenido.
- `:273`: «±2,23» → «−2,18 y 2,24» (comprueba en las salidas).

### B1 — S18-Prct-A-hprice2-inferencia.org, actividad 3
Añade al principio de la descripción del bloque una frase: «Esta actividad usa el estadístico $F$ y el comando `restrict`, que la lección 13 presentará con detalle; aquí basta con leerlos como una segunda forma del mismo contraste».

### B2 — S21-Prct-B-ramanathan-conjunta.org:257–259
Añade una frase que diga que la elipse de confianza no se ha visto en las lecciones y que aquí es solo una ilustración: «La elipse no aparece en las lecciones; aquí es solo una imagen de cómo se reparte la incertidumbre entre dos coeficientes correlados».

### B5 — Atribuciones de comandos
- `S21-Prct-C-distribucion-F.org:107`: `$Fstat` y `$rsq` no son nuevos: cita la sesión 18 (S18-A) y la 11.
- `S18-Prct-A-hprice2-inferencia.org:117`: `smpl --random` → «sesión 16».
- `S18-Prct-C-cobertura.org:113`: `smpl 1 12` → quita la atribución a la sesión 14 (o cita donde aparezca de verdad; búscalo con grep).
- `S22-Prct-A-colinealidad-montecarlo.org:119`: `elif` → cita la sesión donde aparezca (grep en org-pract); si no aparece antes, descríbelo ahí como nuevo.
- `S22-Prct-C-ramanathan-coches.org:108`: en «Comandos nuevos» añade `matrix`, `$coeff` y `$vcv` como matrices (sesión 14, S14-D; sesión 21, S21-B) para la actividad 6.

### D1 — S22-Prct-D-hprice1-tasacion.org:334
«En la Actividad 2, los $t$ de las características y el $F$ de omitirlas son pequeños» → «Los $t$ de las características (Actividad 1) y el $F$ de omitirlas (Actividad 2) son pequeños».

### D3 — Citas sin el par pdf+html (§5.1 del Plan)
Convierte en hiperenlaces dobles, a la actividad concreta, las citas de `S14-Prct-B:126`, `S16-Prct-A:112` (tres) y `:414`, las menciones sin enlace de S16-A («práctica que siguió a la lección 8», «práctica B de la sesión 7», «prácticas de las sesiones 11 y 14», «práctica D de la sesión 14»), y las de `S21-A:106, 108`, `S21-B:107`, `S21-C:106, 109–110`. Formato: `[[https://mbujosab.github.io/PEconometria/Practicas-pdf/<f>.pdf#page=N][actividad K]] ([[https://mbujosab.github.io/PEconometria/Practicas-html/<f>.html#ancla][html]])`. El ancla es el `:CUSTOM_ID:` de la actividad; si no tiene, créalo (CamelCase prohibido: minúsculas con guiones, y que no coincida con ningún `#+NAME` del fichero). Las de `S16-Prct-C-sorpresas.org` NO (fichero reservado): anótalas.

### D2 — Páginas de los enlaces (al final, con todo recompilado)
Vuelve a comprobar TODOS los `#page=` de `org-pract/S1[468]-*.org` y `org-pract/S2[12]-*.org` (no los de `org-lessons`, que hace la otra sesión) y corrige los que fallen. Los que el informe ya da por mal: `S18-Prct-C-cobertura.org:359` (→6), `S22-Prct-D-hprice1-tasacion.org:96` (→7), `S21-Prct-B-ramanathan-conjunta.org:98` (→1), `S22-Prct-B-hprice2-vif.org:108` (→4), `S22-Prct-C-ramanathan-coches.org:108` (S21-B →4; S22-B →5). Comprueba también que, tras tus cambios, las prácticas enlazadas desde las lecciones no han movido de página las actividades 6 de S22-C (debe seguir en la 7), 5 de S18-A (6) y 3 de S22-D (4); si se mueven, anótalo en el informe para que la otra sesión ajuste las lecciones.

## Plan de escritura (`doc/prompts/PlanDeEscritura.org`)

Aplica las correcciones de fichas del bloque F del informe en las que «cede la ficha»: F1, F2, F4, F6, F8, F9, F10, F11, F12, F13 (quitar la exigencia para `--fit=cubic`), F14, F15 («aproximadamente»), F16, F17, F19, F21, F22 (copiar en §7.21 el estado actual de t9 o remitir a §7.23), F24, F25, F29, F36 (marcar como aplicadas las «correcciones pendientes» obsoletas, con fecha 2026-10-01) y F37 (las cuatro filas de §10 y las tres menores). En cada ficha, añade la línea «Revisado 2026-10-01: …» en lugar de borrar sin rastro. Deja sin tocar F3, F5, F7, F20, F26, F27 (decisiones del profesor o ficheros reservados) y anótalos.

Añade además, en §7.21 (lección 14) y §7.23 (sesión 22), una línea «Lectura crítica 2026-10-01: informe en doc/prompts/Revision-2026-10-01-lectura-critica-S12-S22.org; aplicados A13, A15, C9–C12, D1, D2 en las prácticas de S22».

## Informe final

En español, conciso: por fichero, qué hallazgos aplicaste (con su número), cifras comprobadas, lo que no aplicaste y por qué, enlaces corregidos (lista) y las actividades cuya página haya cambiado.
