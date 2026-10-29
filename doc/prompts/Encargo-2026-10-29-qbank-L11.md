# Para la sesión del banco de preguntas: lección 11 tras la auditoría del 29-10

Fecha: 2026-10-29. Decisiones del autor tras la auditoría de fondo de la
lección 11 (`Informe-2026-10-29-auditoria-L11.org`), aplicadas ya a la
lección, al apéndice de geometría, a la Guía de estilo §7 y a las figuras de
la matriz de copias. Tres cosas afectan a lo que el banco pueda tener
registrado.

## 1. La homocedasticidad condicionada a toda la matriz X se deduce, no se impone

Hasta el 28-10 la lección 11 decía que la varianza de cada $U_i$ condicionada
a *toda* la matriz $\boldsymbol X$ «no es un corolario de la definición de
$U_i$ ni del muestreo aleatorio» y «la estamos imponiendo». Desde el 29-10
dice lo contrario, que es lo que demuestra el apéndice, sección 6.1:

> «al enunciar el supuesto de homocedasticidad, la varianza de cada $U_i$ se
> condiciona a *toda* la matriz $\boldsymbol X$, no solo a $X_i$. Es la forma
> que hace falta para todo lo que sigue y, como la exogeneidad estricta, se
> deduce de la homocedasticidad poblacional de la lección 9 y del muestreo
> aleatorio: $U_i^2-\sigma^2\,\mathit1$ es una función centrada de la copia
> $i$, ortogonal a toda función de las demás copias.»

Lo mismo vale para la incorrelación condicionada, $Cov[U_i,U_j\mid\boldsymbol
X]=\mathit0$: de la independencia sale la covarianza sin condicionar; la
condicionada a $\boldsymbol X$ se obtiene con el mismo argumento de 6.1.
Cualquier pregunta cuya respuesta correcta diga que la homocedasticidad
condicionada a $\boldsymbol X$ «es un supuesto adicional» o «se impone» debe
corregirse; una opción que lo diga puede quedar como distractor.

## 2. «Otra muestra» son otras filas en el mismo ω (corrige el encargo del 12-10)

El encargo `Encargo-2026-10-12-qbank-muestra.md` decía: «“Otra muestra”, “de
una muestra a otra”, “todas las muestras posibles” son otras columnas con las
mismas filas, nunca otras filas». Esa frase queda anulada. Regla vigente
(Guía §7, decisión del autor del 29-10):

- La muestra aleatoria es elegir $n$ filas de la matriz de copias (una lista
  de $n$ funciones sobre $\Omega$). Esas funciones se evalúan siempre en un
  único suceso elemental $\omega$, nunca en varios.
- «Otra muestra», «repetir el experimento», «de una muestra a otra» es otra
  lista de copias, otro bloque de $n$ filas, evaluado en ese mismo $\omega$.
  Nunca la misma lista en otro $\omega$.
- El Monte Carlo de Gretl consume un solo $\omega$ y toma bloques sucesivos
  de filas (apéndice, sección 3). La distribución de un estadístico describe
  cómo varía de un bloque de filas a otro.

Las frases del encargo del 12-10 que decían «otra columna con las mismas
filas» ya no están en las lecciones ni en el apéndice. Las figuras de la
matriz de copias (lección 11 y apéndice) ya no dibujan una segunda columna
$\omega'$. Hay que revisar en el banco toda pregunta que hable de «otras
columnas», «otro $\omega$» o «la misma muestra aleatoria en otro suceso
elemental» como sinónimo de otra muestra.

## 3. «Perturbación», no «ruido»

$U$ se llama *perturbación*. «Ruido» ha salido del apéndice el 29-10 y
saldrá de las lecciones 12 y 13 en su relectura. En el banco, sustituir
«ruido» por «perturbación» (o, cuando se hable de su tamaño, por «varianza»,
«desviación típica» o «longitud de $U$»).

## Otros cambios menores de la lección 11 que no cambian ninguna afirmación

- Transparencia «El marco»: «los $n$ datos son la realización de $n$ copias
  idénticas e independientes de $Y$» (antes «son $n$ copias»).
- Transparencia «MCO es BLUE»: fragmento nuevo con el porqué de $n-k$ (el
  residuo vive en un subespacio de dimensión $n-k$; SRC es una suma de $n-k$
  cuadrados de esperanza $\sigma^2$; con $k=1$, el $n-1$ del curso de
  Estadística).
- Recapitulación: «la insesgadez solo necesita linealidad y
  $\mathrm{Var}(X)\neq0$ (más el muestreo aleatorio...)».
- Preguntas de repaso 6 y 12 de la lección: la 6 dice ahora que el Lema «se
  demuestra (en el apéndice)»; la 12 añade que la diagonal de la matriz de
  varianzas sí está demostrada en el apéndice, sección 7.1.

## Aplicado

Sesión del banco, 2026-10-29 (Fable). Barrido de las 70 preguntas; sin commit
ni Moodle todavía.

1. **Homocedasticidad condicionada.** Ninguna pregunta la presenta como
   supuesto adicional o impuesto. Las dos apariciones de «supuesto adicional»
   (L-09-DescomposicionNoImplicaCausalidad, L-09-PerturbacionQueEs) hablan de
   la homocedasticidad a secas frente a la proyección ortogonal, no de la
   versión condicionada a $\boldsymbol X$. Regla añadida al checklist de
   `PROMPT-generar-preguntas.org`.
2. **«Otra muestra».** Ninguna pregunta decía «otra columna». Dos lo decían
   con otras palabras y se han corregido:
   - L-11-DosMuestrasMismoEstimador: la opción «son una realización de la
     misma muestra aleatoria» pasa a «son los valores de $n$ copias de
     $(X,Y)$: dos muestras aleatorias distintas, con la misma distribución»; el exp
     «los dos han evaluado las mismas copias en dos sucesos elementales
     distintos» pasa a «dos muestras aleatorias distintas […] en el mismo
     $\omega$»; «dos realizaciones de la misma variable aleatoria / del
     mismo estimador» pasa a «los valores de dos copias del mismo
     estimador» (siete exp en total).
   - L-11-EstimadorYEstimacion: «(a cada suceso elemental, una muestra
     distinta y un valor distinto de la fórmula)» pasa a «(a cada suceso
     elemental le asigna un valor de la fórmula)».
   Regla del checklist reescrita; la entrada de TODO.org del 12-10 anotada.
3. **«Ruido».** Sustituido en 8 ficheros (L-11-QueHaceMasPrecisoAlEstimador,
   L-11-QueSupuestoHaceQue, L-12-IntervaloYContraste,
   L-12-RuidoEnElPieDeLaTabla, L-13-MismoR2DistintoVeredicto,
   L-13-PorQueFRondaUno, L-13-TIndividualesPequenosFGrande,
   L-14-TablaAntesYDespues): «perturbación», «varianza de la perturbación»,
   «perturbación más dispersa», «longitud estimada de la perturbación».
   El nombre de fichero `L-12-RuidoEnElPieDeLaTabla` se conserva (renombrar
   obliga a rehacer su categoría de Moodle y la selección); decisión del
   instructor.

Pendiente: commit y reimportar en Moodle las categorías de L-11..L-14
afectadas.
