# Encargo para la sesión del banco de preguntas (qbank-PEconometria), 2026-10-22

Lección 16 (`org-lessons/S24-Lecc16.org`) auditada y cerrada el 22-10 (commit 46995b5). Cuatro correcciones de contenido pueden afectar a preguntas ya escritas sobre esta lección; revisar enunciados y explicaciones de las respuestas.

1. **Con una interacción no hay «pendiente común».** La lección decía que la pendiente del grupo señalado es «la pendiente común más la interacción». Ahora: el coeficiente del regresor es la pendiente de la *categoría base*, y el coeficiente de la interacción es la diferencia entre la pendiente del grupo señalado y la de la categoría base. Ninguna pregunta debe llamar «pendiente común» al coeficiente de `exper` en un modelo con `female*exper`.

2. **«Coeficientes = medias» solo sin otros regresores.** Con las dos indicadoras complementarias y sin ningún otro regresor, cada coeficiente es la media de su grupo (y con la constante y una indicadora, la constante es la media de la categoría base y el coeficiente la diferencia de medias). En cuanto entra otro regresor, el coeficiente de la indicadora es una diferencia *con lo demás fijo*, no una media ni una diferencia de medias.

3. **Homocedasticidad sobre las perturbaciones, nunca sobre las observaciones.** Las observaciones son números y no tienen varianza. El supuesto (lecciones 9 y 11) es que las n perturbaciones tienen la misma varianza condicional, Var[U_i | X] = σ²·𝟙 para todo i. Los residuos son su estimación; que los residuos de un grupo sean más dispersos que los del otro (3,42 frente a 2,32 en `wage`) es un indicio contra el supuesto, no una «contradicción» ni una prueba.

4. **Lectura del intervalo transformado (Guía §6).** Nunca «la diferencia porcentual está entre el 20 % y el 31 % con una confianza del 95 %» (afirma que el parámetro está en el intervalo). Fórmula del curso: «los valores de la diferencia que el contraste al 5 % no rechaza van del −31 % al −20 %». Es el mismo criterio del encargo de «compatible» (Encargo-2026-10-09-qbank-compatible.md), con otra forma de caer en lo mismo.

Dos avisos menores: la categoría base la decide quien codifica los datos, y cambiarla cambia el signo del coeficiente y el grupo respecto del cual se lee la diferencia, pero no el ajuste; y «con lo demás fijo» cubre solo los regresores del modelo, así que ninguna respuesta puede hablar de discriminación ni de causas.

Regla de redacción nueva, también para los enunciados (Guía §4, Plan §4.1): cada frase nombra de qué objeto habla y qué afirma de él. Nada de «para mínimos cuadrados es una columna más», «dice algo sobre los datos», «por el mecanismo de la lección 10».
