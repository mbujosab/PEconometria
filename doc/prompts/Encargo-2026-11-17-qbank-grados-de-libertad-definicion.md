# Aviso de las lecciones al banco de preguntas (17-11-2026, tarde)

Continúa `Encargo-2026-11-17-qbank-grados-de-libertad-y-muestra-representativa.md`. Decisión del autor
del 17-11 por la tarde, aplicada y compilada en las lecciones 11, 12 y 13 y en las prácticas S18-A,
S20-A, S20-B, S20-C y S25-B (sin commitear ni desplegar todavía). Regla en la Guía de estilo, §7.

## 1. La definición

Lección 11 (`S15-Lecc11.org`, apuntes de «MCO es BLUE; estimando $\sigma^2$»):

> Los *grados de libertad* de un vector son la dimensión del subespacio donde vive. El vector de
> residuos $\boldsymbol{\widehat e}$ pertenece a $\mathbb R^n$, pero las ecuaciones normales (lección 10)
> le imponen $k$ condiciones de ortogonalidad, una por cada columna de $\boldsymbol{\mathsf X}$. Si las
> columnas de $\boldsymbol{\mathsf X}$ son linealmente independientes, los vectores que cumplen esas
> condiciones forman un subespacio de dimensión $n-k$: el residuo tiene $n-k$ grados de libertad. Con
> la constante como único regresor ($k=1$) la única condición es la ortogonalidad a $\boldsymbol 1$, y
> el vector de datos en desviaciones tiene $n-1$ grados de libertad. Es el número que da la regla
> habitual en estadística, observaciones menos parámetros estimados, porque cada parámetro estimado
> corresponde a una ecuación normal.

Los cuatro casos y dónde se dicen por primera vez:

| Vector | Subespacio | Condición de ortogonalidad | Grados de libertad | Lección |
|---|---|---|---|---|
| residuo | ortogonal a las columnas de $\boldsymbol{\mathsf X}$ | las $k$ ecuaciones normales | $n-k$ | 11 |
| datos en desviaciones | $\mathcal L(\boldsymbol 1)^\perp$ | ortogonal a $\boldsymbol 1$ | $n-1$ | 11 |
| ajuste en desviaciones | regresores en desviaciones | ortogonal a $\boldsymbol 1$, dentro de $\mathcal L(\boldsymbol 1,\boldsymbol x_2,\ldots,\boldsymbol x_k)$ | $k-1$ | 13 |
| $\boldsymbol{\widehat y}-\boldsymbol{\widehat y}_r$ | parte del subespacio completo ortogonal al restringido | ortogonal al subespacio restringido (dimensión $k-q$) | $q$ | 13 |

## 2. «Por dimensión» ya no se usa

El aviso de la mañana dejaba «por dimensión» y «repartido entre sus $q$ direcciones» como lectura
geométrica. Las lecciones dicen ahora:

- «cada cateto dividido por sus grados de libertad», «$F$ compara los dos catetos por grado de libertad»;
- «la longitud al cuadrado por grado de libertad del cateto explicado es doscientas cincuenta veces
  mayor que la del residuo»;
- «tiene esperanza $\sigma^2$ por grado de libertad»;
- «el residuo tiene solo $n-k=2$ grados de libertad» (antes «hay solo $n-k=2$ dimensiones para el residuo»);
- «que dividido por los $q=2$ grados de libertad y por $\mathfrak s^2$ da $F=73{,}1$».

«Dimensión» queda para los subespacios: «subespacio de dimensión $k-1$», «se pierde una dimensión».
Las preguntas de repaso 3 y 10 de la lección 13 (opciones «por grado de libertad» y «grados de
libertad del residuo») cambiaron con el mismo criterio.

## 3. Lo que se pide al banco

1. Sustituir «por dimensión», «número de dimensiones» y «$n-k$ dimensiones» por «por grado de
   libertad» / «grados de libertad del residuo, del ajuste» en enunciados, opciones y soluciones.
2. En preguntas de la lección 11 se puede usar ya «grados de libertad del residuo» y «del vector de
   datos en desviaciones»; «del ajuste» y los $q$ de una restricción, desde la lección 13.
3. La hoja de expresiones no cambia.

## Aplicado

Aplicado por la sesión del banco el 17-11-2026 por la tarde (sin commit ni Moodle todavía; `make lint LECCION=13`
limpio). Búsqueda en enunciados, opciones, explicaciones y cadenas del `setup` de L-11 a L-16 y en los constructores;
todo lo que había estaba en L-13 (9 preguntas; 3 de ellas se regeneran desde `bocetos-2026-11-08/construir_L13.py`).

Sustituciones:
- «repartido entre sus $q$ direcciones / dimensiones» → «dividido por sus $q$ grados de libertad»:
  `L-13-DosSalidasDeGretl-x3` (explicaciones de las partes del $F$), `L-13-LeerUnContrasteF`,
  `L-13-QueDiceYQueNoDiceElF`, `L-13-ModeloRestringido`, `L-13-NumerosDelF`, `L-13-TIndividualesPequenosFGrande`.
- «por dimensión», «media por dirección», «número de direcciones» → «por grado de libertad», «por sus grados de
  libertad»: `L-13-DosSalidasDeGretl-x3` ($\bar R^2$ y $F<1$), `L-13-NumerosDelF`, `L-13-PorQueFRondaUno`,
  `L-13-QueContrastaElFDelPie`, `L-13-QueDiceYQueNoDiceElF`.
- «$n-k$ dimensiones residuales», «el residuo vive en $n-4$ dimensiones» → «grados de libertad del residuo», «el
  residuo tiene $n-4$ grados de libertad»: `L-13-MismoR2DistintoVeredicto`, `L-13-LeerUnContrasteF`,
  `L-13-DosSalidasDeGretl-x3`.
- «factor de dimensiones», «depende de las dimensiones», «con las mismas dimensiones» → «cociente de grados de
  libertad», «depende de los grados de libertad», «con los mismos grados de libertad»: `L-13-MismoR2DistintoVeredicto`
  (ocho explicaciones).
- Dos opciones (una verdadera y su gemela falsa) de `L-13-PorQueFRondaUno`: «$k-1$ y $n-k$ son los grados de libertad
  del ajuste y del residuo: dividir cada suma de cuadrados por los suyos da la longitud al cuadrado por grado de
  libertad de cada cateto» / «… por los suyos acota $F$ entre $0$ y $1$» (decían «son las dimensiones de los
  subespacios de los dos catetos: dividir … por la dimensión que le corresponde da la longitud al cuadrado media por
  dirección»).

Se dejan, porque «dimensión» se refiere a un subespacio o «dirección» a una dirección de verdad:
- «subespacio de dimensión…», «una dimensión menos», «el ajuste pierde una dimensión por cada una»;
- «los grados de libertad son las dimensiones de los subespacios donde viven los dos catetos» (`LeerUnContrasteF`) y
  la opción de `QueContrastaElFDelPie` «…son las dimensiones de los subespacios donde viven el cateto explicado y el
  residuo», que es la definición de la lección 11;
- «la suma de cuadrados del residuo dividida por la dimensión $n-k$ del subespacio donde vive» (`NumerosDelF`, y la
  misma idea en `L-12-RuidoEnElPieDeLaTabla`);
- «las $q$ direcciones que el modelo completo tiene y el restringido no», «cada una de las $n-1$ direcciones se lleva
  en esperanza la misma fracción de STC; el cateto explicado ocupa $k-1$ de ellas» (`MismoR2DistintoVeredicto`,
  `PorQueFRondaUno`): si la lección ha cambiado también este argumento del $R^2$ esperado bajo $H_0$, avisad con la
  redacción nueva.

Punto 2 (L-11): no se ha añadido nada; ninguna pregunta de L-11 lo necesitaba. Punto 3: la hoja no se ha tocado.

## Respuesta de las lecciones a la pregunta del banco (17-11-2026, noche)

El argumento del $R^2$ esperado bajo $H_0$ **no ha cambiado**. La lección 13 («Lectura geométrica: la
misma figura» y «Qué dice y qué no dice el $F$») sigue diciendo que la longitud al cuadrado de la
perturbación centrada se reparte en promedio a partes iguales entre las $n-1$ direcciones
ortonormales de $\mathcal L(\boldsymbol 1)^\perp$, que a la recta del regresor le corresponde
$1/(n-1)$ y que el azar produce $1/(n-1)$ de $R^2$ por cada dirección, $(k-1)/(n-1)$ en total. Ahí
«dirección» es un vector de una base ortonormal, y se queda. También se quedan «las $q$ direcciones
que la restricción suprime». Lo que el banco ha dejado está bien.

Dos frases más de la lección 13 cambiadas al releer por este aviso (decían «por dirección» como
divisor):

- «Qué dice y qué no dice el $F$»: «lo que $F$ compara no son las longitudes de los dos catetos, sino
  lo que cada uno mide *por grado de libertad*: la suma de cuadrados del cateto explicado dividida por
  sus $k-1$ grados de libertad y la del residuo dividida por sus $n-k$. Bajo $H_0$ los dos cocientes
  estiman lo mismo, $\sigma^2$, sea cual sea $k$».
- Nota al pie de «El estadístico $F$»: «un vector de $\mathbb R^n$ sin ninguna condición de
  ortogonalidad tiene $n$ grados de libertad», y la cuasivarianza $\mathrm{STC}/(n-1)$ divide «por los
  $n-1$ grados de libertad del vector de datos en desviaciones».

El banco no tiene nada pendiente por este aviso.
