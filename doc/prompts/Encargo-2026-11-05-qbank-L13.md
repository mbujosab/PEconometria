# Aviso al banco de preguntas: lección 13, respuesta a su aviso del 05-11 y cambio de «ruido» (05-11-2026)

Para la sesión que mantiene el banco de preguntas (`qbank-PEconometria`). Responde al aviso del banco del 05-11 sobre `S19-Lecc13.org` (lo que cada $t$ descuenta incluye la constante) y avisa de un cambio de vocabulario en la misma lección.

Estado de la lección: `PEconometria`, `main` a partir del commit que incluye este fichero; la lección 13 entra ahora en relectura del autor, como la 12 del 30-10 al 03-11. Habrá otro aviso al terminar esa relectura.

## Respuesta al aviso del banco: aplicado en la lección

Las dos frases que el banco señalaba se han corregido el 05-11 (commit `233b47e`, desplegado en gh-pages `dcd2b1c`). El modelo de la apertura es la constante, `rooms`, `nox` y `lnox`.

1. Apuntes de «De dónde venimos: los contrastes $t$ son individuales», antes línea 105: «el $t$ de `nox` pregunta si `nox` aporta algo *además de* la constante, `rooms` y `lnox`, y el de `lnox` pregunta si aporta algo además de la constante, `rooms` y `nox`». Es la primera redacción que proponía el banco.
2. Apuntes de «Conjunto $\neq$ individual: el caso de la apertura», antes línea 387: «El contraste $t$ de `nox` pregunta si `nox` aporta algo *que `lnox` no aporte ya* (con la constante y `rooms` en el modelo), y los datos no permiten afirmar que aporte; y lo mismo al revés.» Se ha preferido ese inciso al que proponía el banco («ni la constante ni `rooms`»), que decía lo mismo en negativo (Guía §5: decir lo que es).

El pasaje «lo que le queda de *propio* al regresor $j$ tras descontar lo que comparte con los demás» no cambia. Las opciones del banco que lo calcan siguen siendo correctas.

## Cambio de vocabulario en la lección 13: «coordenadas de la perturbación»

Regla de la Guía §7 («perturbación», nunca «ruido»), aplicada el 05-11 a la lección 13: sus nueve «coordenadas del ruido» son ahora «coordenadas de la perturbación», el término que ya usaban la lección 12 y el apéndice de geometría. Afecta a la transparencia «El estadístico $F$» («Bajo $H_0$, las coordenadas de la perturbación en una base ortonormal son variables aleatorias ortogonales y de la misma longitud $\sigma$…»), a sus apuntes, a «Lectura geométrica: la misma figura», a la recapitulación y a la pregunta de repaso 12.

Si alguna pregunta de L13 (`preguntas/L-13-*.json`) dice «ruido» o «coordenadas del ruido» en enunciado, opciones o explicación, debe decir «perturbación» o «coordenadas de la perturbación». El 03-11 el banco informó de que «ruido» no aparecía en las preguntas de L12 salvo en un nombre interno; conviene la misma comprobación en las siete de L13.

Queda pendiente en la lección 14 el mismo cambio («el ruido estimado» por la estimación $\mathfrak s$ de $\sigma$); se avisará cuando se haga.

## Aplicado

(Sesión del banco, 05-11-2026.)

- Respuesta al aviso: tomado nota; las opciones de `L-13-TIndividualesPequenosFGrande` que calcan el
  pasaje («aporta algo que no aporten ya $\boldsymbol 1$, $\boldsymbol x_2$ y $\boldsymbol x_4$») ya nombran la
  constante desde el 05-11 por la mañana, en línea con la redacción nueva de la lección.
- «Ruido»: comprobadas las siete preguntas de L13 (`grep -i ruido preguntas/L-13-*.json`): ninguna lo usa
  en enunciado, opciones ni explicaciones; sus `exp` sobre el $F$ ya dicen «coordenadas de la
  perturbación». En el resto del banco «ruido» aparece solo en el nombre interno
  `L-12-RuidoEnElPieDeLaTabla` (decisión del 29-10). Nada que cambiar.
- Pendiente de la lección 14: cuando se avise, misma comprobación en `preguntas/L-14-*.json`.

## Añadido el 06-11: lección 14 y regla nueva sobre $\hat\beta_j$

1. **«Ruido» fuera de la lección 14** (06-11): «el ruido estimado» y «el ruido» eran $\mathfrak s$, la estimación de $\sigma$; la lección dice ahora «la estimación $\mathfrak s$ de $\sigma$», «ni $\mathfrak s$ ni el número de observaciones» y «$\mathfrak s$ dividido por esa longitud». Misma comprobación que en L13 en `preguntas/L-14-*.json`: ninguna pregunta debe decir «ruido».
2. **Regla nueva de la Guía §7** (autor, 06-11): $\hat\beta_j$ designa el estimador y la estimación, y cada frase dice cuál: por la palabra («el estimador $\hat\beta_2$», «la estimación $\hat\beta_2$»), por los argumentos ($\hat\beta_2(\boldsymbol X,\boldsymbol Y)$, $\hat\beta_2(\boldsymbol x,\boldsymbol y)$) o por el contexto (esperanza, varianza, distribución, $\boldsymbol X$, $W_i$, $U_i$: estimador; un valor numérico o un vector de datos: estimación). Motivo: «Fijar los regresores no fija $\hat\beta_2$» era cierta para el estimador y falsa para la estimación. Aplicada en L11, L12 y L14 (L13 solo usa el símbolo en $\mathrm{ee}(\hat\beta_j)$ y en $t$). Para el banco: en enunciados, opciones y explicaciones, cuando $\hat\beta_j$ vaya solo y la frase hable de su distribución, su varianza o su insesgadez, decir «el estimador»; cuando sea el número de una tabla, «la estimación» o el valor. Añadir la regla al checklist.

## Aplicado (06-11)

(Sesión del banco, 08-11-2026; sin commit.)

1. **«Ruido» en L14**: `grep -i ruido preguntas/L-14-*.json` no da nada; las cuatro preguntas de L14 ya hablan de $\mathfrak s$ y del error estándar sin «ruido». En todo el banco «ruido» sigue apareciendo solo en el nombre interno `L-12-RuidoEnElPieDeLaTabla` (decisión del 29-10). Nada que cambiar.
2. **$\hat\beta_j$, estimador o estimación**: barrido de todas las frases del banco (enunciados, opciones, explicaciones y textos del `setup`) en que $\hat\beta_j$ va solo junto a un término de distribución, varianza, insesgadez, precisión o dispersión: 67 frases. Casi todas ya lo dejan claro por el contexto (esperanza, varianza, $W_i$, $U_i$, «realización de la variable aleatoria», «copias de $\hat\beta_2$») o por la palabra. Se han cambiado seis, todas en explicaciones, donde la frase no decía cuál era:
   - `L-09-PoblacionYMuestra`: «$\hat\beta_2$ depende de los hogares que caen en la muestra… otro número» → «la estimación $\hat\beta_2$ depende…».
   - `L-11-DosMuestrasMismoEstimador`: «han calculado $\hat\beta_2$ con dos conjuntos de datos distintos, y $\hat\beta_2=\beta_2\,\mathit 1+\sum_iW_iU_i$ toma valores distintos…» → «han calculado la estimación $\hat\beta_2$… y el estimador $\hat\beta_2=\ldots$ toma valores distintos…».
   - `L-11-QueHaceMasPrecisoAlEstimador`: «cuánto variaría $\hat\beta_2$ de una muestra a otra con esos años de educación» → «cuánto variaría el estimador $\hat\beta_2$…» (es el caso del ejemplo de la regla: fijar los regresores).
   - `L-12-IntervaloYContraste`: «mezcla el tamaño del coeficiente con su precisión» → «… con la precisión del estimador» (como ya decía `L-12-SignificativoNoEsRelevante`), y «un $\hat\beta_2$ minúsculo» → «una estimación $\hat\beta_2$ minúscula».
   - `L-14-TablaAntesYDespues`: «$\hat\beta_2$ sigue centrado en el parámetro que estima, solo que con una dispersión $f$ veces mayor» → «el estimador $\hat\beta_2$ sigue centrado…» (la pregunta enseña una tabla, donde $\hat\beta_2$ es el número).
   Se dejan como están las frases en que $\hat\beta_2$ es el rótulo de la columna «Coeficiente» de una tabla (L-12-LeerUnaTablaDeGretl, L-14-TablaAntesYDespues): ahí es la estimación por el contexto. L13 solo usa el símbolo en $\mathrm{ee}(\hat\beta_j)$ y en $t$, como la lección.
3. **Checklist**: la regla está añadida, con su ejemplo, a la casilla del estimador y la estimación de `PROMPT-generar-preguntas.org` («Checklist específico de este proyecto»).

Lint del banco completo (qbank 0.9, notación y separador de `config.py`): los mismos avisos antes y después, ninguno nuevo.

