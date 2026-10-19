# Aviso al banco de preguntas: lección 14 (y una errata de la 16)

Aviso desde la sesión de revisión de las lecciones (19-10), sobre los puntos 5 y 6 de «Decisiones del instructor» y la «Segunda revisión independiente» de `REVISION-2026-10-17-L14.org`. Las tres propuestas se han aplicado en `S21-Lecc14.org`, con estas diferencias.

1. **Transparencia «Qué hacer y qué no».** Dice solo «Nada si el objetivo es predecir sin extrapolar: el ajuste no depende de los generadores». La advertencia completa no cabía en la pantalla, y la desarrolla la prosa del párrafo «Antes de buscar remedios…». El texto propuesto decía «la recta que forman las dos en la muestra», lo que contradice el punto 4 del mismo fichero. En la lección se usa «los pares observados en la muestra», y se ha corregido también en esa prosa, que tenía la misma expresión. No usar «la recta que forman» en propuestas futuras.

2. **Signo de la covarianza.** La salvedad está en el párrafo «Dos consecuencias», en la opción 2 de la pregunta 7, en el «Evalúa» de la pregunta 8 y en el objetivo 3 del laboratorio `S22-Prct-A-colinealidad-montecarlo.org`. Las correlaciones de ese laboratorio son todas positivas, así que sus resultados no cambian.

3. **Restricciones de la teoría.** Se ha reescrito la prosa («El tercer caso…»). La transparencia no decía «sumar uno» y no se ha tocado. Además del error de «sumar uno», la frase antigua decía que la restricción «elimina la dirección compartida», y es al revés: con β2 = β3 el modelo conserva la dirección compartida, x2 + x3, que es larga, y renuncia a estimar la dirección corta. El texto nuevo:
   - deduce en línea el regresor de cada caso: β2(x2 + x3), y x3 + β2(x2 − x3) con x3 restado del regresando;
   - dice que la restricción solo gana precisión si la combinación que impone va en la dirección compartida: efectos proporcionales con el mismo signo si la correlación es positiva, con signos opuestos si es negativa.

   No da las cifras 5,03 / 5,00 / 0,50, que siguen siendo válidas en el banco: con regresores de longitud 1, los factores de la varianza son (1 + ρ)/2 y (1 − ρ)/2. Si alguna pregunta decía que imponer β2 + β3 = 1 mejora la precisión, o que una restricción «elimina la dirección compartida», debe corregirse.

4. **Errata en la lección 16** («Varias categorías»), ajena a este encargo. La diferencia entre mujeres casadas y solteras es −0,023, no −0,024 (Gretl: −0,02349), es decir, un 2 % menos; ee = 0,053 y t = −0,45 no cambian. Si alguna pregunta de L-16 usa −0,024, debe corregirse.

5. **Laboratorio `S22-Prct-A-colinealidad-montecarlo.org`.** La tabla tiene una columna nueva, `var(b2-b3)` (0,022; 0,226; 2,28; 22,8), y las columnas que ya había no cambian. «Lo que debe observar» relaciona la suma y la diferencia con las restricciones β2 = β3 y β2 + β3 = 2. Hay una pregunta de interpretación nueva, la 6, sobre ρ = −0,99: covarianza +0,57, suma y diferencia intercambiadas, misma SRC, R² = 0,04. Si la pregunta de reserva R3 («La suma de los coeficientes») u otra del banco usa esa tabla, puede aprovechar la columna nueva.

Si alguna pregunta del banco cita literalmente un texto de la lección que haya cambiado, debe actualizarse.
