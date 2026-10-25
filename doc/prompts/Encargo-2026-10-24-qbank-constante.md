# Encargo para la sesión del banco de preguntas (qbank-PEconometria), 2026-10-24

Dos asuntos: la regla de la constante, que el curso aplicó el 20-10 (lección 16) y el 23-10 (barrido de lecciones y prácticas, commit 89aaa03 de PEconometria), y el párrafo pendiente sobre L-11-SupuestosYVarianza.

## 1. Regla de la constante

Texto canónico: `PEconometria/doc/prompts/GuiaDeEstilo.org`, §6. En resumen:

- **Qué es.** La constante es el coeficiente del regresor 𝟏 y mide el valor ajustado en el origen de los regresores no constantes, el punto en que todos ellos valen cero. La constante vale 1 en todas las filas, nunca 0, así que nunca se dice «cuando todos los regresores valen cero».
- **Cuándo se lee.** Como cualquier valor ajustado, solo si ese origen está dentro de la región que ocupan los datos. Fuera de ella es una extrapolación del ajuste, sin observaciones que la sostengan.
  - Con solo indicadoras, el origen es la categoría base, tiene observaciones, y la constante es su media.
  - Con un regresor cuantitativo cuyo rango no contiene al cero o apenas lo toca, la constante existe y el ajuste la necesita, pero no se lee como cantidad económica. El texto dice que «no debe interpretarse» y muestra el absurdo al que llevaría.
- **Remedio.** Si interesa un valor de referencia, se elige el origen: con el regresor centrado (lección 7; `educc` en la lección 16), la constante es el valor ajustado en la media del regresor.
- **Logaritmos.** La regla vale igual para e^β̂₁ cuando el regresando está en logaritmos: es el valor ajustado de y en el origen, deshecho el logaritmo.
- **Parámetros del modelo económico.** Cuando la constante estima un parámetro del modelo económico (el log A de Cobb–Douglas), se dice qué parámetro estima, pero no se lee como valor ajustado si el origen está fuera de los datos.

### Lugares del curso que cambiaron (23-10)

Las preguntas que citen estos pasajes, o que hagan las mismas lecturas, deben ajustarse.

1. **Práctica S11-B (`org-pract/S11-Prct-B-hprice2-ajuste.org`), `price ~ rooms`.** Antes: «Es el precio ajustado cuando todos los regresores valen cero… en torno al punto en que todos los regresores valen cero». Ahora: «Es el precio ajustado en el origen de `rooms`, el punto en que `rooms` vale cero». Sigue: `rooms` va de 3,56 a 8,78, la constante −34 796 no debe interpretarse (sería el precio, negativo, de un barrio sin habitaciones), y con `rooms` centrado la constante es el precio ajustado en la media de `rooms`, que es el precio medio.
2. **Lección 15 (`org-lessons/S23-Lecc15.org`), modelo log-nivel de `wage1`.** Antes: «el salario predicho es 1,79 dólares por hora con cero años de educación». Ahora, ni en niveles (−0,905) ni en log-nivel (e^0,584 = 1,79) se lee la constante como el salario de quien no tiene educación. Es el valor ajustado en `educ` = 0, y solo 2 de los 526 trabajadores están en ese punto; en niveles, esa lectura daría un salario negativo. Lo que sí se dice es que en niveles la constante se suma y en log-nivel e^β̂₁ multiplica. Si interesa un salario de referencia, se centra `educ` (`educc`, lección 16).
3. **Lección 15, Cobb–Douglas (`greene9_1`).** Antes: «La constante, e^1,844 = 6,3, es el factor de escala A». Ahora: «La constante, 1,844, estima log A, y e^1,844 = 6,3 estima el factor de escala A, que depende de las unidades en que se miden el trabajo y el capital». La constante es 1,844, no 6,3. Además, A es el producto con L = K = 1, fuera de los datos (`labor` va de 4,06 a 490,4 y `capital` de 1,54 a 435,1).
4. **Lección 13 (`org-lessons/S19-Lecc13.org`), contraste de significación conjunta.** Antes: «de todos los regresores». Ahora: «de todos los regresores no constantes». La hipótesis nula nunca incluye la constante.
5. **Práctica S22-D (`org-pract/S22-Prct-D-hprice1-tasacion.org`).** «Las dos conclusiones son compatibles» pasa a «no se contradicen». No es un asunto de la constante, sino de la prohibición de «compatible» (encargo del 09-10).
6. **Lección 16 (cerrada el 22-10).** Aplica la regla con `educc = educ − mean(educ)`, que vale cero en la media de la educación (12,56 años). Así, la diferencia entre sexos se lee en un punto con datos.

### Qué buscar en el banco

- «todos los regresores valen cero», «todas las variables valen cero», «cuando X vale cero» como lectura de la constante.
- Cualquier lectura económica de la constante (o de e^β̂₁) cuando el cero del regresor está fuera de los datos o casi: el salario con cero años de educación en `wage1`, el precio con cero habitaciones en `hprice2`, y otras parecidas.
- «La constante es A» o «e^β̂₁ es el factor de escala» en Cobb–Douglas, sin decir que estima log A ni que depende de las unidades.
- Distractores: una opción que lea la constante como cantidad económica fuera de los datos es buen distractor, siempre que la retroalimentación diga por qué es falsa: el origen está fuera de la región de los datos y la lectura es una extrapolación.

## 2. Párrafo pendiente sobre L-11-SupuestosYVarianza (de la sesión del 09-10)

La sesión del banco no encuentra hoy esa pregunta. La más parecida es L-11-QueSupuestoHaceQue. Este es el texto que se redactó el 09-10, después de corregir la lección 11 (commit 3d180e7 de PEconometria, apuntes de «Dos propiedades de los pesos»). Aplíquelo a la pregunta que tenga esa condición, se llame como se llame:

> «No todos los X_i iguales» es ambiguo. En el mundo de las variables aleatorias se lee como una igualdad de funciones sobre Ω, y eso no puede ocurrir con copias independientes de una X no degenerada. Lo que anula el denominador de W_i es un suceso: los ω en los que las n copias toman el mismo valor, X_1(ω) = … = X_n(ω). Para esos ω, W_i(ω) no está definido. Arregle el enunciado para que la condición sea sobre la muestra y no sobre las variables: «y una muestra en la que no todas las copias X_i toman el mismo valor, de modo que Σ_j(X_j − X̄)² ≠ 0 y los pesos W_i existan». En la retroalimentación de Var[β̂₂|X] = σ²/Σ_i(X_i − X̄)², en lugar de «si lo fueran», diga: «el denominador no es nulo porque en la muestra observada las copias no toman todas el mismo valor; si lo tomaran, los pesos W_i no estarían definidos para ese ω. No es una igualdad entre las variables X_i, que son copias distintas, sino un suceso, y Var(X) ≠ 0 no le da probabilidad cero cuando X es discreta: con una Bernoulli de parámetro 1/2 vale 2^{1−n}». Revise si alguna otra pregunta del banco enuncia esa condición como «X_i iguales».

Si la sesión del banco ya resolvió este punto en la pregunta del 09-10 (en una conversación posterior, o con otro nombre), basta con confirmarlo.

## Aplicado (24-10)

La sesión del banco lo aplicó en el commit d399ad5 de qbank-PEconometria, ya empujado: L-16-InteraccionYChow (el coeficiente de mujer como diferencia en el origen, educ = exper = 0, con el remedio de centrar) y L-11-QueHaceMasPrecisoAlEstimador (la condición como suceso sobre la muestra). El 25-10 corrigió también la retroalimentación de L-10-EfectoParcialYRegresoresCorrelados, que leía la constante como el salario con cero experiencia y cero antigüedad: ahora es el valor ajustado en el origen de los demás regresores, que solo se lee como salario si hay trabajadores cerca de ese punto. Reimportada en Moodle. El encargo queda aplicado entero.
