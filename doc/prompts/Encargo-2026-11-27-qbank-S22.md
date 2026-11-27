# Aviso al banco de preguntas: cambios en las prácticas de la sesión 22 y en la lección 14 (27-11-2026)

Origen: auditoría de comprensión de S22-A a S22-D (`Encargo-2026-11-27-auditoria-comprension-S22.md`, con el detalle en su «Aplicado»). Revisa las preguntas del banco que usen lo siguiente y adáptalas; si no hay ninguna, anótalo en «Aplicado».

## Cifras que han cambiado

1. Práctica C de la sesión 22 (coches, `data3-7`), actividad 6 y pregunta 4. El coche «típico» ya no es el de 300 semanas y 40 mil millas, sino el de 300 semanas y 45 mil millas: valor ajustado 1 472 dólares (antes 2 246), error estándar 37 (antes 96). El coche de 300 semanas y 10 mil millas no cambia (6 885, error estándar 711). La diferencia entre los dos es $-155\cdot(10-45)=+5\,412$ (antes $+4\,640$).
2. Lección 14, «Qué hacer»: el error estándar del valor ajustado del coche alejado es diecinueve veces el del coche habitual (antes «siete veces»).

## Afirmaciones que han cambiado

3. Práctica C: ese error estándar es el del valor ajustado (la dispersión del valor ajustado en ese punto de una muestra a otra), no el del error de predecir el coste de un coche concreto, que incluye además la perturbación. Una pregunta que hable de «predecir el coste de un coche» con esas cifras debe decir «estimar el coste medio de los coches de…».
4. Práctica B, respuesta 4: con `nox` y `lnox` en el modelo, el coeficiente de `nox` no es «el efecto de `nox` manteniendo fijo su logaritmo»; `nox` no puede cambiar con su logaritmo fijo. Los dos coeficientes describen juntos una curva. `nox` y `lnox` son «la misma magnitud, una en niveles y otra en logaritmos», no «dos escalas».
5. Práctica A: lo que no cambia con ρ en la tabla es el residuo (y la SRC), no «el ajuste»: $\boldsymbol y$ y su ajuste cambian con ρ, y por eso cambia el $R^2$. La correlación de los vectores sorteados (columna `corr`) no es ρ, y el VIF de la tabla (5,7; 56,3; 563) se calcula con ella; por eso no coincide con el de la tabla de la lección 14 (5,3; 50; 500).
6. Prácticas B y C: la raíz del VIF es el factor por el que se multiplica el error estándar respecto al que el coeficiente tendría si el regresor no compartiera variación con los demás regresores (con la misma $\mathfrak s$), no «si estuviera solo»: no es el error estándar de la regresión simple.

## Gretl

7. Con Gretl 2022c en español, un coeficiente con decimales dentro de `restrict` (por ejemplo `b[nox] + 0.18*b[lnox] = 0`) se lee mal y se contrasta otra hipótesis sin aviso. Las restricciones se escriben con coeficientes enteros (`100*b[nox] + 18*b[lnox] = 0`). Si alguna pregunta o solución del banco usa `restrict` con decimales, hay que cambiarla.

## Añadido tras la segunda auditoría (27-11, tarde)

9. Práctica D, lección 14 y portada: `assess` es «la tasación» de la vivienda, sin decir de quién; ya no se habla de «la inmobiliaria» (donde hace falta un sujeto, «el tasador»). El título de la práctica D es «La tasación de las viviendas: sustituir un regresor por su parte propia».
10. Práctica A: la última columna de la tabla del Montecarlo imprime porcentajes (100,0; 98,2; 26,1; 7,1), no proporciones.
11. Práctica B, respuesta 5: `100*b[nox] + 18*b[lnox] = 0` da $F(1,502)=53{,}8$; la combinación con $404$ y $-13\,262$ da unos $-1\,983$ (antes «$-1\,985$»). El fallo de `restrict` ocurre con punto decimal (`0.18`).
12. Práctica C, respuesta 4: la diferencia entre los dos coches se escribe $-154{,}6\cdot(10-45)\approx+5\,412$.

## Reglas aplicadas (por si hay preguntas con la misma redacción)

8. Decisiones con nivel al leer una salida («al 5 % se rechaza que…»), hipótesis sobre coeficientes («que los dos coeficientes valgan cero», no «que sobren»), «grados de libertad del residuo» (no «del modelo»).

## Aplicado

27-11-2026. Búsqueda en todas las preguntas del banco (`preguntas/*.json`, incluida `reserva/`) y en los scripts de construcción de los bloques básicos (`bocetos-2026-11-11/construir_L14.py`, `bocetos-2026-11-22/`).

- Puntos 1 y 2 (cifras de `data3-7` y «siete veces»): ninguna pregunta las usa.
- Punto 3 (ee del valor ajustado frente a predicción): ninguna pregunta da el error estándar de un valor ajustado. Las de L-14 que hablan de «predecir» (QueHacerConLaColinealidad, QueHacerYQueNoHacer, TablaAntesYDespues) solo dicen que la colinealidad no estorba al ajuste dentro del rango observado, que vale para el valor medio y para un caso concreto: sin cambios.
- Punto 4 (`nox` y `lnox`): `nox` solo aparece como regresor en niveles en L-13-DosSalidasDeGretl-x3, sin `lnox`: sin cambios.
- Punto 5 (práctica A, ρ y `corr`): ninguna pregunta.
- Punto 6 (raíz del VIF): una frase cambiada, en la explicación de **L-14-LeerElVIF**: «el error estándar ``como si estuviera solo''» pasa a «el error estándar que tendría si $\boldsymbol{x}_j$ no compartiese variación con los demás regresores, con el mismo $\mathfrak{s}$», la redacción que la misma pregunta y L-14-UnaSalidaConSusVIF-x3 ya usaban en el resto. Lint de L-14 sin errores.
- Punto 7 (`restrict` con decimales): ninguna pregunta usa `restrict`.
- Punto 8: no hay «grados de libertad del modelo»; «sobran» solo aparece en opciones falsas de L-13 y L-14 cuyo `exp` explica precisamente que ningún contraste dice que un regresor sobre. Sin cambios.

- Puntos 9 a 12 (añadidos por la tarde; misma búsqueda): ninguna pregunta usa `assess`, «tasación», «tasador» ni «la inmobiliaria», ni las cifras de las prácticas B y C ($53{,}8$, $-1\,983$/$-1\,985$, $-154{,}6$, $5\,412$). El único Montecarlo del banco es el de L-11-QueSignificaInsesgado, que no usa la tabla de la práctica A: sin cambios.

Pendiente: commit en el banco y reimportar la categoría L-14-LeerElVIF en Moodle (pregunta del cuestionario voluntario de L-14), cuando el campus vuelva a responder.
