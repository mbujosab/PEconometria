# Encargo: auditoría de fondo de la lección 11 y de las secciones del apéndice que la sostienen (29-10-2026)

Repositorio: este mismo (`PEconometria`). Encargo para una sesión nueva de Fable. Es una **lectura de juicio**, no una comprobación mecánica: lo mecánico ya está hecho (ver «Qué no hay que repetir»). El producto es un informe en `doc/prompts/Informe-2026-10-29-auditoria-L11.org`; **no se toca ningún fichero del curso** hasta que el autor decida sobre el informe.

## Contexto

La lección 11 (`org-lessons/S15-Lecc11.org`) se imparte el jueves 29-10-2026 y se ha reescrito en gran parte los días 27 y 28 (commits `68ef897`, `bf99a41`, `1ab349d`; detalle en `doc/prompts/Encargo-2026-10-27-puentes-inferencia.md` y en la memoria del proyecto). Los cambios responden a dos cosas:

1. El inventario del curso previo de Estadística (`doc/prompts/Inventario-2026-10-25-estadistica-previa.org`): los alumnos llegan sin contraste de hipótesis, sin tipificación, sin esperanza ni varianza de una suma, sin definición de independencia. Sí traen la muestra como lista de variables aleatorias, la tabla parámetro / estimador / estimación, $\mathrm E(\bar x)=\mu$ y $\sigma/\sqrt n$ enunciados, y la varianza con divisor $n-1$.
2. Una relectura del autor, con estas decisiones, que la auditoría debe tomar como reglas:
   - **Condicionar no es sustituir.** La varianza condicional es una variable aleatoria; evaluar en la muestra observada es evaluarla en el $\omega$ que ocurrió. Cualquier frase que lea «condicionar en $\boldsymbol X$» como «poner los valores muestrales» es un error conceptual.
   - **La matriz de copias se lee con un solo $\omega$.** Cada fila es una copia (una función sobre $\Omega$); cada columna, la evaluación de todas las copias en un mismo $\omega$; los datos observados son $n$ filas de una columna; «otra muestra» es otro bloque de $n$ filas en la misma columna; el Monte Carlo de Gretl consume un único $\omega$ y toma bloques sucesivos de filas. (Aplicado también en el apéndice, secciones 3 y 9, y en S16-A y S20-C.)
   - **Las demostraciones viven en el apéndice** (`org-lessons/Apendice-geometria.org`); la lección enuncia y remite con enlace. Se han quitado de la lección la demostración del Lema, la deducción de la ley de las esperanzas iteradas, la cuenta de coordenadas del divisor $n-k$, el esbozo de Gauss–Markov y la nota geométrica de los pesos.
   - **Las identidades pasan de los datos a las copias; la geometría, no.** Las dos propiedades de los pesos son identidades aritméticas válidas para toda lista de números; su lectura como ortogonalidad en $\mathbb R^n$ no se traslada a las copias.
   - **«Ruido» fuera.** Los alumnos no conocen esa interpretación de la perturbación; se habla de varianza, desviación típica o longitud de $U$. (En L12 y L13 todavía aparece; pendiente de otra relectura.)
   - **La fórmula de la pendiente viene de «covarianza sobre varianza» (lección 7)**, no de la vía alternativa; la vía alternativa solo la reescribe como cociente de productos escalares. La vía alternativa sí es el origen de la segunda propiedad de los pesos.
   - **Las cuatro reglas de la esperanza y la varianza** (linealidad, cambio de escala, varianza de una suma, independencia) están en el apéndice, sección 1.6, y la lección remite a ellas desde «Insesgadez» y «Varianza».
   - Reglas de redacción: `doc/prompts/GuiaDeEstilo.org` (única fuente). Usted; sin coloquialismos; sin «compatible»; sin «exactamente» salvo frente a «aproximadamente».

## Qué se pide

Lea la lección 11 entera, transparencias y apuntes, como la leerá un alumno con la formación del inventario, y después las secciones del apéndice que la lección enlaza: 1.3, 1.5, 1.6, 3, 5.1, 6.1, 7.1, 7.2 y 7.3. Responda a tres preguntas, por este orden de importancia.

1. **Coherencia.** ¿El hilo se sostiene de la primera transparencia a la recapitulación? ¿Cada transparencia prepara la siguiente y cada apartado de apuntes desarrolla su transparencia sin contradecirla ni cambiar de objeto (datos / copias / números) a mitad? ¿Las remisiones al apéndice dicen de verdad lo que el apéndice contiene, y en el sentido correcto (la lección enuncia, el apéndice demuestra; nunca al revés)? ¿Queda algún resto de las versiones anteriores: frases que remiten a algo que ya no está, duplicados entre lección y apéndice, nombres o notación que cambiaron en un sitio y no en otro?
2. **Logro didáctico.** Los objetivos declarados son: distinguir estimador de estimación; entender que una fórmula aritmética evaluada en las copias es una variable aleatoria; demostrar la insesgadez y la varianza de $\hat\beta_2$ con las dos propiedades de los pesos y el Lema; leer la fórmula de la varianza (tres ingredientes); entender el divisor $n-k$. Para cada objetivo: ¿la lección lo consigue, en qué transparencia, y con qué apoyo de los apuntes? ¿Hay algún objetivo que se enuncia y no se alcanza, o que se alcanza en los apuntes pero no en la transparencia que debería guiarlo?
3. **Comprensión por el lector.** Con la formación del inventario, ¿dónde se perderá un alumno? Señale los párrafos cuya lectura exige algo que ni el curso ni el apéndice han dado, y los que son correctos pero más técnicos de lo que el argumento necesita. Para cada uno, proponga: recortar, remitir al apéndice, o reescribir, y en este último caso proponga el texto.

Además, dos comprobaciones de segundo orden, breves: que las preguntas de repaso siguen correspondiendo a lo que la lección dice ahora (la 3, la 6 y la 7 han cambiado de referente); y que el apéndice, en las secciones leídas, no contradice las decisiones de arriba (en particular la sección 3, reescrita con un solo $\omega$, y la 1.3, a la que la lección remite tres veces).

## Qué no hay que repetir

Hecho y comprobado el 28 y 29-10: compilación de todo el curso sin errores; medidas de las trece transparencias (todas por debajo de 700 px); enlaces `#page=` al apéndice corregidos tras el desplazamiento de una página que causó la sección 1.6 (`doc/tools/comprobar-paginas.py` sin avisos nuevos; sus falsos positivos conocidos son las etiquetas «pdf»/«muestra» de L9 y L16 y las remisiones a «sección 2» y «sección 7» a secas); anclas `covarianza-sobre-varianza` y `via-alternativa` en L7, `esperanza-condicional` en L9, `sec-1-6` en el apéndice; enlace interno a la figura de la matriz de copias; la nota al pie 3 cabe en la página 5 del PDF. No mida, no compile, no revise enlaces salvo que una remisión le parezca errónea de contenido.

## Formato del informe

El de las revisiones anteriores (`doc/prompts/Revision-2026-10-22-S25-S26.org` como modelo): hallazgos agrupados A–F, cada uno con sección y frase citada, el problema en una línea, y la propuesta; las decisiones que corresponden al autor, marcadas como tales y sin aplicar. Primera persona del plural en el informe, usted en los textos propuestos. Nada que no haya ocurrido; si una sección del apéndice no se ha leído por falta de tiempo, decirlo.

Cuota: la sesión de Fable tiene un límite semanal; si no alcanza para las nueve secciones del apéndice, priorice la lección 11 entera y las secciones 1.3, 1.6 y 3, y deje anotado qué quedó sin leer.
