# Aviso de las lecciones al banco de preguntas (17-11-2026)

Respuesta a `Encargo-2026-11-17-desde-qbank-grados-de-libertad-y-muestra-representativa.md`.
Los cambios de las lecciones los decidió el autor el 17-11 y están aplicados y compilados
(lecciones 11, 13 y 14; sin commitear ni desplegar todavía).

## 1. «Grados de libertad»: ya es vocabulario

El término se presenta en la lección 11 y se usa en la 12, la 13 y la 14. Desde hoy las lecciones
dicen de quién son:

- **grados de libertad del residuo**, $n-k$;
- **grados de libertad del ajuste**, $k-1$, uno por regresor no constante.

Los grados de libertad son las dimensiones de los subespacios donde están los catetos. Las lecciones
escriben «del residuo» y «del ajuste», no «de los catetos».

Textos nuevos, por si el banco los copia:

- Lección 11 (`S15-Lecc11.org`, sección de $\mathfrak s^2$): «La expresión $n-k$ recibe, en la
  terminología habitual de la estadística, el nombre de *grados de libertad* del residuo: el número
  de observaciones menos el número de parámetros ya estimados.» (Antes decía «del modelo».)
- Lección 13 (`S19-Lecc13.org`, «El estadístico $F$»): «Su forma depende de los dos números de
  grados de libertad, las dos dimensiones de los subespacios donde viven los catetos del triángulo.
  Son los grados de libertad del ajuste, $k-1$, uno por regresor no constante, y los grados de
  libertad del residuo, $n-k$.»
- Lección 13 («Lectura geométrica: la misma figura»): «*el contraste no mide nada que el $R^2$ no
  midiera ya*; lo que añade es el cociente de los grados de libertad: los $n-k$ del residuo por cada
  uno de los $k-1$ del ajuste.»

La hoja de expresiones no cambia: no nombra los grados de libertad. Lleva $\mathfrak s^2=\mathrm{SRC}/(n-k)$,
$t_{n-k}$ y $F_{q,\,n-k}$; una pregunta que escriba «los grados de libertad del residuo, $n-k$» se
entiende con eso.

## 2. «Muestra representativa»: definida en la lección 14

Lección 14 (`S21-Lecc14.org`, apuntes de «Qué hacer», primer remedio):

> Diremos que la muestra es *representativa* de la población cuando las varianzas muestrales de los
> regresores y las correlaciones entre ellos son próximas a las de la población; con una muestra
> aleatoria (lección 11) de tamaño suficiente es lo esperable. Si la muestra es representativa y se
> añaden más observaciones de la misma población, […] la varianza muestral de cada regresor y la
> correlación entre regresores apenas cambian […]. El VIF se queda donde estaba, la longitud de la
> parte propia crece con $\sqrt n$ y el error estándar baja a ese ritmo.

Son dos condiciones, y las opciones sobre «lo que pasaría con más observaciones» necesitan las dos:

1. la muestra actual es representativa (sus varianzas y correlaciones ya están próximas a las de la
   población);
2. las observaciones nuevas proceden de la misma población.

`L-14-QueHacerYQueNoHacer` dice hoy solo la primera. Comprobar que el enunciado, o cada opción,
dice también la segunda.

El término solo está definido en los apuntes de la lección 14: no usarlo en preguntas de lecciones
anteriores.

## 3. Lo que se pide al banco

**Revisar todos los problemas y adaptarlos al vocabulario de los grados de libertad.** En múltiples
sitios hay frases como «cuántas dimensiones respaldan…» donde es mucho mejor hablar de los grados de
libertad del residuo, de los grados de libertad del ajuste, o del cociente entre ambos. En concreto:

- Buscar en enunciados, opciones y explicaciones de L-11 en adelante: «dimensiones respaldan»,
  «respalda», «cuántas dimensiones», «cuántos datos», «dimensiones del residuo», «por cada regresor»,
  «descuento por», y cualquier otra paráfrasis de $n-k$, de $k-1$ o de $(n-k)/(k-1)$.
- Sustituir cada una por «los grados de libertad del residuo, $n-k$», «los grados de libertad del
  ajuste, $k-1$» o «el cociente de los grados de libertad, $(n-k)/(k-1)$», según el caso.
- En `L-13-QueContrastaElFDelPie`, cambiar «los grados de libertad de los dos catetos» por la forma
  de la lección: «el cociente de los grados de libertad: los $n-k$ del residuo por cada uno de los
  $k-1$ del ajuste».
- No escribir «grados de libertad del modelo»: la lección 11 ya no lo dice.
- La lectura geométrica (grados de libertad = dimensión del subespacio) sigue siendo válida donde la
  pregunta trata de ella; lo que se retira son las frases en que las dimensiones «respaldan» algo.

## Aplicado

Aplicado por la sesión del banco el 17-11-2026 (sin commit ni Moodle todavía). Búsqueda en enunciados, opciones y
explicaciones de L-11 a L-16 de todas las paráfrasis listadas.

Sustituciones (todas en L-13; en explicaciones salvo las tres opciones del final de la lista):
- `L-13-QueContrastaElFDelPie`: «lo que añade es el cociente de los grados de libertad: los $n-k$ del residuo por cada
  uno de los $k-1$ del ajuste».
- `L-13-MismoR2DistintoVeredicto`: «el factor $(n-k)/(k-1)$, el cociente de los grados de libertad del residuo y del
  ajuste» (decía «que cuenta cuántas dimensiones respaldan ese ángulo»); y en dos explicaciones, la distribución
  «depende de los grados de libertad del ajuste, $k-1$, y del residuo, $n-k$» (decía «de las dimensiones de los dos
  catetos»).
- `L-13-PorQueFRondaUno`: «el factor $(n-k)/(k-1)$ es el cociente de los grados de libertad del residuo y del ajuste».

- `L-13-PorQueFRondaUno` (otras dos explicaciones con «cuántas dimensiones respaldan ese ángulo») y `L-13-NumerosDelF`
  («cada una dividida por sus grados de libertad», decía «por su dimensión»).
- Opciones: `L-13-MismoR2DistintoVeredicto`, «$F_c$ es distinto en A y en B porque depende de los grados de libertad del
  ajuste y del residuo…» y «…lo que añade es el cociente de los grados de libertad del residuo y del ajuste»;
  `L-13-PorQueFRondaUno`, «$F$ depende solo del ángulo $\theta$ … y de los grados de libertad del ajuste y del residuo».
- «Dimensión del cateto» (instructor, 17-11: la dimensión es del subespacio donde vive el cateto, no del cateto, y se
  confunde con su longitud): `L-13-LeerUnContrasteF`, «los grados de libertad son las dimensiones de los subespacios
  donde viven los dos catetos»; `L-13-DosSalidasDeGretl-x3`, «cada suma de cuadrados se divide por la dimensión del
  subespacio donde vive su cateto».

Se dejan, por ser la lectura geométrica: «repartido entre sus $q$ direcciones», «por dimensión». Nadie escribía «grados de libertad del modelo». En L-11, L-14, L-15 y L-16 no había nada que cambiar.

Muestra representativa: `L-14-QueHacerYQueNoHacer` dice la primera condición en el enunciado («que es representativa de
la población de la que procede») y la segunda en cada una de las cuatro opciones que la necesitan («con más … de la
misma población»). El término no se usa en ninguna pregunta anterior a L-14.
