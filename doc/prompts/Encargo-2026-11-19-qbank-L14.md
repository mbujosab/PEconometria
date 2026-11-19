# Aviso al banco de preguntas: lección 14 tras la segunda auditoría (19-11-2026)

Aviso desde la sesión de revisión de las lecciones (19-11). Se han aplicado en `org-lessons/S21-Lecc14.org` las correcciones de redacción de la segunda auditoría (`doc/prompts/Informe-2026-11-19-auditoria-L14.org` y `Informe-2026-11-19-auditoria-comprension-L14.org`) que no requerían decisión del autor. Ninguna cifra cambia y ninguna opción de respuesta cambia. Lo que afecta al banco:

1. **Pregunta 8, enunciado.** Decía «…y con `nox` solo el coeficiente era −1885». El modelo lleva también `rooms`. Ahora: «Con `nox` y `lnox` en el mismo modelo, los coeficientes estimados son 404 y −13262, de signos opuestos, y sin `lnox` el coeficiente de `nox` era −1885. La razón es que:»

2. **«Firma de la colinealidad».** La lección ya no usa «firma» (la lección 13 tampoco). Respuesta de la pregunta 6: «…y la colinealidad, que se reconoce en que el error estándar se multiplica por un factor grande». Ninguna pregunta del banco debe decir «la firma de la colinealidad».

3. **Prácticas con nombre.** «La lección 10 y su laboratorio» pasa a «la lección 10 y la práctica A de la sesión 14» (respuesta de la pregunta 6).

4. **Coches de la práctica C de la sesión 22.** La lección dice ahora qué se explica y en qué unidades: el coste acumulado de las reparaciones de 57 coches, en dólares, con la edad en semanas y las millas recorridas en miles. Los dos contrastes: «cada contraste t rechaza al 5 % que su coeficiente valga cero».

5. **Pregunta 11, respuesta.** Se añade a la explicación de la opción 3: «(las fórmulas de la lección 11 suponen perturbaciones incorreladas entre observaciones, y dos filas idénticas tienen la misma perturbación)».

6. **«Forma funcional».** Los apuntes la explican en su primera aparición: «añade una forma funcional, otra manera de relacionar el precio con la contaminación». Las unidades de `hprice2` son barrios, no viviendas.

7. **Pregunta 8, título y comentario.** El título pasa de «El signo de la covarianza» a «Signos opuestos»: la pregunta no pregunta por la covarianza. Comentario nuevo: «la lectura de la figura del paralelogramo aplicada al caso real: con regresores casi alineados, como `nox` y `lnox`, un coeficiente compensa al otro y el ajuste apenas cambia». Ninguna pregunta debe presentar los signos opuestos de dos estimaciones de una muestra como prueba de covarianza negativa entre los estimadores.

8. **Tercer síntoma.** El ejemplo ya no es la actividad 6 de la práctica A de la sesión 14 (regresión simple con catorce viviendas, sin colinealidad), sino la actividad 5 de la práctica C de la sesión 22 (ancla nueva `dos-mitades`): el coeficiente de la edad es 5,1 con los 28 primeros coches y 23,7 con los 29 restantes; el de las millas, −5,4 y −107,7.

9. **Cocientes redondeados.** 6290,37/2,861 y 241,6 · 9,10 se escriben ahora «≈ 2199» (daban 2198,7 y 2198,6, no 2198,9). El error estándar que imprime Gretl sigue siendo 2198,9 (2198,85 con todos los decimales). Una pregunta del banco que pida hacer esa cuenta con los valores redondeados debe aceptar 2199.

10. **Los factores 8,7 y 9,10.** La lección explica ahora por qué difieren: 8,7 compara con el modelo sin `lnox`, donde el VIF de `nox` ya es 1,10 (raíz 1,05); 9,10 = √VIF compara con un regresor que no compartiera nada; 8,7 · 1,05 ≈ 9,1.

11. **«Familia ortogonal».** La lección 14 ya no la invoca para la parte propia (la lección 10 exige generadores mutuamente ortogonales). La demostración se cita por su sitio: apéndice, sección 5.4.

12. **Título de transparencia.** «Lo que no» pasa a «Qué no hacer» (el ancla `lo-que-no` no cambia).

13. **Vocabulario.** «Varianza» a secas para la varianza de los datos de un regresor (antes «varianza muestral»). θ_j se identifica expresamente con el ángulo entre el regresor en desviaciones y el subespacio de los demás. La lección 14 enlaza con la lección 12: «la muestra informa bien del efecto conjunto de los regresores, y lo que falta es información sobre el efecto de cada uno por separado».

## Aplicado

