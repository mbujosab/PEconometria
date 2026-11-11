# Aviso al banco de preguntas: lección 14 tras la auditoría del 10-11

Aviso desde la sesión de revisión de las lecciones (11-11). La auditoría de fondo de la lección 14 (`doc/prompts/Informe-2026-11-10-auditoria-L14.org`) se ha aplicado entera, por decisión del autor, en `org-lessons/S21-Lecc14.org`. Lo que sigue es lo que afecta a preguntas del banco. Las siete preguntas de repaso que cambian en la lección son la 1, la 4, la 7, la 8, la 10, la 11 y la 12.

1. **Definición de la colinealidad de grado (preguntas 1 y 10, y cualquier otra que use la fórmula).** La lección decía «un regresor forma un ángulo muy pequeño con el subespacio generado por los demás (constante incluida)». Ahora dice «un regresor *en desviaciones* forma un ángulo muy pequeño con el subespacio generado por los demás (constante incluida)». Sin «en desviaciones» la frase vale para cualquier regresor con una media grande frente a su dispersión, porque el vector de unos está en el subespacio: en `hprice2`, el vector de `rooms` sin restar la media forma 6° con el subespacio de `1`, `nox` y `lnox`, y su VIF es 1,10. El ángulo del VIF, θ_j, es el del regresor en desviaciones con su ajuste en desviaciones en la regresión auxiliar. La Guía de estilo §5 y la lección 12 (apuntes de «El error estándar con varios regresores») llevan la misma corrección. Toda pregunta del banco que defina o describa la colinealidad de grado con ese ángulo debe decir «en desviaciones».

2. **Pregunta 8 (`nox` y `lnox`, coeficientes 404 y −13262).** La lección decía que eran «dos cifras enormes de signo opuesto que se reparten un efecto que, sumado, es el de siempre». No se sostiene: con `nox` solo el coeficiente es −1884,7, así que el de `nox` no crece (pasa a 404,2 y cambia de signo), y los dos coeficientes están en unidades distintas, de modo que su suma no es ningún efecto. Lo que se mantiene es el cambio del precio ajustado cuando `nox` pasa de 5 a 6: −1885 dólares con `nox` solo, −1997 con `lnox` solo y −2014 con los dos (404,2 − 13262·ln(6/5)). Texto nuevo:
   - enunciado: «Con `nox` y `lnox` en el mismo modelo, los coeficientes estimados son 404 y −13262, de signos opuestos, y con `nox` solo el coeficiente era −1885. La razón es que:»
   - opción 2: «Los dos regresores casi se alinean, así que el mismo ajuste admite descomposiciones muy distintas en las que un coeficiente compensa al otro; el cambio del precio ajustado ante un aumento de la contaminación es casi el mismo en los dos modelos.»
   
   Ninguna pregunta debe decir que los dos coeficientes son «grandes» ni hablar de «la suma de efectos».

3. **Pregunta 11 (qué hacer).** La versión anterior daba como razonable «quedarse con uno de los dos, o con una combinación: la información es la misma y la precisión mejora», que contradice la lección 13 desde `efa91cd` («quitar una de las dos no lo resuelve»). Además llamaba «dos escalas» a `nox` y `lnox`; dos escalas de la misma magnitud (Celsius y Fahrenheit) son el ejemplo de colinealidad *exacta* de la lección. Texto nuevo:
   - enunciado: «Dos regresores son la misma magnitud en niveles y en logaritmos, sus t son bajos y el F de excluirlos juntos es alto. Se quiere un solo coeficiente que resuma el efecto de esa magnitud. La respuesta razonable es:»
   - opción 2: «Quedarse con uno de los dos: no se pierde información sobre las unidades observadas, y hay que decir que se ha elegido una forma funcional.»
   
   Ninguna pregunta debe llamar «dos escalas» a una variable y su logaritmo.

4. **Pregunta 4.** El título pasa a «Cómo se obtiene la longitud de la parte propia». En la respuesta, la opción 4 «confunde este resultado con la fórmula matricial de la varianza, que la lección 11 enunció sin demostrar» (decía «con el enunciado de la insesgadez de 𝔰²», que no correspondía a la opción).

5. **Pregunta 12 (demostrado y enunciado).** La insesgadez de 𝔰² con k regresores la enunció la lección 11, no esta sesión. Opción 2: «…; la fórmula del error estándar 𝔰/‖x̃_j‖_e se ha enunciado en la sesión y el apéndice la demuestra.» Opción 3: «Se ha demostrado todo, incluida la fórmula del error estándar.» La respuesta, en consecuencia: «la fórmula del error estándar se enuncia y el apéndice la demuestra».

6. **Pregunta 7 (lo que oscila y lo que no).** Opción 2: el ajuste, el R², 𝔰 y el F conjunto «cambian lo mismo que con regresores perpendiculares» (decía «apenas cambian»). Lo que la lección demuestra es que la variación del ajuste de una muestra a otra no depende del ángulo entre los regresores, no que sea pequeña.

7. **Otros cambios de la lección que pueden afectar a preguntas del banco.**
   - «Mejoran el ajuste» ya no se usa como conclusión de un contraste (Guía §6): «los regresores juntos acortan el residuo más de lo esperable por azar».
   - «Regresores alineados» sin «casi» ya no aparece: alineados es el caso exacto. Evaluación de la pregunta 8: «coeficientes de regresores casi alineados con correlación positiva».
   - Para predecir: «si lo que se quiere del modelo es predecir para combinaciones de regresores como las observadas, la colinealidad no es un problema» (decía «la presencia de colinealidad es irrelevante»).
   - La recta (`nox`) y la curva (`lnox`): en el barrio más contaminado de la muestra la recta predice unos 800 dólares menos que la curva (16 556 frente a 17 349, con `rooms` en su media); la lección decía «mucho menor».
   - Tabla del VIF: para ρ = 0,5, √VIF = 1,15 (decía 1,2).
   - Transparencia «Síntomas y diagnóstico»: «Colinealidad es que su error estándar se multiplique y que el coeficiente cambie mucho al añadir o quitar pocas observaciones.» Transparencia «Qué hacer y qué no»: «Puede ganarse precisión, y se pierde…» y «contrastar con el F que sus coeficientes valen cero a la vez».
   - Los apuntes de «La parte propia de un regresor» escriben ahora la fórmula β̂_j = ⟨x̃_j, y⟩_e / ‖x̃_j‖_e², junto a la del error estándar (enunciado; demostración en el apéndice, sección 5.4).

Si alguna pregunta del banco cita literalmente un texto de la lección que haya cambiado, debe actualizarse.

## Aplicado

Sesión del banco, 11-11-2026 (Fable). Sin commit ni Moodle; a la espera de la lectura del instructor.

- **Punto 1 («en desviaciones»).** Ninguna pregunta define la colinealidad de grado con el ángulo sin decir «en desviaciones»: `L-14-LeerElVIF` y `L-14-SubespacioEstableCoordenadasNo` ya hablaban de $\boldsymbol{x}_j-\mu_{\boldsymbol{x}_j}\boldsymbol{1}$, y las de L-10 y L-12 no usan esa fórmula. Corregida la única explicación que decía «el ángulo entre los regresores» (`L-14-TablaAntesYDespues`, ahora «entre los regresores en desviaciones»).
- **Punto 2 (`nox` y `lnox`).** El banco no usa ese ejemplo, pero `L-14-SubespacioEstableCoordenadasNo` repetía la idea en dos explicaciones («dos cifras grandes de signo opuesto que se reparten un efecto que, sumado, cambia poco»; «parejas grandes de signo opuesto»). Ahora: «el mismo ajuste admite descomposiciones muy distintas en las que una coordenada compensa a la otra» y «parejas de coordenadas que se compensan».
- **Punto 3 (qué hacer).** `L-14-QueHacerConLaColinealidad` ya decía que al quitar un regresor el otro gana precisión pero pasa a medir otra cosa; no llama «dos escalas» a una variable y su logaritmo («dos escalas» solo aparece en L-10, para la colinealidad exacta). Sin cambios de fondo.
- **Puntos 4 y 5 (preguntas 4 y 12).** El banco no tiene preguntas sobre qué se demuestra y qué se enuncia. Nada que cambiar.
- **Punto 6 (pregunta 7).** En `L-14-SubespacioEstableCoordenadasNo` una opción verdadera decía que el ajuste «apenas se mueve»; ahora «las dos coordenadas oscilan en sentidos opuestos, mientras $\hat{\boldsymbol y}$ oscila como con regresores perpendiculares», y las dos explicaciones dicen que la oscilación del ajuste no depende del ángulo.
- **Punto 7.** «Rechaza con claridad que sobren los dos» pasa a «que sus dos coeficientes sean cero a la vez», y «contrastar con un $F$ que pueden omitirse a la vez» a «que sus coeficientes valen cero a la vez» (opción y explicación de `L-14-QueHacerConLaColinealidad`). «Mejoran el ajuste» solo aparece como distractor; «alineados» va siempre con «casi»; para predecir sin extrapolar el banco ya decía «no es un problema»; las cifras de la recta y la curva y la tabla del VIF no se citan en ninguna pregunta.
- **Longitud de las opciones** (aviso de la lección 13, punto 1): no aplica al banco; ver el «Aplicado» de `Encargo-2026-11-11-qbank-L13.md`.
- Comprobado: `make lint` sin errores y con los mismos avisos que antes; `make amc LECCION=13-14` compila. Pendiente: reimportar en Moodle las tres preguntas de L-14 modificadas.
