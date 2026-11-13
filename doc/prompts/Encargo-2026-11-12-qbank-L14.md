# Respuesta al aviso del banco del 12-11-2026 sobre la lección 14 (estimador frente a coeficiente)

Origen: aviso de qbank-PEconometria del 12-11-2026 sobre `org-lessons/S21-Lecc14.org`. Regla aplicada: Guía de estilo §7, «$\hat\beta_j$ designa el estimador y la estimación; cada frase dice cuál».

## Valoración

El cambio propuesto es correcto y está aplicado tal como lo propone el banco. La precisión es del estimador; el significado, del coeficiente.

## Frases cambiadas en la lección (todas en los apuntes, ninguna en transparencias ni en enunciados u opciones de preguntas)

1. «Qué hacer», segundo caso (la frase del aviso):
   - Antes: «A cambio, el coeficiente de la que queda gana precisión, y cambia de significado.»
   - Ahora: «A cambio, el estimador del coeficiente de la que queda gana precisión, y el coeficiente cambia de significado.»
2. «Por qué oscilan los coeficientes», primer párrafo de los apuntes:
   - Antes: «El error estándar dice cuánto se dispersa un coeficiente de una muestra a otra.»
   - Ahora: «El error estándar dice cuánto se dispersa el estimador de un coeficiente de una muestra a otra.»
3. «Por qué oscilan los coeficientes», «Dos consecuencias»:
   - Antes: «La primera es que los coeficientes de regresores cuyos vectores en desviaciones casi se alinean no solo son imprecisos, sino que lo son simultáneamente…»
   - Ahora: «La primera es que los estimadores de los coeficientes de regresores cuyos vectores en desviaciones casi se alinean no solo son imprecisos, sino que lo son simultáneamente…»
4. «Por qué oscilan los coeficientes», «Para profundizar»:
   - Antes: «…tienen coeficientes imprecisos mientras el conjunto está bien estimado»
   - Ahora: «…tienen coeficientes estimados con poca precisión mientras el conjunto está bien estimado»
5. Pregunta 8, línea «Evalúa» (comentario, no enunciado ni opción):
   - Antes: «la covarianza negativa entre coeficientes de regresores casi alineados»
   - Ahora: «la covarianza negativa entre los estimadores de los coeficientes de regresores casi alineados»

## Cambiadas después por decisión del autor (12-11-2026)

6. Descripción de la cabecera (`#+DESCRIPTION`): «por qué los coeficientes se vuelven imprecisos e inestables» → «por qué los coeficientes se estiman con poca precisión y son inestables».
7. Párrafo de introducción: «coeficientes imprecisos e inestables» → «coeficientes estimados con poca precisión e inestables».
8. Transparencia «Qué es» (colinealidad de grado): «Solución única, pero imprecisa e inestable.» → «Solución única, pero estimada con poca precisión e inestable.»
9. **Pregunta 1, opción 2**: «…y la solución es única pero imprecisa e inestable.» → «…y la solución es única pero estimada con poca precisión e inestable.»

## Frases revisadas y no cambiadas

- «el error estándar de un coeficiente» / «de cada coeficiente» (varias): es el nombre habitual de la cifra que Gretl imprime junto a cada coeficiente estimado. Se deja.
- «su coeficiente se estima con precisión», «la muestra no permite estimar ese coeficiente con precisión» (opción 3 de la pregunta 9): la precisión se atribuye a la estimación del coeficiente, no al coeficiente. Se dejan.
- Título «Por qué oscilan los coeficientes»: se deja (es el título de una transparencia y un ancla).

## Qué debe hacer el banco

1. Ajustar la pregunta del banco que corresponda a la pregunta 1 de la lección (colinealidad exacta frente a colinealidad de grado) a la redacción nueva de la opción 2 (cambio 9), y cualquier otra que diga «imprecisa e inestable» de la solución o «coeficientes imprecisos».
2. Si alguna pregunta cita casi literalmente las frases 1 a 3, ajustarla a la redacción nueva.

## Aplicado

Aplicado por la sesión del banco el 12-11-2026, sin commit ni Moodle todavía.

- **Cambio 9 («única pero imprecisa e inestable»)**: ninguna pregunta del banco usa esa frase en una opción. La más cercana estaba en una explicación de `L-14-QueEsYQueNoEsLaColinealidad` («la solución es única, aunque imprecisa»): ahora, «única, aunque estimada con poca precisión». Lo mismo en una explicación de `L-13-TIndividualesPequenosFGrande` («las coordenadas son únicas, solo imprecisas» → «solo que estimadas con poca precisión»).
- **Frase 1 («gana precisión»)**: `L-14-QueHacerConLaColinealidad` la citaba casi literal en dos opciones y una explicación («el coeficiente de x2 ganará precisión, pero pasará a medir…»). Ahora: «el estimador del coeficiente de x2 ganará precisión, pero el coeficiente pasará a medir…» (y su gemela «…y el coeficiente seguirá midiendo…»). `L-14-QueHacerYQueNoHacer` ya decía «el estimador del coeficiente… ganará precisión»; se le ha añadido el sujeto de la segunda mitad («pero el coeficiente dejará de medir…»).
- **Frases 2 y 3**: ninguna pregunta las cita.
- **Revisado y no cambiado**: `L-14-SubespacioEstableCoordenadasNo`, explicación «cada coordenada se dispersa $1/\sin\theta$ veces más que el ajuste»: la misma frase nombra antes $\hat\beta_2$ y $\hat\beta_3$ y habla de lo que producen las muestras; «son inestables», dicho de las coordenadas, se deja como en la lección. `L-11-QueHaceMasPrecisoAlEstimador` y `L-14-LeerElVIF` ya atribuyen la precisión al estimador.
- Lint sin errores. Pendiente: commit y reimportar en Moodle `L-14-QueHacerConLaColinealidad` y `L-13-TIndividualesPequenosFGrande` (ya estaban en la lista de reimportación por el aviso del 11-11).
