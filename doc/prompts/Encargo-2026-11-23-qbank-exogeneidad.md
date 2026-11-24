# Aviso al banco: exogeneidad del modelo empírico ($V$) y «propiedad algebraica» del $R^2$

Escrito el 23-11-2026 por la sesión del curso. Ningún cambio de cifras, de respuestas correctas ni de sorteos. No se piden preguntas nuevas.

## Lo que ha cambiado en el curso

### 1. Exogeneidad: corolario para $U$, supuesto para $V$

Hasta ahora el curso decía que $E[U\mid X]=\mathit 0$ es un corolario (lección 9) y, en las lecciones y prácticas de interpretación causal, hablaba de «el supuesto de exogeneidad de la lección 9». Las dos cosas no encajaban. El autor lo ha resuelto así (regla en `doc/prompts/GuiaDeEstilo.org`, sección 7, «Exogeneidad: corolario para $U$, supuesto para $V$»):

- $U$ es $Y-E[Y\mid X]$. Que sea ortogonal a las funciones de los regresores es un corolario. No se escribe «el supuesto de exogeneidad de la lección 9» ni se exige $E[U\mid X]=\mathit 0$.
- El término de error de un modelo empírico concreto, cuyos coeficientes tienen significado económico, se escribe $V$: es todo lo que influye en el regresando y no está escrito en el modelo.
- Que $V$ sea ortogonal a las funciones de los regresores, $E[V\mid X]=\mathit 0$, es el **supuesto de exogeneidad del modelo empírico**: un supuesto adicional sobre el estudio concreto. Si no se cumple, los coeficientes de $E[Y\mid X]$ no son los $\beta$ del modelo empírico.

Dónde está en el curso:

- **Lección 9**, apuntes de «Cuidado: Esta descomposición ortogonal no implica causalidad» (p. 16, ancla `no-implica-causalidad`): párrafo nuevo que empieza «Que la exogeneidad sea un corolario tiene una contrapartida» y usa el ejemplo $\mathit{Consumo}=\beta_1\,\mathit 1+\beta_2\,\mathit{Renta}+V$.
- **Lección 9**, transparencia del mismo título. Antes: «Tiene sentido pensar que la Renta determina el Consumo, y que $U$ agrupa otros factores (gustos, necesidades).» Ahora: «Tiene sentido pensar que la Renta determina el Consumo y que el resto depende de otros factores (gustos, necesidades).» La transparencia ya no dice que $U$ sea esos factores.
- **Lección 15**, apuntes de Cobb–Douglas. Antes: «exige el supuesto de exogeneidad de la lección 9, $E[U\mid\boldsymbol X]=\mathit 0$: que lo que la función no recoge (…) no esté relacionado con los factores». Ahora: «exige el supuesto de exogeneidad del modelo empírico (lección 9), $E[V\mid\boldsymbol X]=\mathit 0$: que lo que la función no recoge (…) sea ortogonal a las funciones de los factores».
- **Prácticas S25-B, S26-B y S26-C**: la misma frase, con $V$ y «ortogonal a las funciones de los regresores».

### 2. «Propiedad algebraica», no «propiedad mecánica»

Lección 8, apuntes de «Una advertencia: el nombre suma explicada es engañoso» (p. 13). Antes: «$R^2$ tiene una propiedad puramente mecánica: nunca empeora al añadir regresores». Ahora: «puramente algebraica». El mismo cambio en las prácticas A y B de la sesión 14.

## Lo que se pide al banco

Buscar en `preguntas/*.json` y en `PROMPT-generar-preguntas.org`, sobre todo en las preguntas de las lecciones 8, 9, 10 y 15:

1. **«mecánic»** aplicado a la propiedad del $R^2$ o a MCO → «algebraica». No tocar otros usos («la mecánica del contraste», por ejemplo); si hay duda, anotarla en «Aplicado».
2. **«exogeneidad»**, **«exógen»**, **«$E[U\mid`**: cualquier enunciado, opción o explicación que
   - llame «supuesto» a $E[U\mid X]=\mathit 0$, o diga «el supuesto de exogeneidad de la lección 9»;
   - diga que $U$ «recoge», «agrupa» o «contiene» los factores omitidos, los gustos o todo lo que no está en el modelo.

   En el primer caso, si la pregunta trata del modelo teórico, es corolario; si trata de leer un coeficiente como efecto causal en un estudio concreto, es «el supuesto de exogeneidad del modelo empírico», con $V$. En el segundo, lo que no está en el modelo es $V$, no $U$.
3. **«causal»**, **«causa»**, **«no esté relacionado»**, **«incorrelad»** junto a los regresores: la condición se enuncia «ortogonal a las funciones de los regresores», no «no relacionado con los regresores» ni «incorrelado con los regresores».

Si una pregunta tiene como respuesta correcta algo que la regla nueva hace falso o incompleto (por ejemplo, «la exogeneidad es un supuesto del modelo» marcada como falsa sin distinguir $U$ de $V$), **no cambiarla**: anotarla en «Aplicado» con su identificador para que decida el autor.

## Comprobación pedida

Después de los cambios, dar en «Aplicado» la lista de preguntas tocadas, la de las dudas, y el resultado de `grep -i -E "mecánic|exogeneidad|exógen" preguntas/*.json` con una línea por aparición que quede.

## Aplicado

Sesión del banco, 23-11-2026. Buscado en `preguntas/*.json` (todas las lecciones), `PROMPT-generar-preguntas.org`, `clasificacion/*.tex` y el generador del bloque básico de L-15 (`bocetos-2026-11-22/construir_L15.py`). Sin cambios de cifras, de respuestas correctas ni de sorteos; `make lint` de las lecciones 11 y 15, sin errores. Cambios sin commit y sin subir a Moodle, a la espera del visto bueno del autor.

### Preguntas tocadas

- **`L-09-PerturbacionQueEs`**: opción retirada por decisión del autor (véase la duda 1).
- **`L-15-CobbDouglas`** (nivel M, cuestionario voluntario). Opción verdadera: «…exige suponer que lo que la función no recoge, como la tecnología, ~~no está relacionado con los factores~~ es ortogonal a las funciones de los factores». En las dos explicaciones (la de esa opción y la de su gemela falsa), «exige $E[U\mid\boldsymbol X]=\mathit 0$» pasa a «exige el supuesto de exogeneidad del modelo empírico: que lo que la función no recoge sea ortogonal a las funciones de los factores». No se escribe $E[V\mid\boldsymbol X]=\mathit 0$ porque el enunciado no presenta $V$: el modelo del enunciado es $Q=A\,L^{\alpha}K^{\gamma}e^{U}$, como en la lección (véase la duda 2).
- **`L-11-EstimadorYEstimacion`**. Opción falsa: «la fórmula del estimador se deduce de los supuestos del modelo (~~exogeneidad~~ linealidad, homocedasticidad)…». Llamaba supuesto a la exogeneidad; la opción es falsa por otra razón y lo sigue siendo.

### Punto 1 («mecánic»)

Ninguna aparición en las preguntas. Las cinco de `PROMPT-generar-preguntas.org` son otros usos («la mecánica de `Supuesto`/`Cuestion`», «comprobación mecánica») y no se tocan.

### Dudas para el autor

1. **`L-09-PerturbacionQueEs`**: tenía marcada como **verdadera** «$U$ se interpreta como el efecto conjunto de todo lo que, además de la renta, hace variar el gasto (gustos, tamaño del hogar, precios locales…)». Con la regla nueva eso es $V$, no $U$. **Decisión del autor (23-11): se retira la opción por ahora** y se reescribirá el curso que viene (anotado en `TODO.org`, «Para el curso 2027-28»). Retirada, junto con el paréntesis «(se interpreta como gustos, tamaño del hogar…)» de la explicación de la opción falsa «error de medida». El hueco queda con una verdadera y dos falsas; `make lint` de la lección 9, sin errores.
2. **Símbolo del modelo en L-15**. `L-15-CobbDouglas` y la lección escriben el modelo con $U$ ($e^{U}$, «$+U$»), y la frase nueva de la lección exige $E[V\mid\boldsymbol X]=\mathit 0$. En el banco se ha esquivado enunciando el supuesto con palabras. **Decisión del autor (23-11): vale como salida provisional**; anotado en `TODO.org` para el curso que viene.
3. **Lección 11** (`L-11-QueSupuestoHaceQue`, `L-11-QueSignificaInsesgado`, `L-11-QueHaceMasPrecisoAlEstimador`): usan $E[U_i\mid\boldsymbol X]=\mathit 0$ como condición de la que sale la insesgadez («bajo el modelo … con muestreo aleatorio y $E[U_i\mid\boldsymbol X]=\mathit 0$», «la insesgadez se apoya en $E[U_i\mid\boldsymbol X]=\mathit 0$»). Ninguna la llama supuesto ni exogeneidad, y coincide con la lección 11 (se deduce de la definición de $U_i$ y del muestreo aleatorio). No se han tocado; se anota por si el enunciado «con muestreo aleatorio y $E[U_i\mid\boldsymbol X]=\mathit 0$» se lee como exigirla.

### Revisado sin cambio (punto 3)

Las apariciones de «causa/causal» en L-06, L-08, `L-09-DescomposicionNoImplicaCausalidad`, `L-10-EfectoParcialYRegresoresCorrelados`, `L-12-LeerUnaTablaDeGretl`, L-13 y `L-16-SaltoEntreGrupos` dicen que la lectura causal la decide la teoría o el diseño del estudio, no el ajuste; ninguna enuncia la condición como «no relacionado» o «incorrelado con los regresores». «No están relacionados» en `L-13-TIndividualesPequenosFGrande` habla de lo que dicen los contrastes $t$, e «incorreladas» en L-10 y L-11, de los regresores entre sí y de las perturbaciones entre sí. Las cuatro preguntas nuevas del bloque básico de L-15 no mencionan la exogeneidad.

### Comprobación pedida

`grep -i -E "mecánic|exogeneidad|exógen" preguntas/*.json`, apariciones que quedan:

- `preguntas/L-15-CobbDouglas.json:151`: «…exige el supuesto de exogeneidad del modelo empírico, que lo que la función no recoge sea ortogonal a las funciones de los factores…»
- `preguntas/L-15-CobbDouglas.json:158`: «…Leerlo como efecto exige el supuesto de exogeneidad del modelo empírico: que lo que la función no recoge sea ortogonal a las funciones de los factores»
