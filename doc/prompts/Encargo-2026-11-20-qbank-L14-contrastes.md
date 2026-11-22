# Aviso al banco de preguntas: lección 14, lenguaje de los contrastes (20-11-2026)

Aviso desde la sesión de revisión de las lecciones (20-11). Se ha precisado una regla en la sección 6 de `doc/prompts/GuiaDeEstilo.org` y se han aplicado tres cambios en `org-lessons/S21-Lecc14.org`. Ninguna cifra cambia. Lo que afecta al banco:

1. **Regla (Guía, sección 6).** Cuando el texto lee la salida concreta de una estimación, el resultado de un contraste se escribe como «se rechaza» o «no se rechaza» la hipótesis, diciendo el nivel de significación: «no se rechaza al 5 % la igualdad de los dos coeficientes, por poco (p = 0,060)». En esas lecturas no se escribe «los datos no permiten afirmar que…» ni «los datos no permiten asumir que…». La regla **no alcanza a las afirmaciones generales** (síntomas, procedimientos, casos hipotéticos, preguntas sin salida delante): esas no llevan nivel, y solo se les exige nombrar los coeficientes, no los regresores. Una pregunta del banco que dé una salida concreta y pida leer un contraste debe seguir la regla; una pregunta general no debe particularizarse a un 5 %.

2. **Pregunta 11, opción 1.** Decía «Eliminar los dos, porque no son significativos.». Ahora: «Eliminar los dos, porque sus coeficientes no son significativos.». La respuesta correcta y las demás opciones no cambian.

3. **Transparencia «Síntomas y diagnóstico», primer síntoma.** «…o R² alto con casi nada significativo» pasa a «…o R² alto con casi ningún coeficiente significativo».

4. **Apuntes de «Por qué oscilan los coeficientes».** La frase que recordaba la lección 13 dice ahora: «Por eso en la lección 13 el F rechazaba al 5 % que los coeficientes de `nox` y `lnox` valgan cero a la vez (28,2 frente a un crítico de 3,01) y ninguno de los dos t rechazaba al 5 % que su coeficiente valga cero (p = 0,854 y p = 0,295): el subespacio que generan los regresores del modelo es estable; la estimación de cómo se reparte el efecto entre `nox` y `lnox`, no.». Desaparece «la muestra no permite separarlos» de esa frase.

Lo que conviene mirar en el banco: opciones o explicaciones que digan que un regresor «es / no es significativo» (debe ser su coeficiente), y lecturas de una salida concreta sin nivel o con «los datos no permiten afirmar/asumir».

Añadido el 21-11-2026, tras la revisión de fondo de la lección 14. Dos afirmaciones de los apuntes eran ciertas solo bajo una condición que no se decía; ahora la llevan. Ninguna cifra cambia.

5. **Restricciones lineales y precisión (apuntes de «Qué hacer», tercer caso).** Decía que con `β2 + β3 = 1` el regresor que queda, `x2 − x3`, «es la dirección corta» con correlación positiva, y que «la restricción solo gana precisión si la combinación que impone va en la dirección compartida: efectos proporcionales con el mismo signo cuando la correlación es positiva, con signos opuestos cuando es negativa». Eso solo vale si los dos regresores tienen longitudes parecidas en desviaciones (en los coches, las millas son unas 0,134 veces la edad y `edad − millas` es un vector largo). Ahora: «Si los dos regresores tienen correlación positiva y longitudes parecidas en desviaciones, x2 − x3 es un vector corto, casi tanto como la parte propia, y el error estándar apenas cambia. Lo que decide la ganancia es la longitud en desviaciones del regresor que deja la restricción: cuanto más largo, menor es el error estándar. Con regresores de longitudes parecidas, la suma es larga cuando la correlación es positiva y la diferencia lo es cuando la correlación es negativa.» Y el cierre: «Si el F no la rechaza y el regresor que deja la restricción es largo en desviaciones, el modelo restringido tiene un coeficiente en lugar de dos, estimado con un error estándar menor» (antes: «reduce la colinealidad y permite una interpretación más clara»). Una pregunta del banco que dé como regla general «la restricción solo gana precisión si los efectos tienen el mismo signo que la correlación», o que diga que una restricción «reduce la colinealidad», debe revisarse: el criterio es la longitud en desviaciones del regresor que deja la restricción, y ninguna restricción lineal alarga el error estándar por este motivo (la parte propia es la combinación más corta).

6. **Signo de la covarianza entre dos estimadores (apuntes de «Por qué oscilan los coeficientes»).** La regla «el signo de la covarianza entre los dos estimadores es el contrario al de la correlación entre los regresores» se enuncia ahora con su condición: «Con dos regresores no constantes y correlación positiva entre ellos, como en la figura, oscilan en sentidos opuestos […]; con correlación negativa, en el mismo sentido.» Y se añade: «Con más regresores, la correlación que cuenta es la que queda entre los dos tras descontar de cada uno lo que comparte con los demás.» También cambia el arranque: ya no dice que los estimadores son imprecisos «simultáneamente», sino que «lo que uno se desvía en una muestra está relacionado con lo que se desvía el otro». Una pregunta del banco que use la regla del signo debe decir que el modelo tiene dos regresores no constantes ; con tres o más, el signo de la correlación simple no basta. La pregunta 7 de la lección cambia de enunciado por este motivo: «Con dos regresores cuyos vectores en desviaciones casi se alinean, de una muestra a otra cambian mucho:» pasa a «En un modelo con constante y dos regresores cuyos vectores en desviaciones casi se alinean, ¿qué cambia mucho de una muestra a otra y qué no?». Sus cuatro opciones no cambian.

7. **Pregunta 8, opción 2 (la correcta).** La afirmación de que el cambio del precio ajustado «es casi el mismo en los dos modelos» solo vale en los niveles centrales de contaminación: el modelo con `nox` resta siempre 1885 dólares por unidad; el modelo con `nox` y `lnox` resta 2014 de 5 a 6, pero 2555 de 4 a 5 y 1366 de 7 a 8. La opción dice ahora: «Los dos regresores casi se alinean, así que el mismo ajuste admite descomposiciones muy distintas en las que un coeficiente compensa al otro; en los niveles de contaminación habituales, el cambio del precio ajustado ante un aumento de la contaminación es casi el mismo en los dos modelos.» Los apuntes llevan la misma acotación («en los niveles de contaminación en que hay muchos barrios»). Una pregunta del banco que afirme sin acotar que los dos modelos dan el mismo cambio del precio ajustado debe llevarla.

8. **«Oscilar» sale de la lección 14 (decisión del autor, 21-11: sugiere un cambio periódico).** Título de transparencia: «Por qué oscilan los coeficientes» pasa a «Por qué son inestables los coeficientes» (el ancla `por-que-oscilan` no cambia). Pregunta 7, título: «Lo que oscila y lo que no» pasa a «Lo que es estable y lo que no»; su enunciado y sus opciones no cambian. En el texto: «los coeficientes son inestables», «se desvían en sentidos opuestos», «la inestabilidad de los coeficientes». Las prácticas S20-A, S20-B, S22-A y S22-C y la portada citan ya el título nuevo y no dicen que los coeficientes «oscilan». Se mantiene «el F oscila en torno a 1» y «la oscilación propia de dos mil réplicas» (S20-B, S20-C, S22-A, S16-B), que es otro uso. En el banco: ninguna pregunta debe citar el título antiguo ni decir que los coeficientes «oscilan».

9. **Transparencia «Por qué son inestables los coeficientes».** «β̂2 lo compensa con signo contrario» pasa a «β̂2 cambia cos θ veces lo que β̂3, con signo contrario: casi lo mismo cuando θ es pequeño» (a 70° los cambios son −0,026 y 0,075; a 10°, −0,397 y 0,403). Una pregunta que diga que un coeficiente cambia «lo mismo» que el otro con signo contrario debe decir que es así cuando el ángulo es pequeño.

10. **Título de transparencia.** «Qué no hacer» pasa a «Qué decir y qué no hacer» (el ancla `lo-que-no` no cambia): la pantalla empieza por la obligación de reconocer que la muestra no separa los efectos. Su contenido no cambia.

11. **Otros cambios de redacción de la revisión del 21-11, sin cifras nuevas.** (a) Transparencia «Síntomas y diagnóstico»: el tercer síntoma es «Coeficientes que cambian mucho cuando cambia la muestra» (antes «muy sensibles a quitar unas pocas observaciones o a añadir un regresor»; que un coeficiente cambie al añadir un regresor es el efecto parcial, no colinealidad), y el cuarto dice «con más de dos regresores no constantes no bastan» (antes «con k>3»). (b) Transparencia «Qué hacer», punto «Reformular»: separa los dos casos. Misma magnitud (`nox` y `lnox`): se elige una forma funcional. Dos magnitudes distintas (edad y millas): el modelo deja de distinguirlas y cambia lo que mide el coeficiente que queda; con las millas en el modelo, 28 dólares por semana a igual kilometraje; sin ellas, 7,3 dólares por semana, que incluyen el efecto de las millas recorridas en esa semana. (c) Eliminación uno a uno (`omit --auto`): hay que leer el contraste conjunto de las variables omitidas porque no equivale a los contrastes individuales; que ningún t rechace que su coeficiente valga cero no implica que el F no rechace que todos valgan cero a la vez, y si el F lo rechaza esos regresores no deben salir del modelo. (d) Ortogonalizar: los coeficientes de los demás regresores pasan a ser los del modelo sin x_j, con errores estándar menores que en el modelo original (no que en el modelo sin x_j). (e) Los estadísticos F se calculan con sumas residuales y no dependen del ángulo entre los generadores; cada t se calcula con una coordenada. (f) El coeficiente de las millas en el modelo de los coches con edad y millas es −154,6 dólares por cada mil millas. (g) «Longitud propia» y «componente de variación propia» desaparecen: siempre «parte propia» y «longitud de la parte propia». (h) Figura de la parte propia: cada panel rotula su ángulo, θ = 60°, θ = 20°, θ = 6°.

## Aplicado


Revisado por la sesión del banco el 22-11-2026 (L-11 a L-16; en L-01..L-10 ninguna pregunta dice «significativo»,
«permiten afirmar» ni «oscilar»). **Diez preguntas tocadas, de L-12 a L-14**; ninguna cifra, ninguna respuesta correcta y ningún
sorteo cambian. `make lint` de L-12 a L-14 da lo mismo que antes y la vista de lectura está compilada. Commit `eb01ed9` del banco, empujado, y Moodle
reimportado el mismo día (1 828 preguntas en diez categorías).

**Punto 1, lecturas de una salida concreta.** Tres opciones decían «los datos no permiten afirmar…»; ahora son
lecturas en términos de «no se rechaza», con su nivel:

- `L-13-QueDiceYQueNoDiceElF` (el enunciado acaba en «al 5 % de significación:»): «los datos no permiten afirmar que
  quitar x3 y x4 alargue el residuo más de lo que cabe esperar por azar» pasa a «no se rechaza que los coeficientes de
  x3 y x4 sean cero a la vez». En sus `exp`, fuera «no hay evidencia de que alguno de los dos coeficientes sea
  distinto de cero» (truncada) y «los datos no permiten afirmar que… acorten el residuo».
- `L-13-DosTPequenosYUnFGrande` (mismo final de enunciado): la opción del régimen en que nada rechaza pasa a «no se
  rechaza que el coeficiente de x3 sea cero, ni que lo sea el de x4, ni que lo sean los dos a la vez». Su `exp`:
  «…no es el caso de "t pequeños con F grande": aquí tampoco el F rechaza al 5 % que los coeficientes de x3 y x4 sean
  cero a la vez. Que no se rechace no demuestra que sean cero: es ausencia de evidencia contra H0, no evidencia a su
  favor».
- `L-14-UnaSalidaConSusVIF-x3`, parte 3: la misma opción, con el nivel dentro («al 5 % de significación no se rechaza
  que el coeficiente de xa sea cero, ni que lo sea el de xb, ni que lo sean los dos a la vez»), y su `exp` igual.

No se ha tocado, por ser afirmación general o caso hipotético: la `exp` de `L-13-QueContrastaElFDelPie` («si no se
rechaza, los datos no permiten afirmar que alguno de los coeficientes… sea distinto de cero», que es la redacción
que pidió el aviso de L-13 del 20-11); las opciones «rechazar H0 no excluye…», «si el F no rechazase…»; y el
enunciado de `L-14-QueHacerConLaColinealidad` («el F… rechaza con claridad»), que describe un caso sin salida.
Tampoco «con estos datos no se puede separar el efecto de uno del efecto del otro», que la lección conserva en
«Qué decir y qué no hacer».

**Puntos 2 y 3, «significativo» se dice del coeficiente.**

- `L-14-QueHacerConLaColinealidad`: «…hasta que el que quede salga significativo» pasa a «…hasta que el coeficiente
  del que quede salga significativo».
- `L-12-RuidoEnElPieDeLaTabla`: «dice si el efecto de la superficie es significativo» pasa a «dice si el coeficiente
  de la superficie es significativo».
- `L-13-DosTPequenosYUnFGrande` (`exp`): «eliminar los dos "porque ninguno es significativo"» pasa a «"porque sus
  coeficientes no son significativos"», como la opción 1 de la pregunta 11 de la lección.
- `L-12-AnchuraDelIntervalo` (`exp`): «Decir solo "es significativo"» pasa a «"el coeficiente es significativo"».
- Rótulos de la vista de profesor (`motivo`) de `L-12-UnaSalidaFilaAFila-x3` y `L-13-DosSalidasDeGretl-x3`:
  «algún regresor no es significativo» pasa a «el coeficiente de algún regresor…», y «ninguno de los dos
  regresores» a «ninguno de los dos coeficientes».

Quedan como estaban, porque no se dice de un regresor: «un F conjunto no puede ser significativo si ningún t
individual lo es» (opción falsa de `L-13-TIndividualesPequenosFGrande`), «un ángulo de 84° resulta significativo» y
«Significativo no es relevante» (`L-13-MismoR2DistintoVeredicto`), «significativo e irrelevante a la vez» y «el
veredicto "no significativo"» (`L-12-SignificativoNoEsRelevante`, dichos del efecto estimado). Ninguna pregunta decía
«R² alto con casi nada significativo».

**Punto 4.** Nada que cambiar: ninguna pregunta cita esa frase de los apuntes.

**Punto 5, restricciones lineales.** `L-14-QueHacerConLaColinealidad` (su enunciado fija correlación positiva y
alta). La opción verdadera decía que la combinación «se estima con precisión»; ahora, «estimado con un error
estándar menor». Las dos `exp` ya no hablan de «la dirección compartida, la larga» ni de «se interpreta con
claridad»: dicen que lo que decide la ganancia es la longitud en desviaciones del regresor que deja la restricción
(con correlación positiva y c > 0, más largo que x2 y mucho más que su parte propia). Ninguna pregunta daba la regla
«solo gana precisión si los efectos tienen el mismo signo que la correlación» ni decía «reduce la colinealidad».

**Punto 6, signo de la covarianza.** `L-14-SubespacioEstableCoordenadasNo` es la única que usa la regla; su
enunciado ya regresa sobre la constante y dos regresores. La `exp` decía «Lo general es que la covarianza… tiene el
signo contrario…»; ahora, «Con dos regresores no constantes, como aquí, la covarianza…».

**Punto 7.** Ninguna pregunta afirma que los dos modelos (`nox` solo, `nox` y `lnox`) den el mismo cambio del precio
ajustado.

**Punto 8.** Ninguna pregunta del banco dice «oscilar» ni cita el título antiguo.

**Punto 9.** `L-14-SubespacioEstableCoordenadasNo`, `exp` de la figura: «y β̂2 lo compensa en sentido contrario»
pasa a «y β̂2 cambia cos θ ≈ (la correlación del enunciado) veces esa cantidad, en sentido contrario». Uno de los
tres ángulos sorteados es de 30° (cos θ = 0,866), así que no se dice «casi lo mismo»: se da la cifra.

**Punto 10.** Ninguna pregunta cita el título «Qué no hacer».

**Punto 11.** (g) `L-13-TIndividualesPequenosFGrande`: «por unidad de longitud propia del regresor» pasa a «por
unidad de longitud de la parte propia del regresor»; no había ningún «componente de variación propia» («variación
propia» a secas sigue, como en la lección). (a) Ninguna pregunta da como síntoma de colinealidad que un coeficiente
cambie al añadir un regresor (`L-14-EfectoParcialOColinealidad` y `L-14-TablaAntesYDespues` dicen que eso es el
efecto parcial); `L-14-TablaAntesYDespues` conserva una opción falsa sobre quitar unas pocas observaciones, que es
un cambio de muestra y sigue siendo correcta. (b), (c), (d): `L-14-QueHacerConLaColinealidad` y
`L-14-QueHacerYQueNoHacer` ya decían lo que ahora dice la lección (el coeficiente que queda cambia de significado;
contrastar con un F antes de eliminar varios; al ortogonalizar, el coeficiente de x2 pasa a ser el del modelo sin
x3) y no comparan errores estándar con el modelo sin x_j. (e), (f), (h): sin efecto en el banco.

**«Cada t pregunta si su regresor aporta algo además de los otros»: decidido por el instructor el 22-11-2026.** Las
opciones y `exp` que lo dicen (`L-13-DosTPequenosYUnFGrande`, `L-13-TIndividualesPequenosFGrande`,
`L-13-DosSalidasDeGretl-x3`, `L-14-QueHacerYQueNoHacer`) **se quedan como están**: describen qué pregunta el
contraste, no qué ha respondido, igual que los apuntes de la lección 13 («el t de `nox` pregunta si `nox` aporta algo
además de la constante, `rooms` y `lnox`»), y esa descripción es lo que distingue la opción verdadera («además de
los otros») de la falsa («por sí solo, ignorando a los demás»). Tampoco se toca «cada t juzga a su regresor con el
otro dentro del modelo» de `L-13-TIndividualesPequenosFGrande`.

Sí se cambió una `exp` de `L-14-QueHacerConLaColinealidad` que leía un resultado en términos del regresor: «cada uno
dice que su regresor añade poco al otro, no que el par no añada nada» pasa a «cada uno deja sin rechazar que su
coeficiente sea cero con el otro regresor en el modelo, no que lo sean los dos a la vez». Commit `f0c6c72` del
banco, empujado, y esa categoría reimportada en Moodle el mismo 22-11 (300 preguntas).
