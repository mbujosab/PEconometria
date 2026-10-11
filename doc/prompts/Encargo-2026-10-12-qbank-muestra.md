# Para la sesión del banco de preguntas: «muestra» y «muestra aleatoria»

Fecha: 2026-10-12. Decisión del autor tras el encargo
`Encargo-2026-10-11-muestra-dos-sentidos.md` (origen: el boceto
`L-11-DosMuestrasMismoEstimador`, donde «muestra» designaba a la vez la lista
de variables aleatorias y su realización). Aplicada ya a las lecciones
(opción A del encargo; regla en la Guía de estilo §7 y en el Plan §4.2.1;
barrido y lista de cambios en `Revision-2026-10-11-muestra-dos-sentidos.org`).

## Los dos nombres

- **Muestra aleatoria**: la lista $(X_1,\ldots,X_n)$ de $n$ copias idénticas
  e independientes. Son $n$ filas de la matriz de copias, $n$ funciones
  sobre $\Omega$, y no un vector de $\mathbb R^n$. Es el objeto sobre el que
  se evalúa una fórmula de datos para obtener un estadístico (una variable
  aleatoria). Nunca se llama «muestra» a secas.
- **Muestra** (a secas): la realización de la muestra aleatoria en un
  $\omega$. Es una columna de la matriz de copias, $n$ números, un vector de
  $\mathbb R^n$. Sinónimos que las lecciones usan: «vector de datos», «datos
  observados», «muestra observada», «muestra concreta».
- **Muestreo aleatorio**: el supuesto que une las dos caras (los datos son
  una realización de las copias). No cambia.

«Otra muestra», «de una muestra a otra», «todas las muestras posibles» son
otras columnas con las mismas filas, nunca otras filas. «En promedio, sobre
todas las muestras posibles» sigue siendo la glosa de la esperanza fijada el
2026-10-08.

## Cómo redactar

- «Evaluada sobre la muestra aleatoria» cuando el resultado es un
  estadístico (variable aleatoria); «evaluada sobre la muestra» o «sobre los
  datos» cuando el resultado es un número. Nunca «evaluada sobre la muestra»
  para lo primero.
- «Los extremos del intervalo son variables aleatorias, funciones de la
  muestra aleatoria». No «funciones de la muestra».
- «La muestra aleatoria $X_1,\ldots,X_n$», no «las variables aleatorias de la
  muestra».
- «Fijar la muestra aleatoria es elegir $n$ filas; la muestra es una
  columna». No «tomar una muestra es elegir $n$ filas».
- Dos investigadores con datos distintos del mismo mundo: «la misma muestra
  aleatoria, dos muestras» o «la misma muestra aleatoria, dos columnas». El
  boceto `L-11-DosMuestrasMismoEstimador` ya está escrito así.
- Todo lo que signifique datos queda como está: «muestra de 1000 salarios»,
  «muestra pequeña», «muestras grandes», «en esta muestra concreta», «la
  muestra de doce viviendas», la «muestra» que `smpl` restringe en Gretl.

## Frases que las lecciones usan ahora (para copiarlas tal cual)

- L11, pie de la figura de la matriz de copias: «Elegir $n$ filas es fijar
  la muestra aleatoria; elegir una columna es fijar un suceso elemental
  $\omega$ donde evaluar las infinitas copias; las dos cosas a la vez dan el
  vector de $\mathbb R^n$ de la derecha: la muestra, la realización de la
  muestra aleatoria en ese $\omega$. Los datos observados son una columna;
  repetir el muestreo es recorrer otras columnas con las mismas filas.»
- L11, apuntes: «Esa lista es la *muestra aleatoria*. [...] Las dos cosas a
  la vez dan un vector de $\mathbb R^n$, la realización de la muestra
  aleatoria en ese $\omega$: eso es la *muestra*, el vector de datos. [...]
  En lo que sigue, “otra muestra” es siempre otra columna con las mismas
  filas.»
- L11: «Si aplicamos la misma fórmula a las muestras aleatorias
  $\boldsymbol X$ y $\boldsymbol Y$, el resultado es una función de
  variables aleatorias.»
- L12: «Lo aleatorio es el intervalo, cuyos extremos son variables
  aleatorias, funciones de la muestra aleatoria; no el parámetro.»
- Apéndice §3: «La muestra aleatoria de tamaño $n$ es elegir $n$ filas. [...]
  $n$ filas y una columna a la vez dan un vector de $\mathbb R^n$: la
  muestra, la realización de la muestra aleatoria en $\omega$. Ese es el
  único lugar donde la muestra aleatoria se convierte en un punto de
  $\mathbb R^n$. Otra muestra es otra columna con las mismas filas.»

## Qué revisar en el banco

Según el recuento del 2026-10-11: 56 «muestra» a secas, 8 «de una muestra a
otra», 5 «muestras posibles», 4 «muestra aleatoria» y 4 «muestra observada»
en `preguntas/*.json`. Casi todo queda bien bajo esta regla. Hay que cambiar:

1. `L-12-IntervaloYContraste`: «funciones de la muestra» → «funciones de la
   muestra aleatoria».
2. Cualquier «muestra» a secas que signifique la lista de variables
   aleatorias (señales: «evaluada sobre la muestra» con resultado variable
   aleatoria; «las variables aleatorias de la muestra»; «elegir $n$ filas»).
3. Comprobar que ningún enunciado diga «otra muestra» queriendo decir otras
   filas.
