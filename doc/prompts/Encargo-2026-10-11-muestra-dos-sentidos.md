# Encargo: «muestra» tiene dos sentidos en las lecciones (lista de variables aleatorias y realización) y conviene separarlos

Fecha: 2026-10-11. Para una sesión de Claude sobre el repositorio `PEconometria`.
Origen: sesión del banco de preguntas (`qbank-PEconometria`). Al leer el
boceto `L-11-DosMuestrasMismoEstimador` el autor señaló que una cuestión era
confusa porque «muestra» designaba a la vez el *modelo muestral* (la lista de
variables aleatorias $(X_1,Y_1),\ldots,(X_n,Y_n)$) y los *datos muestrales*
(una realización de esa lista, un vector de $\mathbb R^n$). Pidió comprobar si
la ambigüedad es general en el material del curso. Lo es: las lecciones usan
las dos acepciones, y en dos sitios la misma palabra significa cosas
distintas en frases contiguas. El autor aún no ha decidido los nombres (ver
«Qué decidir»); este encargo es para estudiar el arreglo y proponerlo, no
para ejecutarlo sin esa decisión.

## El problema, con las citas (líneas del commit 1b6d299 de PEconometria)

Hay un vocabulario explícito para cada cara, y las lecciones lo usan bien
cuando lo usan:

- Lista de variables aleatorias: «muestra aleatoria» (L11 §«El marco:
  muestra aleatoria», 9 veces; L12, 4; L13, 4; apéndice, 5), «evaluada
  sobre la muestra aleatoria», «las variables aleatorias de la muestra».
- Realización: «vector de datos» (11+7+10+6+9 veces), «muestra observada»
  (L11:511, 525), «muestra concreta», «muestra de datos» (L11:105,
  L12:375), «datos observados», «realización de la muestra» (L11:112, 115;
  apéndice:181).

El problema es la palabra sola, «muestra», que unas veces es la lista y
otras la realización:

1. Sentido lista (filas de la matriz de copias):
   - L9:67: «tomar una muestra es elegir $n$ filas, y los datos observados
     son una columna».
   - L11:112 (pie de la figura): «Elegir $n$ filas es crear una muestra;
     elegir una columna es fijar un suceso elemental».
   - Apéndice:179: «Una muestra de tamaño $n$ es elegir $n$ filas»; :184:
     «Elegir $n$ filas es tomar una muestra».
   - Apéndice, unas veinte veces: «evaluada sobre la muestra», «Pitágoras
     en $\mathbb R^n$ evaluado sobre la muestra» (= sobre las variables
     aleatorias).
2. Sentido realización (columna):
   - L11:105: «de cuánto varía de una muestra a otra, necesitamos imaginar
     que la muestra de datos podría haber sido distinta».
   - L11:234: «en esa muestra han tomado todas el mismo valor» (= en ese
     $\omega$).
   - L11:305, 395: «en promedio, sobre todas las muestras posibles» (es la
     glosa coloquial de la esperanza fijada el 2026-10-08).
   - L12:201: «cuánto variaría el número que hemos calculado si volviéramos
     a tomar otra muestra».
   - L9:60: «una muestra de 1000 salarios»; L12:543: «la fuerza de la
     relación en la muestra».

Las dos acepciones chocan en el propio pie de figura de L11:112: «elegir
$n$ filas es crear una muestra» y, tres frases después, «repetir el
experimento es recorrer otras columnas con las mismas filas». Si una muestra
son las filas, «otra muestra» (L11:105, L12:201) debería ser otras filas;
pero lo que las lecciones quieren decir con «otra muestra» es otra columna
con las mismas filas. Un alumno que tome la definición del pie de figura
al pie de la letra no puede entender «de una muestra a otra».

## Qué decidir (el autor)

Hacen falta dos nombres distintos y una regla para la palabra sola. Dos
opciones coherentes:

- **Opción A (recomendada).** «Muestra» a secas = los datos (la
  realización, la columna, el vector de $\mathbb R^n$); la lista de
  variables aleatorias se llama siempre «muestra aleatoria» (o «modelo
  muestral», si se prefiere un nombre sin la palabra), nunca «muestra».
  Ventajas: es el uso coloquial («una muestra de 1000 salarios», «otra
  muestra», «de una muestra a otra», «todas las muestras posibles»), es el
  más frecuente en las lecciones y en el banco, y «muestra aleatoria» ya es
  el título de la sección de L11 que define la lista. Coste: reescribir las
  cuatro frases «tomar/crear una muestra es elegir $n$ filas» (L9:67,
  L11:112, apéndice:179 y :184) como «fijar la muestra aleatoria es elegir
  $n$ filas; una muestra es una columna», y añadir «aleatoria» a las
  «evaluada sobre la muestra» del apéndice (unas veinte, mecánico).
- **Opción B.** «Muestra» a secas = la lista de variables aleatorias; la
  realización se llama siempre «datos», «vector de datos» o «muestra
  observada». Coste: reescribir «otra muestra», «de una muestra a otra»,
  «muestras posibles», «muestra de 1000 salarios» en L9, L11, L12, L13 y
  prácticas (S16 Monte Carlo, S18), y la glosa «en promedio, sobre todas
  las muestras posibles» pasaría a «sobre todas las realizaciones posibles».

En cualquiera de las dos, conviene una frase definitoria al introducir la
matriz de copias (L11 §«El marco: muestra aleatoria» y apéndice §3) que
diga explícitamente: «la lista $(X_1,\ldots,X_n)$ es la muestra aleatoria
($n$ filas, $n$ funciones sobre $\Omega$); la muestra, o vector de datos,
es su valor en un $\omega$ (una columna, $n$ números). Repetir el muestreo
es cambiar de columna, no de filas». Y «muestreo aleatorio» sigue siendo el
supuesto que une las dos caras (nuestros datos son una realización de las
copias), como ya dice L11:682.

## Qué hacer en esta sesión

1. Leer este encargo y L11 §«El marco: muestra aleatoria», L9 §(la
   matriz de copias, línea 67) y apéndice §3.
2. Barrer S12-Lecc09, S15-Lecc11, S17-Lecc12, S19-Lecc13, el apéndice y las
   prácticas S16 y S18 buscando `muestra` (sustantivo) y clasificar cada
   aparición en lista / realización / ambigua, con línea y frase.
3. Proponer al autor la redacción de la regla para la Guía de estilo (§7,
   «Matemáticas y rigor») y para el Plan (§4.2.1, notación), y la lista de
   cambios por fichero bajo la opción que elija. No tocar las lecciones
   antes de esa decisión.
4. Cuando se aplique, avisar al banco de preguntas (`qbank-PEconometria`)
   con los nombres elegidos: hay 56 «muestra» a secas, 8 «de una muestra a
   otra», 5 «muestras posibles», 4 «muestra aleatoria» y 4 «muestra
   observada» en `preguntas/*.json`. Bajo la opción A casi todo el banco
   queda bien; la única frase que hay que cambiar seguro es «funciones de la
   muestra» en `L-12-IntervaloYContraste` («funciones de la muestra
   aleatoria»). El boceto `L-11-DosMuestrasMismoEstimador` ya se ha escrito
   con la opción A (muestra aleatoria / datos de cada investigador).
