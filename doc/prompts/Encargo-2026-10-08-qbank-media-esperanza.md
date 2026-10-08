# Para la sesión del banco de preguntas (qbank-PEconometria): media, media muestral, valor esperado y esperanza

Fecha: 2026-10-08. Decisión del autor tras encontrar «gasto medio» por
$E[Y\mid X]$ en `L-09-QueSignificaUnSupuesto`. Las lecciones ya están
corregidas con esta regla (commit en PEconometria del 2026-10-08; informe en
`doc/prompts/Revision-2026-10-08-media-esperanza.org`); el banco debe
revisarse entero con ella.

## La regla (cinco conceptos distintos)

| Objeto | Qué es | Cómo se dice |
|---|---|---|
| $\mu_{\boldsymbol y}$ | número, de un vector de datos | **media** (aritmética); también «media de grupo», «precio medio de los 506 barrios» |
| $\boldsymbol{\overline y}=\mu_{\boldsymbol y}\boldsymbol 1$ | vector constante de $\mathbb R^n$ | **vector de medias** (sin «muestral») |
| $\overline X=\frac1n\sum_i X_i$ | estadístico: variable aleatoria (lección 11) | **media muestral**; nunca para la media de unos datos |
| $\mathrm E(Y)$ | número | **valor esperado** (o «esperanza matemática») |
| $E[Y\mid X]$, $E[Y\mid\mathit 1]$ | variable aleatoria | **esperanza condicional** |

«Esperanza» a secas vale para las dos caras ($\mathrm E(Y)$ y $E[Y\mid\mathit 1]$)
cuando no hace falta distinguirlas.

## Consecuencias para redactar preguntas

1. $E[Y\mid X]$ es «el gasto esperado dada la renta», «la esperanza
   condicional del gasto»; nunca «gasto medio», «gasto medio condicional» ni
   «media condicional». La etiqueta de Wooldridge «SLR.4, media condicional
   nula» (*zero conditional mean*) es errónea con nuestras definiciones: en
   la lección 9 dice ahora «esperanza condicional nula».
2. Una variable aleatoria tiene valor esperado y varianza, no «media y
   varianza»: «el valor esperado y la varianza de $\hat\beta_2$».
3. El parámetro de una distribución es su esperanza: «normal de esperanza
   $0$ y varianza $\sigma^2$», «$F$ con esperanza próxima a $1$», «esperanza
   y varianza no determinan la distribución». No «normal de media $0$»,
   aunque Wooldridge y Gretl lo digan.
4. «Media muestral» solo para el estadístico $\overline X$ (una variable
   aleatoria). La media de unos datos concretos es «la media» («la media de
   `medv` en cada grupo», «la media de la indicadora es la proporción del
   grupo en la muestra, la estimación de $\mathrm P(A)$»).
5. La única glosa coloquial de la esperanza es «en promedio» («en promedio,
   sobre todas las muestras posibles»). «En media» no se usa.
6. Dos frases de las lecciones que el banco cita:
   - «el cateto explicado … tiene media nula con su signo» (lección 12) se ha
     corregido a «tiene esperanza nula con su signo». Si `L-12` la copia,
     cambiarla.
   - «truco del vector de media nula» (lección 9) es el nombre del truco de
     la lección 6, aplicado «ahora con variables aleatorias», y se queda.
7. `L-11-QueSignificaInsesgado`: «el promedio de las estimaciones sobre
   todas las muestras posibles» está dentro de la regla 5; si se quiere más
   rigor, «la esperanza de $\hat\beta_2$: su promedio sobre todas las
   muestras posibles».

## Qué hacer

Barrer todo el banco (no solo `L-09`) con estas reglas, listar los cambios
por pregunta y no tocar las matemáticas sin proponer antes.
