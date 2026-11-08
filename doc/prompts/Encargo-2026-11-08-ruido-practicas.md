# Encargo: «perturbación», nunca «ruido», en las prácticas (08-11-2026)

Repositorio: este mismo (`PEconometria`). Encargo mecánico para una sesión de Opus. Regla que se aplica: Guía de estilo §7, «“Perturbación”, nunca “ruido”» (`doc/prompts/GuiaDeEstilo.org`): $U$ se llama *perturbación*; de su tamaño se habla como varianza, desviación típica o longitud de $U$; $\mathfrak s$ es la longitud del vector de residuos. Las lecciones y el apéndice ya la cumplen (hecho entre el 29-10 y el 06-11); quedan las prácticas y una opción de una pregunta de la lección 15. Lea la regla y el apartado §7 entero antes de empezar.

Estado de partida: `main` en `3fa9f0c` o posterior. Inventario hecho el 08-11 con `\bruid(o|os|osa|osas|oso|osos)\b` (palabra entera; `grep "ruido"` a secas cuenta también «construido»): **32 apariciones en 12 prácticas y 1 en la lección 15**, listadas abajo con su categoría. Compruebe el inventario antes de tocar nada (puede haber cambiado) y no toque nada que no esté en la lista sin anotarlo.

## Cómo sustituir, por categoría

- **(a) $U$ o $\boldsymbol u$ llamado «ruido»** → «perturbación». Ejemplos: «con $\boldsymbol u$ un término de ruido generado con independencia de $\boldsymbol x$» → «con $\boldsymbol u$ una perturbación generada con independencia de $\boldsymbol x$»; «=u= es ruido normal de media $0$ y desviación típica $2$» → «=u= es una perturbación normal de media $0$ y desviación típica $2$»; «la coordenada del ruido $C_j$» → «la coordenada de la perturbación $C_j$» (es el nombre de la lección 12 y del apéndice); «la coordenada del ruido en la dirección de la parte propia» → «la coordenada de la perturbación en la dirección de la parte propia»; «el ruido es el mismo» → «la perturbación es la misma»; «con la misma relación y el mismo ruido» → «con la misma relación y la misma perturbación»; «El ruido no ha cambiado» → «La perturbación no ha cambiado»; «la tasación es el precio salvo ruido» → «la tasación es el precio salvo la perturbación» (dos sitios de S22-D, pregunta y respuesta, con la misma redacción).
- **(b) Tamaño de la perturbación** («desviación típica del ruido», «nivel de ruido», «con ruido de desviación típica $1$», «un coeficiente pequeño frente al ruido») → «desviación típica de la perturbación», «otra desviación típica de la perturbación», «con una perturbación de desviación típica $1$», «un coeficiente pequeño frente a la desviación típica de la perturbación».
- **(c) «Dimensión de ruido» / «el ruido de una dimensión» / «lo que aporta una dimensión de ruido» (S20-B, tres sitios) y «el ruido añade lo de siempre, del orden de $q\sigma^2$» (S20-C)** → decir qué es: «lo que la perturbación aporta por dimensión, $\mathfrak s^2=1670$», «comparada con lo que la perturbación aporta por dimensión», «es menor que lo que la perturbación aporta por dimensión»; «la perturbación añade lo de siempre, del orden de $q\sigma^2$». «El reparto por igual del ruido por dimensión» (S20-C, nota /Evalúa/) → «el reparto por igual de la perturbación entre las dimensiones».
- **(d) «Estimaciones del mismo ruido»** (S20-C:184: numerador y denominador del $F$ bajo $H_0$) → «estimaciones de la misma $\sigma^2$, la varianza de la perturbación».
- **(e) «Que la diferencia sea grande o pequeña respecto al ruido es lo que el $F$ juzga»** (S20-A:219) → «respecto a lo que la perturbación aporta por dimensión, $\mathfrak s^2$».
- **(f) «Longitud del ruido estimado por unidad de longitud del regresor»** (S18-A:222, cita del lema viejo de la lección 12, y el comentario del guion en S18-A:193 «error estandar: ruido por unidad de longitud») → la lectura actual de la lección 12: «longitud del residuo por unidad de longitud del regresor en desviaciones»; en el comentario del guion, «error estandar: longitud del residuo por unidad de longitud del regresor» (sin tildes, como el resto de los comentarios del guion). Compruebe con `grep` que la lección 12 dice hoy exactamente eso («longitud del residuo por unidad de longitud del regresor»); si no, copie lo que diga.
- **(g) «Dispersión de los datos y del ruido … cuánto ruido hay alrededor de la recta»** (S18-A:425, respuesta 1) → «la dispersión de los /datos/ y de la /perturbación/ … cuánto se separan los precios de la recta».
- **(h) «=x3= se construye a partir de =x2= más ruido normal, para que ambos estén correlacionados»** (S14-D:116): aquí «ruido» no es $U$, es una variable normal auxiliar que se suma a un regresor → «=x3= se construye sumando a =x2= una variable normal independiente, para que ambos estén correlacionados».
- **(i) «Se fija otra semilla para el ruido»** (S22-A:120) → «se fija otra semilla para la perturbación».

**DECIDE EL AUTOR (no aplicar; dejar listado en «Aplicado» con la propuesta):**
- S11-D (Anscombe), tres sitios: «una curva exacta, sin ruido», «no hay ruido: los puntos están exactamente sobre una parábola», «/Parábola sin ruido./ … no de datos ruidosos». Aquí «ruido» describe la dispersión de unos datos alrededor de una curva, no la perturbación de un modelo. Propuesta: «una curva exacta, sin dispersión», «no hay dispersión: los puntos están sobre una parábola», «/Parábola sin dispersión./ … no de datos dispersos». El autor decide si cambia el sentido.
- S23-Lecc15:630, opción 3 de una pregunta de repaso: «Que el modelo en logaritmos tiene menos ruido, porque $\mathfrak s$ es menor». Es una opción incorrecta a propósito; propuesta: «Que la perturbación del modelo en logaritmos tiene menor varianza, porque $\mathfrak s$ es menor». Si se cambia, aviso al banco de preguntas (`Encargo-*-qbank-*.md` con apartado «Aplicado»), porque la pregunta puede estar en el banco.

## Inventario (fichero:línea, categoría)

S07-B:330 (a), S07-B:332 (a); S11-A:299 (a); S11-D:226, :235, :258 ×2 (DECIDE EL AUTOR); S14-D:116 (h), :461 (a), :467 (b); S18-A:193 (f, comentario del guion), :222 (f), :425 ×2 (g); S18-B:218 (a); S18-C:360 (a), :494 (a); S20-A:219 (e); S20-B:189 (c), :304 (c), :330 (c); S20-C:118 (b), :184 (d), :255 (b), :345 (c), :358 (c); S22-A:120 ×2 (b, i), :186 (a), :190 (b); S22-D:352 (a), :384 (a); S23-Lecc15:630 (DECIDE EL AUTOR).

## Método

- Antes de escribir, comprobar que no hay ficheros abiertos en Emacs (`ls org-pract/.#* org-lessons/.#*`); si los hay, avisar y no tocar ese fichero.
- Un script de Python por fichero o uno solo para todos, con cada sustitución como cadena exacta y `assert` de aparición única sobre el fichero recién leído; **todos los asserts antes de escribir nada**. Nunca `sed -i`.
- Las prácticas incluyen la salida de Gretl generada al compilar; el comentario del guion de S18-A:193 está dentro de un bloque `gretl` y cambia el listado del código, no la salida. Después de sustituir: `make` (compila todo; tarda varios minutos; el ruido de `autoloads`/`use-package`/`scimax` es normal), `python3 doc/tools/comprobar-paginas.py` (estado limpio = «7 enlaces por corregir», falsos positivos conocidos de L9, L14 y L16), y `grep -n -w -E "ruidos?|ruidos[oa]s?" org-pract/S*.org org-lessons/*.org`, que debe devolver solo los sitios DECIDE EL AUTOR.
- No commitear ni empujar ni desplegar: el autor lo ordena.
- Rellenar el apartado «Aplicado» de este fichero: sustituciones hechas (fichero:línea, texto nuevo), ficheros recompilados, resultado de las comprobaciones, lo que quedó para el autor, y cualquier aparición nueva que no estuviera en el inventario.

## Aplicado

Ejecutado el 08-11-2026 (Opus), sobre `main` en `3fa9f0c`. No había ficheros abiertos en Emacs (`.#*` ausentes). El inventario coincidía con el de arriba: 33 apariciones, ninguna nueva.

**Sustituciones (28, en 11 prácticas; un script con todos los asserts de aparición única antes de escribir):**

- S07-B:330 «con $\boldsymbol{u}$ una perturbación generada con independencia de $\boldsymbol{x}$»; :332 «=u= es una perturbación normal de media $0$…».
- S11-A:299 «=u2= es una perturbación normal de media $0$…».
- S14-D:116 «=x3= se construye sumando a =x2= una variable normal independiente, para que ambos estén correlacionados»; :461 «la coordenada de la perturbación $C_j$»; :467 «otra desviación típica de la perturbación».
- S18-A:193 (comentario del guion) «# error estandar: longitud del residuo por unidad de longitud del regresor»; :222 «la ``longitud del residuo por unidad de longitud del regresor en desviaciones'' de la lección 12» (comprobado: es la frase de la lección 12, líneas 197, 223 y 509); :425 «la dispersión de los /datos/ y de la /perturbación/» y «cuánto se separan los precios de la recta».
- S18-B:218 «La perturbación no ha cambiado».
- S18-C:360 «la perturbación es la misma»; :494 «con la misma relación y la misma perturbación».
- S20-A:219 «Que la diferencia sea grande o pequeña respecto a lo que la perturbación aporta por dimensión, $\mathfrak s^2$, es lo que el $F$ juzga».
- S20-B:189 «menos de la mitad de lo que la perturbación aporta por dimensión, $\mathfrak s^2=1670$»; :304 «comparada con lo que la perturbación aporta por dimensión?»; :330 «es menor que lo que la perturbación aporta por dimensión».
- S20-C:118 «la desviación típica de la perturbación =sig=»; :184 «son estimaciones de la misma $\sigma^2$, la varianza de la perturbación,»; :255 «con un coeficiente pequeño frente a la desviación típica de la perturbación»; :345 «la perturbación añade lo de siempre, del orden de $q\sigma^2$»; :358 «el reparto por igual de la perturbación entre las dimensiones».
- S22-A:120 «la desviación típica de la perturbación =sig=» y «se fija otra semilla para la perturbación»; :186 «la coordenada de la perturbación en la dirección de la parte propia»; :190 «con una perturbación de desviación típica $1$».
- S22-D:352 y :384 «el precio salvo la perturbación».

**Compilación y comprobaciones:**

- `make`: terminó sin errores (recompiló las 11 prácticas tocadas). `git diff` sobre `org-pract/`: 26 líneas cambiadas, exactamente las sustituidas; las salidas de Gretl no han cambiado.
- `python3 doc/tools/comprobar-paginas.py`: «7 enlaces por corregir» (el estado limpio de siempre).
- `grep -n -w -E "ruidos?|ruidos[oa]s?" org-pract/S*.org org-lessons/*.org`: solo S11-D:226, :235, :258 y S23-Lecc15:630.

**Para el autor:**

- S11-D (Anscombe), tres sitios, sin tocar. Propuesta: «una curva exacta, sin dispersión», «no hay dispersión: los puntos están sobre una parábola», «/Parábola sin dispersión./ … no de datos dispersos».
- S23-Lecc15:630, opción 3, sin tocar. Propuesta: «Que la perturbación del modelo en logaritmos tiene menor varianza, porque $\mathfrak s$ es menor». Si se cambia, aviso al banco.
- Observación (no tocada): en S20-C:255 la frase nueva dice «frente a la desviación típica de la perturbación» y el paréntesis de la misma frase termina con «menos que la desviación típica de $u$». Se repite la idea; si molesta, el paréntesis podría terminar en «…unos $4\,000$ dólares)».

Sin commitear, sin empujar, sin desplegar.

**Decidido por el autor el 08-11 (aplicado por la sesión principal):** Anscombe → «sin dispersión» / «no hay dispersión: los puntos están sobre una parábola» / «Parábola sin dispersión» / «datos dispersos»; L15 pregunta 11 opción 3 → «Que la perturbación del modelo en logaritmos tiene menor varianza, porque $\mathfrak s$ es menor» (el banco no tiene esa pregunta: sin aviso); S20-C:255 → comparación una sola vez, en el paréntesis: «menos que la desviación típica de la perturbación, $5\,000$». Ninguna lección ni práctica dice ya «ruido».

