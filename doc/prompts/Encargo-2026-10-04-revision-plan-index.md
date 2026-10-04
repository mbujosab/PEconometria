# Encargo: puesta al día del Plan de escritura (fichas §7.13–7.23, §10 semillas) y de los resúmenes de index.org tras el apéndice

Repositorio: este mismo (`PEconometria`). Contexto: el 4-10-2026 se incorporó al curso el apéndice `org-lessons/Apendice-geometria.org` («Estructura geométrica de la probabilidad y de la inferencia en el modelo de regresión») y, a partir de él, se revisaron las lecciones 9, 11, 12, 13 y 14 y las prácticas S14-D, S16-A/B/C, S18-A/C, S21-C y S22-A/B (commits `a16c149`, `11b9146`, `6769ff6`; el detalle, con todas las decisiones, está en `doc/prompts/Plan-2026-10-04-revision-S12-S22-apendice.org`, que debes leer entero antes de empezar). El Plan de escritura (`doc/prompts/PlanDeEscritura.org`) y los resúmenes de `index.org` no se han actualizado. Esa es la tarea. Es un trabajo de cotejo: comparar lo que dicen las fichas y los resúmenes con lo que ahora dicen los ficheros, y corregir. **No edites lecciones ni prácticas**: si al cotejar encuentras algo que habría que cambiar en ellas, anótalo en el informe. Otra sesión (Fable) está leyendo en paralelo las lecciones 9–14 y puede tocar `PlanDeEscritura.org` en §4.2, §6 y §9.2: **no edites esas tres secciones**; el resto del Plan es tuyo.

## Reglas

1. Lee `doc/prompts/PlanDeEscritura.org` §1 (instrucciones, en especial la «actualización de la Ficha §7.N» y de §10) y una ficha ya revisada (por ejemplo §7.21) para copiar el formato de las anotaciones («Revisado 2026-10-02: …»). Las fichas son documentos internos: ahí sí se citan secciones del apéndice y ficheros por su nombre.
2. Forma usted (el Plan está escrito así), sin coloquialismos, sin adornos.
3. No toques §4.2, §6 ni §9.2 del Plan (los lleva la otra sesión). No hagas commits ni `git add`.
4. Cada corrección debe nacer de un cotejo con el fichero actual: cita en el informe la línea del fichero que la justifica.

## 1. Fichas §7.13 a §7.23 (sesiones 12 a 22)

Para cada ficha, coteja con el `.org` actual de la sesión (lección o prácticas) y corrige o anota (línea «Revisado 2026-10-04: …») lo que haya cambiado hoy. En particular:

- **§7.13 (S12, L9)**: las tres remisiones nuevas al apéndice (secciones 1, 1.3, 4) y la tabla de copias al definir «realización»; el enlace al antiguo apéndice de L11 ya no existe.
- **§7.16 (S15, L11)**: la figura `MatrizCopias` en «El marco»; «lista, no vector» en el comentario de la transparencia; el apéndice de la moneda reducido a un apartado con el ancla `apendice-copias` (contenido trasladado al apéndice, secciones 1.5, 2 y 3); la insesgadez de $\mathfrak s^2$ y el sesgo de $\mathrm{SRC}/n$ ahora con demostración localizada (apéndice 7.2); Gauss–Markov demostrado en el apéndice 7.3 (la celda de la tabla de recapitulación dice «(Gauss–Markov, apéndice)»); el Lema y las esperanzas iteradas remiten a 1.3; la nota al pie de los tres supuestos remite a 6.1; «¿Y con más regresores?» remite a 5.4, 6.5 y 7.1. Si la ficha lista el apéndice de la moneda entre los contenidos de la sesión, debe decir ahora que está en el apéndice general.
- **§7.18 (S17, L12)**: la frase de transparencia de «El supuesto nuevo» (D7); la lectura geométrica de la normalidad reescrita con las coordenadas del ruido (Resultados 1 y 3 del apéndice); la $t_{n-k}$ con demostración en el apéndice (8, 9); «Por qué el valor crítico depende de $n-k$» reescrito (cos θ como cociente de coordenadas); el intervalo de confianza remite a 9; la pregunta 6 con tres categorías (demostrado en la sesión / en el apéndice / enunciado). Si la ficha dice «isotropía» con la formulación antigua (distribución esféricamente simétrica del vector $\boldsymbol U$), hay que corregirla.
- **§7.20 (S19, L13)**: la frase de transparencia de «El estadístico $F$» (D7); «por qué sirve el cociente» reescrito (coordenadas del ruido, Resultados 1 y 2; única mención en las lecciones a $\mathcal E$ y $\mathcal R$); el $R^2$ que regala el azar con la nota sobre intercambiabilidad; la $F_{q,n-k}$ y $F=t^2$ remiten a 10; pregunta 12 con tres categorías.
- **§7.21 (S20, L14)**: la nota FWL remite a 5.4, 6.5 y 7.1; la fórmula del seno/VIF remite a 5.4.
- **§7.15 (S14-D)**: actividad 7 nueva «Coordenadas en una base ortonormal: SEC, SRC y el $F$ con números» (ancla `coordenadas-base-ortonormal`), «Síntesis» pasa a actividad 8; la ficha debe recoger qué hace (base adaptada, autovectores de la proyección sobre $\mathcal R$, coordenadas, comparación con `$ess`, `$Fstat`, `$coeff(x3)`).
- **§7.17 (S16-A/B/C)**, **§7.19 (S18-A/C)**, **§7.22 (S21-C)**, **§7.23 (S22-A/B)**: las frases de enlace añadidas (réplica = columna de la matriz de copias; condicionar = elegir columnas; cobertura como fracción de columnas; $F=t^2$ como identidad entre estadísticos; VIF por Pitágoras). Una línea «Revisado 2026-10-04» por práctica basta si no hay más cambios.
- En todas: si la ficha enumera «qué se demuestra y qué se enuncia», actualízalo con las tres categorías (en la sesión / en el apéndice / en ningún sitio).

## 2. Ficha nueva para el apéndice

Añade al final de §7 (antes de §7.28, catálogo de cuadernos, o donde el formato lo pida) una ficha «§7.29 Ficha — Apéndice de geometría (fuera de la numeración de sesiones)», con el formato de las demás: fichero, título, qué contiene por secciones (la tabla «Mapa de las lecciones» del propio apéndice, sección 12, te da el contenido), decisiones de notación (E y R, E_r y Q, esperanza condicional en cursiva y no condicional en redonda, sumas por subespacio, indicadoras como vectores, sin integrales ni áreas, nada de geometría sobre listas de variables aleatorias), qué se demuestra y qué se admite (lista al final de la sección 11 del apéndice), figuras (`img/Apendice-geometria/`), y cómo lo citan las lecciones (fórmula fija «La demostración está en el apéndice (sección N); aquí basta con …», enlaces pdf+html con anclas `sec-N`). Fecha: 2026-10-04.

## 3. §10 Semillas vivas

Coteja la tabla de promesas para las sesiones 12 a 22. Hoy se han cobrado varias que estaban «sin cobrar» o «se enuncia sin demostrar»: la distribución $t_{n-k}$ y la $F_{q,n-k}$ (apéndice 9 y 10), la independencia entre numerador y denominador (8), Gauss–Markov (7.3), la insesgadez de $\mathfrak s^2$ (7.2), «el ruido reparte su longitud» (Resultado 1), «dos direcciones al azar son casi ortogonales» (corolario del $R^2$, 8), «combinación lineal de normales es normal» (propiedad de la normal, 8), de dónde salen las copias (2 y 3). Marca cada una como «Cobrada en el apéndice (sección N)» y añade las semillas nuevas que el apéndice planta (por ejemplo: la lectura de Monte Carlo como «recorrer columnas» se cobra en S16-A, S18-C y S21-C; la actividad 7 de S14-D cobra «Pitágoras generalizado con la base partida en dos»). Si una semilla sigue sin cobrar y el apéndice no la toca, no la cambies.

## 4. index.org

Coteja los resúmenes (`session-summary`) de las sesiones S12 a S22 con el contenido actual de cada fichero y corrige solo lo que haya quedado desfasado hoy. Comprueba en particular: S14 (la práctica D tiene una actividad más: SEC, SRC y $F$ como coordenadas), S15 (L11 ya no contiene el apéndice de la moneda; la figura de la matriz de copias), S17 y S19 (las transparencias cambiadas por D7, si el resumen las citaba), y la entrada del apéndice (`id="apendice-geometria"`, al final del Tema III): que su resumen describa lo que el documento es ahora (13 secciones, lo que demuestra y lo que admite). La meta `description` de `index.org` (línea 9) menciona el contenido del curso: si procede añadir el apéndice en una frase, propónlo en el informe, no lo cambies. No toques el contador de «Cómo usar este material» (es manual y cuenta sesiones, no el apéndice). Tras editar, `timeout 600 make index < /dev/null`.

## 5. Comprobaciones mecánicas (solo informe, sin editar lecciones ni prácticas)

Pasa estos `grep` sobre `org-lessons/S12-Lecc09.org`, `S15-Lecc11.org`, `S17-Lecc12.org`, `S19-Lecc13.org`, `S20-Lecc14.org` y las nueve prácticas, y lista en el informe cada coincidencia con su línea y tu lectura (es o no es una infracción de §4.2 del Plan: nada de geometría sobre listas de variables aleatorias):

- `vector aleatorio`, `vectores aleatorios`, `\boldsymbol U\b`, `\boldsymbol Y\b` (como vector), `distribución sobre \$\\mathbb`, `direcci(ón|ones) privilegiad`, `esféric`, `reparte su longitud`, `sin demostrar`, `no demostra`, `no lo haremos`.
- Las frases «sin demostrar» que queden deben referirse a lo que el apéndice tampoco demuestra (su sección 11 lo lista); si alguna se refiere a algo que el apéndice sí demuestra, anótala.

## 6. Informe

Termina con un informe corto en este orden: (1) fichas corregidas, con una línea por cambio y la línea del fichero que lo justifica; (2) ficha nueva del apéndice; (3) semillas cobradas y plantadas; (4) resúmenes de `index.org` cambiados (y la propuesta para la meta `description`, si la hay); (5) coincidencias de los `grep` del punto 5 con tu lectura; (6) cualquier cosa que habría que cambiar en lecciones o prácticas (sin cambiarla).
