# Aviso al banco: auditoría de la lección 15 (formas funcionales con logaritmos)

Escrito el 24-11-2026 por la sesión del curso. Ninguna cifra de Gretl ha cambiado. Cambia una opción correcta de las preguntas de repaso (pregunta 12) y varias redacciones. No se piden preguntas nuevas.

Detalle de cada cambio: `doc/prompts/Informe-2026-11-23-auditoria-L15.org`, apartado «Aplicado». Fichero: `org-lessons/S23-Lecc15.org` (sin commitear al escribir este aviso).

## Lo que ha cambiado en la lección

### 1. Afirmaciones que eran falsas o que se han retirado

Si alguna pregunta del banco las da por ciertas, hay que revisarla.

- **Cambio de unidades con logaritmos.** Antes: «las dos pendientes, el $R^2$, $\mathfrak s$ y todos los $t$ quedan iguales». Es falso para el $t$ de la constante (con `lprice` sobre `rooms` y `lnox`, pasa de $49{,}2$ a unos $12$ al medir el precio en miles). Ahora: «las dos pendientes, sus errores estándar y sus $t$, el $R^2$ y $\mathfrak s$ quedan iguales». Pregunta 12 de la lección, opción 2: «pendientes, $R^2$, $\mathfrak s$ y contrastes sobre las pendientes quedan iguales».
- **Por qué $e^{\hat y}$ subestima.** Antes: «los valores de $U$ por encima de cero multiplican el precio por más de lo que los valores por debajo lo dividen» (falso: multiplican y dividen por lo mismo). Ahora: «suman al precio más de lo que restan los valores por debajo: con $U=0{,}3$ el precio se multiplica por $1{,}35$ y con $U=-0{,}3$ por $0{,}74$».
- **«La aproximación se queda corta».** Solo es cierto en el log-nivel con aumentos. En el nivel-log la aproximación da más que el cálculo exacto ($29{,}8$ frente a $28{,}4$ mil). Ahora la lección dice que la aproximación «no sirve» para cambios grandes, sin dirección.
- **Retirado:** «con más regresores fijos, la elasticidad estimada es mayor en valor absoluto» (la lección da $-1{,}04$ sin `rooms`, $-0{,}72$ con `rooms` y $-0{,}954$ con cuatro regresores).
- **Retirado** el párrafo que afirmaba que «el ajuste no distingue entre formas funcionales en las regiones donde abundan los datos», que eso es «un rasgo de mínimos cuadrados» y que «la pendiente de la recta es una media de las pendientes de la curva». La lección solo afirma ya que en `hprice2` recta y curva casi coinciden entre `nox` $4$ y $7$ («en este ejemplo»).
- **Pregunta 7 de la lección, opción 2 (la correcta).** Antes decía que la elasticidad del modelo en niveles «crece con $x$» y que el ajuste «es casi igual» en el modelo en niveles y en el log-log. Lo segundo compara $R^2$ de regresandos distintos. Ahora: «una elasticidad que cambia con el punto: mayor en valor absoluto cuanto mayor es $x$ y menor es $\hat y$. El modelo log-log impone una elasticidad constante y un efecto absoluto que cambia con el punto. Los datos no determinan cuál de las dos formas es la adecuada.»
- **Recapitulación.** Antes: comparar «sobre las previsiones obtenidas para la misma variable explicativa». Ahora: «de la misma variable, el regresando en niveles».

### 2. Términos y notación

- **«Variable indicadora»**, nunca «dicotómica» (es el término que fija la lección 16). Siete apariciones cambiadas.
- **`price` cuando se le aplica una medida de centralidad.** El dato de `hprice2` es ya el precio mediano del barrio. Se escribe «la media de `price`», «la mediana de `price`», «la esperanza de `price`», no «precio medio», «precio esperado» ni «mediana del precio». Donde se describe el dato de un barrio sigue valiendo «precio mediano».
- **$\hat y$ en «Previsión»** es «la previsión del logaritmo del precio, no la del precio»; ya no «el ajuste».
- **$\hat\beta_1$, $\hat\beta_2$** en la tabla de elasticidades; $b_1$, $b_2$ no se usan.
- **Esperanza condicional en un barrio.** Antes: $E[\,Y\mid\boldsymbol X\,]=e^{\boldsymbol x\cdot\boldsymbol\beta}e^{\sigma^2/2}$. Ahora: «$E[\,Y\mid\boldsymbol X\,]$ evaluada en ese barrio es $e^{\boldsymbol x\cdot\boldsymbol\beta}e^{\sigma^2/2}$». No se usa $\hat E$.
- **$V$ en Cobb–Douglas** queda definida: «el término de error de la función de producción es $V$, todo lo que influye en el producto y no es trabajo ni capital».
- **No cambia:** en «Previsión», «si la esperanza de $U$ es cero, como supone el modelo ($E[U\mid\boldsymbol X]=\mathit 0$, lección 9)» se deja por decisión del autor: al aplicar el modelo a unos datos sí es una suposición. No aplicar ahí la regla del aviso del 23-11.
- **Sin agentes abstractos.** El lema «Mínimos cuadrados ve columnas. El economista lee variables» pasa a «La estimación opera sobre columnas. La lectura económica, sobre variables». También fuera «la geometría no distingue», «los datos no dicen».
- **«Es habitual usar una aproximación»**, no «basta una aproximación»: la aproximación $\log(1+p)\approx p$ puede no ser aceptable.

### 3. Lecturas de contrastes y cifras añadidas

- Cuentas con un decimal más para que se puedan repetir: $e^{0{,}08274}-1=0{,}0863$; previsión $\hat y=9{,}8458$ y $e^{9{,}8458}=18879$. Las tablas siguen con $0{,}0827$.
- «Efecto por fracción» desaparece: el coeficiente del nivel-log es un «cambio absoluto por variación relativa».
- Elasticidad unitaria: «el $-1$ está dentro del intervalo», no «cerca del centro».
- En «Previsión», los coeficientes se nombran $\hat\beta_{\text{rooms}}$ y $\hat\beta_{\text{lnox}}$.

- Cada lectura de una salida lleva su nivel: «no se rechaza $H_0$ al 5 %» (elasticidad unitaria; rendimientos constantes); elasticidad del capital, «se rechaza al 5 % que valga cero y no se rechaza al 1 %».
- $H_0\!:\beta_{\text{lnox}}=0$ en el modelo de Wooldridge: $t=-8{,}17$.
- Log-nivel de `hprice2`: el $12{,}3\,\%$ es la aproximación; el cálculo exacto da un $11{,}6\,\%$ menos.
- Transparencia del nivel-log: «unos $28$ mil más, con el cálculo exacto»; «El valor del pie adicional es $297\,900/\text{sqrft}$ dólares: $298$ en una casa de $1000$ pies y $74$ en una de $4000$».
- La tabla de tres regresiones de `nox` y `lnox` se cita ahora en la lección 13, «Conjunto ≠ individual: el caso de la apertura» (ancla `conjunto-individual`), no en su apertura.

## Lo que se pide al banco

Buscar en las preguntas de la lección 15 (y en las de S25-B y S26-B si citan estos pasajes):

1. **«dicotómic»** → «indicadora».
2. **Unidades con logaritmos**: cualquier opción o explicación que diga que «todos los $t$» o «todos los contrastes» quedan iguales. Vale solo para las pendientes.
3. **«se queda corta»**, **«subestima»** dicho de la aproximación $\log(1+p)\approx p$ en general.
4. **«precio medio»**, **«precio esperado»**, **«mediana del precio»** con `hprice2` → con `price`.
5. **«ve columnas»**, **«lee variables»**, si alguna pregunta cita el lema antiguo.
6. **«más regresores»** junto a «elasticidad mayor», y cualquier afirmación general de que el ajuste no distingue formas funcionales.
7. **«efecto por fracción»** y **«cerca del centro»** del intervalo como razón para no rechazar.
8. Comparaciones de ajuste entre un modelo en niveles y uno con el regresando en logaritmos.
9. Lecturas de contrastes sin nivel en preguntas que leen una salida concreta de la lección 15.

Si una pregunta tiene como respuesta correcta algo que estos cambios hacen falso, **no cambiarla**: anotarla en «Aplicado» para que el autor decida.

## Aplicado

Sesión del banco, 24-11-2026. Buscado en las ocho preguntas de la lección 15 (`preguntas/L-15-*.json`) y en el generador del bloque básico (`bocetos-2026-11-22/construir_L15.py`). Ninguna pregunta del banco cita S25-B ni S26-B. Sin cambios de cifras ni de respuestas correctas; `make lint` de la lección 15, sin errores. Cambios sin commit y sin subir a Moodle, a la espera del visto bueno del autor.

### Preguntas tocadas

- **`L-15-UnaSalidaConLogaritmos-x3`** (bloque básico nuevo, aún no publicado), punto 2. La explicación del cambio de unidades del regresando decía «los coeficientes de [los dos regresores], el $R^2$ y los estadísticos $t$ quedan iguales». Ahora: «…, sus errores estándar y sus estadísticos $t$, y el $R^2$, quedan iguales; el estadístico $t$ de la constante sí cambia». Las opciones ya hablaban solo de los coeficientes. Además, en las tres opciones de la parte 3, $\hat y$ es «la previsión de» la variable en logaritmos, no «el ajuste».
- **`L-15-ElegirLaFormaFuncional`** (M): en las explicaciones, $b_2$ pasa a $\hat\beta_2$ (once apariciones). Ninguna opción cambia.

### Para decisión del autor

1. **`L-15-ElegirLaFormaFuncional`**, punto 6. Tiene marcada como **verdadera** «donde abundan los datos, los dos modelos dan previsiones […] parecidas; donde escasean, y al extrapolar, pueden separarse mucho», con su gemela falsa («también darán previsiones parecidas al extrapolar»). Es la afirmación general que la lección ha retirado y ahora solo sostiene «en este ejemplo». No se ha tocado. **Decisión del autor (25-11): recortada.** La verdadera dice ahora «aunque los dos modelos den previsiones […] parecidas dentro del rango de los datos, al extrapolar pueden separarse mucho», y la falsa, «si los dos modelos dan previsiones […] parecidas dentro del rango de los datos, también las darán al extrapolar, fuera de ese rango». La explicación ya no dice que mínimos cuadrados obligue a los ajustes a coincidir donde hay datos.
2. **`L-15-UnaSalidaConLogaritmos-x3`**, punto 3. La explicación del cálculo exacto dice que, para una diferencia de $0{,}30$, $0{,}40$ o $0{,}50$ en el logaritmo del regresando, la aproximación «se queda corta». Es el caso en que sí es cierto (aumento, regresando en logaritmos) y no se afirma en general; se ha dejado. En `L-15-LeerElCoeficienteSegunLaForma` la explicación del nivel-log dice que la cuenta proporcional «se pasa», también cierto en ese caso.

### Revisado sin cambio

- Punto 1: «dicotómic» no aparece en ninguna pregunta del banco.
- Puntos 4, 5 y 7: ninguna aparición («precio medio», «ve columnas», «efecto por fracción», «cerca del centro», «más regresores»).
- Punto 8: `ElegirLaFormaFuncional`, `PrevisionEnNiveles`, `ConYSinLogaritmoEnElRegresando` y el bloque dicen que los $R^2$ de regresandos distintos no se comparan y que se compara sobre el regresando en niveles.
- Punto 9: las lecturas de contrastes de `CobbDouglas`, `ElasticidadesYRendimientosAEscala` y el bloque llevan «al $5$ % de significación».
- `PrevisionEnNiveles`: la razón de que $e^{\hat y}$ quede por debajo es que la esperanza de $e^{U}$ es mayor que $1$; no usa «multiplican más de lo que dividen».

### Otro cambio de estos días en las preguntas de L-15 (no viene de este aviso)

Por indicación del autor (23/24-11), ninguna opción multiplica ya la lectura de una unidad o de un 1 % por un cambio mayor: los cambios grandes llevan la aproximación y el cálculo exacto en la misma frase. Afecta al bloque básico nuevo y a `L-15-CobbDouglas` (las tres opciones del 5 % de capital pasan a «el doble de capital … según la aproximación y … según el cálculo exacto»). Detalle en `bocetos-2026-11-22/L-15-diseno.md` del banco.

Commit: pendiente.
