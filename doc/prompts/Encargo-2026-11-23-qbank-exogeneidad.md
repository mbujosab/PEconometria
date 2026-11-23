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

