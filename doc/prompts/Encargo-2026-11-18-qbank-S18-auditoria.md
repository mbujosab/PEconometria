# Aviso de las lecciones al banco de preguntas (18-11-2026, noche)

Completa los avisos `Encargo-2026-11-18-qbank-doce-viviendas.md`, `-S18-B.md` y `-S18-C.md`. Tras la
auditoría externa de comprensión de las tres prácticas de la sesión 18
(`Informe-2026-11-18-auditoria-comprension-S18.org`) se han aplicado, por decisión del autor, sus
cuatro hallazgos medios y sus leves. Ninguna cifra de las salidas cambia. Lo que sigue es lo que
puede afectar a una pregunta; lo demás son hiperenlaces y redacción.

## S18-A

- **Actividad 5.** Con doce viviendas cambian tres cosas: el coeficiente estimado ($10\,928$ frente a
  $9\,120$), el error estándar y el valor crítico. No cambia el parámetro $\beta_2$. (Antes: «no ha
  cambiado la relación entre las variables».)
- **Respuesta 4.** Con solo el intervalo al $95\,\%$ no se sabe si $H_0\!:\beta_2=10\,000$ se
  rechazaría también al $1\,\%$. (Antes: no se sabe «si $10\,000$ está justo fuera o muy lejos».)
- **Pregunta 1.** Ahora pregunta cuál de las tres «desviaciones típicas» tendería a cero con muchas
  más viviendas y cuáles se estabilizarían. (Antes: cuál «cambiaría».)
- **Hipótesis sobre el parámetro.** «Si $\beta_2$ fuese cero», «que $\beta_2$ sea cero» (antes «el
  coeficiente»).
- **Actividad 3.** El $F$ es $\mathrm{SEC}$ y $\mathrm{SRC}$ divididas por sus grados de libertad:
  $n-k=504$ los del residuo (lección 11) y $k-1=1$ los del ajuste. $21{,}7475^2=472{,}95$ (el $t$ está
  redondeado; el $F$ es $472{,}952$). La segunda tabla de la salida de `restrict` es el modelo sin
  `rooms`.
- **Respuesta 3.** Con $R^2=0{,}48$ el ángulo entre el regresando y el regresor, los dos en
  desviaciones, es de unos $46^\circ$: lo modesto es el $R^2$.
- **Respuesta 2.** Al cambiar de unidades cambia el *valor* de la pendiente, $10\hat\beta_2$.

## S18-B

- **Respuesta 4.** El intervalo deja fuera al $0{,}5$ «con probabilidad $0{,}05$ en cada repetición»;
  al repetir muchas veces, en alrededor de una de cada veinte.
- **Respuesta 3.** La desviación típica es la norma estadística del vector en desviaciones, definida
  en la lección 4 (no en la 5).
- **Actividad 4.** La última línea de la salida se rotula «R2 del segundo ajuste» (antes «R2 en ambos
  casos»); el del primero es el de la tabla de la actividad 2, $0{,}9866$.

## S18-C

- **Potencia.** Es la *probabilidad* de rechazar una hipótesis falsa; la frecuencia de las $4\,000$
  réplicas la aproxima. (Antes se llamaba potencia a la frecuencia.)
- **Figura de los cien intervalos.** Cada valor del eje horizontal es una réplica; fallan $7$, de los
  que cinco se ven en la figura (réplicas 7, 12, 27, 63 y 85).
- **Actividad 3.** El bloque de $n=12$ repite, con la misma semilla, las réplicas de la actividad 1:
  por eso su cobertura es otra vez $0{,}952$.
- **Apéndice.** Repite la actividad 3 (no la 1) con perturbaciones $\chi^2_1$. «El nivel del $5\,\%$
  que se ha fijado ya no es la frecuencia real de rechazo» (antes «el $5\,\%$ que imprime el
  programa»).
- **Comandos.** `smpl 1 100` y `smpl 1 12` (rango de observaciones) son nuevos en esta práctica;
  `$coeff` es de la sesión 11.

## Aplicado


Revisado por la sesión del banco el 18-11-2026: **nada cambiado**; una cosa medida, para que conste.

- Ninguna pregunta usa las frases retiradas («no ha cambiado la relación entre las variables», «justo fuera o muy
  lejos», «el 5 % que imprime el programa», «R2 en ambos casos») ni las cifras citadas ($46^\circ$, $0{,}9866$,
  $472{,}95$, $10\,928$, $9\,120$).
- «Potencia» no aparece en el banco en sentido estadístico (solo «la potencia del motor» como regresor y en
  comentarios de código): ninguna pregunta llama potencia a una frecuencia.
- Ninguna pregunta cita en qué lección se define la desviación típica (el banco no nombra lecciones), ni comandos de
  Gretl (`smpl`, `$coeff`, `restrict`).
- «Grados de libertad del residuo / del ajuste»: ya aplicado con los avisos del 17-11.
- **Hipótesis sobre el parámetro («si $\beta_2$ fuese cero», antes «el coeficiente»).** Medido: de L-12 a L-16 hay 29
  frases en 9 preguntas con la forma «que su coeficiente sea cero», «si los coeficientes de … fuesen cero a la vez»,
  «el coeficiente poblacional de … vale cero» (`L-12-ElNivelLoEligeQuienContrasta`, `L-13-DosSalidasDeGretl-x3`,
  `L-13-DosTPequenosYUnFGrande`, `L-13-LeerUnContrasteF`, `L-13-MismoR2DistintoVeredicto`,
  `L-13-QueDiceYQueNoDiceElF`, `L-14-QueHacerYQueNoHacer`, `L-14-UnaSalidaConSusVIF-x3`, `L-16-InteraccionYChow`).
  No se han tocado: es la forma que la Guía de estilo da como correcta («Los coeficientes de la indicadora y de las
  interacciones valen cero»; «excluir un regresor» = «que su coeficiente valga cero») y la que usa la lección 13
  (cinco veces en `S19-Lecc13.org`). En esas frases «coeficiente» es siempre el parámetro: la estimación está a la
  vista en la tabla y no es cero. Si el autor quiere que también el banco diga «$\beta_j$» o «el parámetro» en las
  hipótesis, que lo indique con la regla y se aplica; afectaría a opciones de preguntas E y B que ya están en papel.

Decisión del autor (18-11-2026, en la sesión del banco): las frases del banco con «coeficiente» en las hipótesis están bien como están; no se cambian.
