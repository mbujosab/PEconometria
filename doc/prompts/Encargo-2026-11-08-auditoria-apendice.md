# Encargo: revisión completa del apéndice de geometría con las reglas posteriores al 04-10 (08-11-2026)

Repositorio: este mismo (`PEconometria`). Encargo para una sesión nueva de Fable. Es una **lectura de juicio**, no una comprobación mecánica (ver «Qué no hay que repetir»). El producto es un informe en `doc/prompts/Informe-2026-11-08-auditoria-apendice.org` (si la sesión es otro día, con esa fecha en el nombre y en el título); **no se toca ningún fichero del curso** hasta que el autor decida sobre el informe.

Lea primero `doc/prompts/GuiaDeEstilo.org` entera: es la única fuente de reglas de redacción y toda propuesta de texto debe cumplirla.

## Contexto

El apéndice (`org-lessons/Apendice-geometria.org`, unas 13 000 palabras; PDF en `org-lessons/Apendice-geometria.pdf`, 32 páginas; HTML con un ancla por sección, `sec-N` y `sec-N-M`; figuras en `org-lessons/img/Apendice-geometria/`) es el documento donde viven las demostraciones y las definiciones que las lecciones 9 a 14 enuncian y leen. Entró en el curso el 04-10 (commit `a16c149`), con una revisión de 45 ítems aplicada ese día y los enlaces pdf+html desde las lecciones (`Encargo-2026-10-04-enlaces-apendice.md`, `Revision-2026-10-04-lectura-tras-apendice.org`). Desde entonces se le han añadido o corregido piezas al hilo de las lecciones (5.4 con Frisch–Waugh–Lovell el 05-10; 1.5, 9 y 1.4 con lo que la lección 12 descargó el 30-10 y el 01-11; 8 con el contraejemplo uniforme el 02-11; 5.1 el 04-11; 5.5, 7, 8 el 08-11), pero **no se ha vuelto a leer entero**, y las reglas de redacción del curso han cambiado mucho desde el 04-10. Estado auditado: `main` en `8ae7ab9`.

Tres auditorías de lecciones leyeron partes del apéndice, y lo que allí se decidió no se reabre:

- Lección 11 (`Informe-2026-10-29-auditoria-L11.org`): secciones 1.3, 1.5, 1.6, 3, 5.1, 6.1, 7.1, 7.2, 7.3, con 19 sustituciones aplicadas.
- Lección 12 (`Informe-2026-11-03-auditoria-L12.org`): 8, 9, 7, 5.2, 6.3, 5.4, 6.5, 1.4, 1.5.
- Lección 13 (`Informe-2026-11-07-auditoria-L13.org`, aplicada el 08-11): 10, 6.4, 7, 8, 5.5, 5.1, 5.4, 1.6.

Nunca se han leído con las reglas actuales: **1.1, 1.2, 2 (2.1, 2.2), 4 (4.1, 4.2, 4.3), 5.3, 6.2, 6.6, 11 («Las piezas y dónde opera cada una»), 12 («Mapa de las lecciones») y 13 («Notación»)**.

Reglas de la Guía que entraron después del 04-10 y que el apéndice debe cumplir (todas en la Guía; se listan las que más pesan en un texto como este):

- **Media, de datos; esperanza, de variables aleatorias** (08-10, Guía §5 y §7): media y vector de medias son de datos; «media muestral» es el estadístico $\overline Y$; «valor esperado» es un número; «esperanza condicional» es una variable aleatoria; «cuasivarianza», nunca «varianza muestral insesgada».
- **«Muestra» = datos (una columna de la matriz de copias); «muestra aleatoria» = la lista de variables aleatorias (filas)** (12-10, Guía §7). «Otra muestra», «de una muestra a otra», «todas las muestras posibles» son otras columnas con las mismas filas.
- **Un solo $\omega$** (29-10, Guía §7): un Monte Carlo es un recorrido por columnas de la matriz de copias; fijar $\omega$ devuelve a $\mathbb R^n$.
- **«Perturbación», nunca «ruido»** (29-10, Guía §7).
- **Condicionar no es fijar** (30-10, Guía §7): condicionar en $\boldsymbol X$ es proyectar sobre las funciones de $\boldsymbol X$; los pesos $W_i$ siguen siendo variables aleatorias; con los regresores en $\boldsymbol x$ los pesos son números y $\hat\beta_2(\boldsymbol x,\boldsymbol Y)$ sigue siendo aleatorio.
- **$\hat\beta_j$ designa el estimador y la estimación; cada frase dice cuál** (06-11, Guía §7). En el apéndice el símbolo aparece como variable aleatoria casi siempre; donde se evalúa sobre los datos (sección 6.6, «Fijar $\omega$», sección 11 última columna) debe decirse.
- **Nada se presupone** (03-11, Guía §4): cada objeto se nombra entero, cada término técnico se explica en su primera aparición. El apéndice es más técnico que las lecciones y puede exigir más, pero no puede usar sin definir lo que ninguna lección ni él mismo definen (por ejemplo «intercambiables», que el 08-11 recibió una glosa en 8; «familia a escuadra», «isotropía», «subfamilias disjuntas», «densidad», «invariante por giros», «teorema de Maxwell», «esperanzas iteradas»: compruebe dónde se define cada uno y si es antes de usarse).
- **Nada elíptico, sin personificar el azar** (06-11, Guía §2); **sin incisos entre comas que separen el verbo de su complemento cuando el inciso entra al final** (07-11, Guía §2); **sin «exactamente» salvo frente a «aproximadamente»** (Guía §2; quedan cinco en el apéndice tras el 08-11, compruebe cuáles sobran); **«conviene»** (Guía §2 y §11): queda uno; el autor decidió no tocarlo en L13 el 08-11, así que anótelo sin proponerlo como obligatorio.
- **Lenguaje de los contrastes** (Guía §6): «compatible» prohibido; decisiones no tajantes; **«mejora el ajuste» no es la conclusión de un contraste** (08-11): el $F$ dice si los regresores acortan el residuo *más de lo que cabe esperar por azar*.
- **Geometría solo sobre datos en $\mathbb R^n$ o sobre variables aleatorias con el producto $E[ZW]$** (22-10, Guía §7): el apéndice es justamente el sitio donde se hace lo segundo con todo rigor; compruebe que cada «ortogonal», «proyección», «ángulo», «longitud» dice en qué espacio está (la sección 11 lo tabula: compárela con el texto).
- **Toda remisión interna es un hiperenlace** `[[#sec-N-M][``título'']]` o equivalente (03-11, Guía §4). En el apéndice las remisiones internas van hoy como «sección 5.2» en texto plano; proponga la forma y liste los sitios (puede hacerlo como una sola observación con el recuento, no una por una).
- **Hipótesis sobre coeficientes, nunca sobre regresores** (08-10, Guía §6).

## Qué se pide

Lea el apéndice **entero, desde el PDF, en su orden**, con las figuras (los PNG de `img/Apendice-geometria/`: `fig1-dos-subespacios`, `fig2-parte-propia`, `fig3-restricciones`, `fig4-realizacion`, `fig5-familia-ortogonal`, `figA-probabilidad-proyeccion`, `figB-matriz-copias`, `Monedas4`), como lo leerá un alumno que llega desde un enlace de una lección con la formación del inventario (`Inventario-2026-10-25-estadistica-previa.org`) más las lecciones 9 a 14 tal como están hoy. Responda a tres preguntas, por este orden de importancia.

1. **Coherencia con las lecciones tal como están hoy.** Las lecciones 11, 12 y 13 se han reescrito a fondo entre el 27-10 y el 08-11, y la 14 cambió con ellas. Para cada enlace desde una lección o una práctica a una sección del apéndice (la lista está abajo), compruebe que la sección contiene lo que la lección dice que contiene, con la misma notación y el mismo nombre de las cosas, y en el sentido correcto (la lección enuncia, el apéndice demuestra o define); y a la inversa, que cada «(lección N)» o «como hace la lección N» del apéndice es verdad hoy (el 08-11 se encontró uno falso en 5.5). Compruebe especialmente la tabla de la sección 12 («Mapa de las lecciones»): cada fila debe corresponder a un pasaje que exista en esa lección con ese contenido (ya detectado, no corregido: la fila de la lección 11 dice «el divisor $n-1$ de la varianza muestral», que la Guía §5 llama cuasivarianza); y la tabla de la sección 13 («Notación»): cada símbolo con el significado y la lección que lo introduce (compruebe $\hat\beta_m$ frente a $\hat\beta_j$, $\boldsymbol X$ frente a $\boldsymbol x$, $\mathit1$, $\langle\cdot,\cdot\rangle_{n-k}$). Enlaces hacia el apéndice, por fichero (números de sección): L9: 1, 1.3, 1.4, 2, 2.1, 3, 4; L11: 1.3, 1.5, 1.6, 2, 3, 5.1, 6.1, 7.1, 7.2, 7.3, 9; L12: 1.4, 1.5, 5.2, 5.4, 6.3, 7, 7.1, 7.2, 8, 9; L13: 1.6, 5.1, 5.5, 6.4, 7, 7.2, 8, 10; L14: 2, 5.4; L16: 1.4; S14-D: 5, 5.4; S16-A y S16-B: 3; S18-A: 5.4; S18-C: 3, 9; S20-C: 7.2; S22-A: 6.5; S22-B: 5.4; S26-A: 1.
2. **Corrección y completitud de las demostraciones.** El apéndice promete demostrar «con material del curso» todo lo de $\mathbb R^n$ (sección 11, párrafo final) y, en las variables aleatorias, todo salvo la Propiedad de la normal, que enuncia. Compruebe que cada resultado numerado (Resultado 1, 2, 2 bis, 3; las ecuaciones etiquetadas) tiene demostración completa con lo que el curso y las secciones anteriores dan, que las hipótesis que usa son las que enuncia (en particular dónde entra cada uno de los tres supuestos de la lección 11, dónde la normalidad y dónde $H_0$), y que lo enunciado sin demostrar está señalado como tal. Señale los pasos que un lector atento no puede reconstruir y los que dependen de algo que ninguna sección da.
3. **Comprensión por el lector.** ¿Dónde se perderá un alumno que llega desde una lección? Aplique «nada se presupone» frase a frase en las secciones nunca leídas (1.1, 1.2, 2, 4, 5.3, 6.2, 6.6, 11, 12, 13): liste cada término técnico en su primera aparición y diga si está explicado allí o antes. En las secciones ya auditadas, aplique solo las reglas que entraron después de su auditoría (para 1.3, 1.5, 1.6, 3, 5.1, 6.1, 7.x: todo lo del 30-10 en adelante; para 1.4, 5.2, 5.4, 6.3, 6.5, 8, 9: lo del 06-11 en adelante; para 5.5, 6.4, 10: nada). Para cada hallazgo proponga el texto, que cumpla la Guía.

Además, dos comprobaciones de segundo orden:

- Que las **figuras y sus pies** dicen lo mismo que el texto y permiten entender la figura sin el profesor (Guía §9): qué es cada vector, cada subespacio y cada ángulo rotulado.
- Que la **sección 11** («Las piezas») es un índice fiel: cada fila nombra la sección, el espacio, lo que usa y lo que da, y coincide con el texto de la sección.

## Qué no hay que repetir

Hecho y comprobado el 08-11: compilación de todo el curso sin errores; los enlaces `#page=` de las lecciones y prácticas al apéndice comprobados con `doc/tools/comprobar-paginas.py` (estado limpio = «7 enlaces por corregir», falsos positivos conocidos de L9, L14 y L16); el apéndice no tiene transparencias ni cuaderno. No compile ni revise páginas; las remisiones se comprueban por contenido.

## Formato del informe

El de `doc/prompts/Informe-2026-11-07-auditoria-L13.org`: primero «Qué hemos leído y qué no»; después la respuesta a las tres preguntas; hallazgos agrupados A–F (A coherencia con las lecciones, B demostraciones, C comprensión y términos, D menores, E Guía y pendientes, F figuras y tablas), cada uno con sección y frase citada, el problema en una línea y la propuesta; lo que toca un argumento, una definición, una figura o la Guía lleva la marca DECIDE EL AUTOR y no se aplica. Primera persona del plural en el informe, usted en los textos propuestos. Nada que no haya ocurrido; si una sección no se ha leído por falta de tiempo, decirlo.

Cuota: la sesión de Fable tiene un límite semanal. Si no alcanza para todo, lea en este orden: 12 y 13 (las dos tablas, baratas y de más valor), 11, 1.1, 1.2, 2, 4, 5.3, 6.2, 6.6, y después las secciones ya auditadas; deje anotado qué quedó sin leer.
