# Aviso al banco: «$R^2$ ajustado», no «$R^2$ corregido»

Escrito el 22-11-2026 por la sesión del curso. Ningún cambio de cifras, de respuestas correctas ni de sorteos.

## La regla

El 20-11-2026 el autor fijó el nombre de $\bar R^2$ en el curso: «$R^2$ ajustado» (o «coeficiente de determinación ajustado»). «R-cuadrado corregido» se escribe solo como el rótulo que imprime Gretl en la salida de `ols`. La regla está desde hoy en la Guía de estilo del curso (`doc/prompts/GuiaDeEstilo.org`, sección 7). La lección 13 y la práctica B de la sesión 14 ya la cumplen: dicen «$R^2$ ajustado» y citan una vez el rótulo de Gretl entre comillas.

## Lo que he encontrado en el banco

Busqué «corregido» en `preguntas/*.json` el 22-11-2026. Solo aparece en dos preguntas.

1. **Rótulo de la tabla** (`L-12-UnaSalidaFilaAFila-x3` y `L-13-DosSalidasDeGretl-x3`): `\text{R-cuadrado corregido}` dentro de la salida que imita a Gretl. **No se toca**: es el rótulo del programa.

2. **Opción de la parte 3 de `L-13-DosSalidasDeGretl-x3`**: «con estos datos, el R-cuadrado \textbf{corregido} prefiere el modelo …», y la variable `cual_r2`, que sortea entre `'R-cuadrado'` y `'R-cuadrado corregido'`. La opción nombra la casilla tal como el alumno la ve en la tabla. **Propuesta: no tocarla**, por ese motivo. Si la sesión del banco cree que debe decir «ajustado», que lo anote como duda en «Aplicado» y no lo cambie.

3. **Explicaciones (`exp`) de `L-13-DosSalidasDeGretl-x3`**, que son prosa del curso y no lectura de la tabla:
   - «El que sí puede subir al quitar regresores es el $R^2$ corregido» pasa a «…es el $R^2$ ajustado (la casilla "R-cuadrado corregido")».
   - «el $R^2$ corregido sí puede subir al quitar regresores: sube exactamente cuando…» pasa a «el $R^2$ ajustado (la casilla "R-cuadrado corregido") sí puede subir al quitar regresores: sube cuando…». De paso, fuera «exactamente» (Guía, sección 2: solo frente a «aproximadamente»).
   - «el R-cuadrado corregido prefiere el modelo en que es mayor» (la `exp` de la opción del punto 2): puede quedarse, porque lee la casilla; basta con que la primera mención de $\bar R^2$ en cada `exp` diga una vez «$R^2$ ajustado».

4. **`PROMPT-generar-preguntas.org`**, líneas 706, 743 y 752: «$R^2$ corregido» pasa a «$R^2$ ajustado», salvo donde enumera los rótulos de la salida de Gretl (línea 706, si la lista es la de las casillas del pie).

## Comprobación pedida

Después del cambio, `grep -i "corregido" preguntas/*.json` solo debe dar los rótulos de la tabla, la opción del punto 2 y las menciones entre comillas de la casilla.

## Aplicado

Sesión del banco, 24-11-2026. Sin cambios de cifras, de respuestas correctas ni de sorteos; `make lint` de la lección 13, sin errores. Sin commit y sin subir a Moodle, a la espera del visto bueno del autor.

- **Puntos 1 y 2**: no se tocan (rótulo de la tabla y opción que nombra la casilla).
- **Punto 3**, `L-13-DosSalidasDeGretl-x3`: las dos explicaciones dicen ahora «el $R^2$ ajustado (la casilla "R-cuadrado corregido")», y «sube exactamente cuando» pasa a «sube cuando». La explicación de la opción del punto 2 se deja como está.
- **Punto 4**, `PROMPT-generar-preguntas.org`: «$R^2$ ajustado» en las dos menciones de prosa; la lista de casillas del pie de la salida conserva «$R^2$ corregido».
- Comprobación: «corregido» queda en `preguntas/*.json` solo en los rótulos de las tablas de `L-12-UnaSalidaFilaAFila-x3` y `L-13-DosSalidasDeGretl-x3`, en la opción del punto 2 con su explicación y su variable de sorteo, en las dos menciones entre comillas de la casilla y en «el $R^2$ sin corregir» de una explicación.
