# Encargo: hiperenlaces en las lecciones 1 a 7, 15 y 16

Encargo de la sesión de revisión (11-11-2026) para una sesión con Opus. Decisión del autor del 11-11: los hiperenlaces se usan en todo el material, también en las lecciones ya impartidas, para facilitar su uso al estudiante. Las lecciones 8 a 14 ya los tienen. Faltan en las lecciones 15 y 16 (ningún enlace interno) y están incompletos en las lecciones 1 a 7.

Lea antes `doc/prompts/GuiaDeEstilo.org`, §4 («Toda remisión interna es un hiperenlace») y §8 («Cada mención a otra práctica…»). Este encargo aplica esas dos reglas tal como quedaron el 11-11.

## Ficheros

`org-lessons/S01-Lecc01.org`, `S02-Lecc02.org`, `S03-Lecc03.org`, `S05-Lecc04.org`, `S06-Lecc05.org`, `S08-Lecc06.org`, `S09-Lecc07.org`, `S23-Lecc15.org`, `S24-Lecc16.org`. Empiece por las lecciones 15 y 16, que aún no se han impartido. No toque las lecciones 8 a 14 ni las prácticas.

## Qué hacer

1. **Remisiones a otra transparencia de la misma lección.** Cada una pasa a ser un enlace a la sección citada: `[[#ancla][texto]]`, con un `:CUSTOM_ID: ancla` en el cajón `:PROPERTIES:` de la transparencia citada (nombre corto, en minúsculas, sin acentos).
2. **El enlace va sobre las palabras que remiten, sin copiar el título.** «como se vio `[[#error-estandar][al deducir el error estándar]]`», no «como se vio en ``El error estándar, y el precio de estimar σ''». Si la frase actual cita el título entre comillas, se reescribe lo mínimo para que se lea de corrido. El título se conserva solo cuando sin él no se sabe a qué sección se remite. Esto vale también para los enlaces internos que esas nueve lecciones ya tienen.
3. **Referencias relativas** («la transparencia anterior», «la sección anterior», «como vimos antes»): se sustituyen por el enlace del punto 2.
4. **Menciones a una práctica o a un resultado de una práctica**, en los apuntes: enlace doble, al PDF con `#page=N` y al HTML con el ancla de la actividad, con el formato de la lección 14 (`grep -n 'Practicas-pdf' org-lessons/S21-Lecc14.org`). En el texto de una transparencia la práctica se nombra sin enlaces.
5. **Remisiones a otra lección**: enlace doble al PDF y al HTML de esa lección solo cuando se remite a un resultado concreto con sección propia; «la lección 12» a secas no se enlaza.
6. **Una vez por sección de apuntes**: se enlaza la primera mención; las siguientes dicen «esa sección» o van sin enlace.

## Qué no hacer

- No cambiar ninguna frase más allá de lo necesario para que el enlace se lea de corrido. Ninguna fórmula, cifra ni argumento.
- No renombrar anclas que ya existan: otros documentos dependen de ellas.
- Ningún `:CUSTOM_ID:` puede coincidir, salvo mayúsculas, con el `#+NAME:` de un bloque del mismo fichero (rompe el noweb).
- Sin enlaces dentro de los pies de figura.
- No commitear ni desplegar.

## Comprobaciones

- Antes de escribir en un fichero, comprobar que no existe `org-lessons/.#fichero` (el autor puede tenerlo abierto) y mirar `git log` por si otra sesión lo ha tocado.
- `make org-lessons/SYY-LeccXX.pdf org-lessons/SYY-LeccXX.html org-lessons/SYY-LeccXX.slides.html` para cada lección tocada; mirar el log.
- `python3 doc/tools/comprobar-paginas.py` sobre cada fichero tocado.
- `python3 doc/tools/medir-transparencias.py 0.9 org-lessons/SYY-LeccXX.slides.html`: ninguna transparencia por encima de 700 px. Si una frase reescrita está en una transparencia, medirla antes y después.
- Si el número de páginas de un PDF cambia, comprobar los `#page=` de los documentos que enlazan a esa lección.

## Informe

Rellene el apartado «Aplicado» con: por lección, anclas creadas, número de enlaces añadidos, y la lista completa de frases reescritas (antes y después, con línea). Aparte, lo que haya dudado y no haya tocado.

## Pendiente fuera de este encargo

Barrer con la forma del punto 2 las remisiones con título literal de las lecciones 8 a 14, del apéndice y de las prácticas (TODO anotado en la Guía §4). No se hace ahora: las lecciones 13 y 14 se imparten el 13-11 y el 20-11.

## Aplicado

Ejecutado el 11-11-2026 por una sesión con Opus. Nada commiteado ni desplegado.

**Resumen.** Nueve lecciones tocadas; 16 anclas nuevas (8 en la lección 15 y 8 en la 16; las lecciones 1 a 7 ya tenían todas las que hacían falta); 92 frases reescritas. Ningún `#+NAME:` coincide con un ancla nueva (comprobado por guion antes de escribir). No se ha renombrado ningún ancla. Ningún enlace en pies de figura.

**Comprobaciones.**
- `make` de PDF, HTML y transparencias de las nueve lecciones sin errores (solo los avisos habituales de autoloads y projectile de Emacs). Ningún fichero bloqueado.
- Ningún PDF cambia de número de páginas (L1 13, L2 13, L3 11, L4 16, L5 15, L6 10, L7 14, L15 20, L16 22).
- `comprobar-paginas.py`: todos los `#page=` correctos en las nueve. Única excepción, anterior a este encargo: `S24-Lecc16.org:318`, enlace al apéndice con la etiqueta «pdf», que el verificador no sabe leer; lo he comprobado a mano y la página 5 es la sección 1.4, así que es correcto.
- `medir-transparencias.py 0.9`: todas por debajo de 700 px. Solo cambia una medida: la lección 7, «Segunda condición», baja de 677 a 651 px (la remisión del texto de la transparencia es ahora más corta). En las demás, las medidas son idénticas antes y después.
- En las `.slides.html` los enlaces internos salen como texto plano (la receta los aplana), así que en las transparencias solo cambia la redacción.
- En el HTML de cada lección, todo `href="#…"` tiene su `id`.
- Enlaces de otros documentos a estas lecciones con `#page=` y ancla: 35. Los he comprobado contra los PDF nuevos y todos caen en su sección. El guion dio un aviso (S11-A → lección 7, página 9), pero es un falso positivo: ese enlace apunta a la figura 1, que está en la página 9.

**Criterio aplicado en los puntos 2, 3 y 6.**
- Una remisión a la propia sección («las figuras de [[#ilustracion-proyeccion][«Ilustración…»]]» dentro de esa misma sección) pasa a «la transparencia», sin enlace. Hay cuatro casos en la lección 4 y uno en la lección 7.
- Cuando el mismo destino se repite dentro de una sección de apuntes, la segunda mención queda sin enlace («esa figura», «esa tabla», «esa interpretación»). Afecta también a enlaces que ya existían: lección 5, línea 196; lección 6, línea 161; lección 7, línea 153.

**Criterio aplicado en el punto 5 (otras lecciones).** He enlazado las remisiones hacia atrás que apuntan a un resultado concreto (una identidad, una definición, una tabla, una propiedad) cuando la lección citada ya tiene un ancla para él. No he enlazado:
- las lecciones citadas como tema general («la lectura de la lección 10», «(lección 14)» como fuente);
- los anuncios hacia delante («la lección 17 tratará…», «en la lección 4 será la proyección…»).

Quedan sin enlazar algunos candidatos que admitirían un criterio más amplio. Por ejemplo, en la lección 15 «(lecciones 5 y 8: $R^2$ es el coseno al cuadrado…)»; en la lección 16 «la parte propia de la lección 14» y «como se vio en la lección 13» ($F=t^2$); en la lección 7 «El segundo lo vimos en la lección 5». Si el autor quiere el criterio amplio, es otra pasada.

### Lección 15 (`org-lessons/S23-Lecc15.org`)

- Anclas creadas: `de-donde-venimos`, `cuatro-formas`, `log-nivel`, `nivel-log`, `log-log`, `cobb-douglas`, `prevision`, `lo-que-cambia`.
- Enlaces: 5 antes, 23 después (diferencia 18; cada enlace doble cuenta dos).
- Frases reescritas (17):

  - L62: «La lección 13 abrió con una tabla» → «La [[Lecciones-pdf/S19-Lecc13.pdf#page=2][lección 13]] ([[Lecciones-html/S19-Lecc13.html#tabla-apertura][html]]) abrió con una tabla»
  - L105: «y lo estimaremos con mínimos cuadrados en la transparencia ``Cobb–Douglas: elasticidades y rendimientos a escala''.» → «y lo estimaremos con mínimos cuadrados [[#cobb-douglas][en la transparencia de Cobb–Douglas]].»
  - L130: «(los cuatro modelos de ``De dónde venimos: =nox= y =lnox= eran dos formas funcionales''):» → «(los cuatro modelos de [[#de-donde-venimos][la tabla de apertura]]):»
  - L162: «La transparencia ``Log-log: modelo con elasticidad constante'' vuelve sobre esa idea» → «[[#log-log][La transparencia del modelo log-log]] vuelve sobre esa idea»
  - L213: «es el tema de la transparencia ``Previsión con y sin logaritmos''.» → «es el tema de [[#prevision][la transparencia sobre la previsión con y sin logaritmos]].»
  - L249: «el de la práctica D de la sesión 22,» → «el de la práctica D de la sesión 22 ([[Practicas-pdf/S22-Prct-D-hprice1-tasacion.pdf#page=1][actividad 1]] ([[Practicas-html/S22-Prct-D-hprice1-tasacion.html#modelo-con-tasacion][html]])),»
  - L255: «La transparencia ``Log-log: modelo con elasticidad constante'' vuelve sobre la misma idea con la contaminación» → «[[#log-log][La transparencia del modelo log-log]] vuelve sobre la misma idea con la contaminación»
  - L301: «$\log(1+p)\approx p$ de la transparencia ``Cuatro formas, cuatro lecturas del coeficiente'' se ve» → «$\log(1+p)\approx p$ [[#cuatro-formas][de la tabla de las cuatro formas]] se ve»
  - L305: «La transparencia ``Lo que cambia y lo que no'' usa esta misma propiedad» → «[[#lo-que-cambia][Las observaciones prácticas del final de la lección]] usan esta misma propiedad»
  - L327: «de forma del error, que se verá en la transparencia ``Lo que cambia y lo que no''.» → «de forma del error, que se verá entre esas observaciones prácticas.»
  - L325: «La lección 14 ya dijo, al comparar =nox= y =lnox= como remedios para la colinealidad, que» → «La lección 14 ya dijo, [[Lecciones-pdf/S21-Lecc14.pdf#page=12][al comparar =nox= y =lnox= como remedios para la colinealidad]] ([[Lecciones-html/S21-Lecc14.html#que-hacer-y-que-no][html]]), que»
  - L331: «La transparencia ``Cuatro formas, cuatro lecturas del coeficiente'' la estimó» → «La tabla de las cuatro formas la estimó»
  - L331: «se leen con la tabla de aquella transparencia:» → «se leen con esa tabla:»
  - L333: «cobra una promesa de la lección 12:» → «cobra una promesa de la [[Lecciones-pdf/S17-Lecc12.pdf#page=11][lección 12]] ([[Lecciones-html/S17-Lecc12.html#contraste-t][html]]):»
  - L410: «la pregunta que la transparencia ``Log-nivel: salarios y educación'' dejó abierta» → «la pregunta que [[#log-nivel][el ejemplo de los salarios]] dejó abierta»
  - L410: «como vio la transparencia ``Nivel-log: la superficie de la vivienda''.» → «como se vio [[#nivel-log][con la superficie de la vivienda]].»
  - L756: «el procedimiento de la transparencia ``Previsión con y sin logaritmos''.» → «el procedimiento [[#prevision][de la previsión con y sin logaritmos]].»

### Lección 16 (`org-lessons/S24-Lecc16.org`)

- Anclas creadas: `rio-charles`, `mas-regresores`, `log-nivel`, `trampa`, `varias-categorias`, `interacciones`, `chow`, `que-dice`.
- Enlaces: 11 antes, 37 después (diferencia 26; cada enlace doble cuenta dos).
- Frases reescritas (26):

  - L122: «La transparencia ``Con más regresores: la diferencia con lo demás fijo'' vuelve sobre esta distinción con los salarios.» → «[[#mas-regresores][El modelo de salarios con más regresores]] vuelve sobre esta distinción.»
  - L176: «La transparencia ``Qué dice y qué no dice el coeficiente de una indicadora'' recoge esta cautela» → «[[#que-dice][La tabla de lecturas del final de la lección]] recoge esta cautela»
  - L212: «estima el modelo de la transparencia ``Con más regresores: la diferencia con lo demás fijo'' con =lwage=» → «estima [[#mas-regresores][el modelo de salarios con más regresores]] con =lwage=»
  - L224: «la transparencia ``Interacciones: la pendiente cambia de grupo'' la levanta.» → «[[#interacciones][una interacción]] la levanta.»
  - L214: «como se vio con los cuatro años de educación en la lección 15» → «como se vio con los cuatro años de educación en la [[Lecciones-pdf/S23-Lecc15.pdf#page=6][lección 15]] ([[Lecciones-html/S23-Lecc15.html#log-nivel][html]])»
  - L272: «que explicó la transparencia ``Una indicadora desplaza el intercepto: el río Charles''.» → «que se explicó [[#rio-charles][con el ejemplo del río Charles]].»
  - L276: «La transparencia ``Varias categorías: una indicadora menos que grupos'' usa este recurso» → «[[#varias-categorias][El ejemplo de varias categorías]] usa este recurso»
  - L278: «lección 10 de este curso, apuntes de ``La matriz de regresores y el operador selector''.» → «lección 10 de este curso, [[Lecciones-pdf/S13-Lecc10.pdf#page=5][apuntes de la matriz de regresores y el operador selector]] ([[Lecciones-html/S13-Lecc10.html#matriz-regresores][html]]).»
  - L314: «(la colinealidad exacta de la transparencia ``La trampa de las variables ficticias'')» → «(la colinealidad exacta de [[#trampa][la trampa de las variables ficticias]])»
  - L335: «Es la idea de la transparencia ``Interacciones: la pendiente cambia de grupo'', aplicada» → «Es la idea de [[#interacciones][las interacciones]], aplicada»
  - L382: «El modelo de la transparencia ``En log-nivel: una diferencia porcentual'' impone» → «[[#log-nivel][El modelo en log-nivel con la indicadora]] impone»
  - L388: «con la fórmula $e^{\beta}-1$ de la transparencia ``En log-nivel: una diferencia porcentual'', son» → «con la fórmula $e^{\beta}-1$ del modelo en log-nivel, son»
  - L388: «las dos rectas paralelas de la figura de ``En log-nivel: una diferencia porcentual''.» → «las dos rectas paralelas de la figura del modelo en log-nivel.»
  - L423: «Las transparencias ``En log-nivel: una diferencia porcentual'' e ``Interacciones: la pendiente cambia de grupo'' han dejado» → «[[#log-nivel][El modelo en log-nivel]] y [[#interacciones][la interacción con la experiencia]] han dejado»
  - L429: «como hizo la transparencia ``Interacciones: la pendiente cambia de grupo'' con la pendiente de =exper=» → «como se hizo con la pendiente de =exper=»
  - L429: «El modelo restringido es entonces el de la transparencia ``En log-nivel: una diferencia porcentual'': interceptos» → «El modelo restringido es entonces el modelo en log-nivel sin interacciones: interceptos»
  - L429: «es el de la transparencia ``En log-nivel: una diferencia porcentual'': si solo» → «es el de ese mismo modelo: si solo»
  - L433: «lección 13 de este curso, ``El contraste $F$''.» → «lección 13 de este curso, [[Lecciones-pdf/S19-Lecc13.pdf#page=5][el estadístico $F$]] ([[Lecciones-html/S19-Lecc13.html#estadistico-F][html]]).»
  - L470: «es la que la transparencia ``Con más regresores: la diferencia con lo demás fijo'' ya señaló.» → «es la que se señaló [[#mas-regresores][al estimar el salario con más regresores]].»
  - L470: «entre sexos de la transparencia ``En log-nivel: una diferencia porcentual'' es» → «entre sexos [[#log-nivel][del modelo en log-nivel]] es»
  - L502: «y una tabla de lecturas, la de la transparencia ``Qué dice y qué no dice el coeficiente de una indicadora''.» → «y [[#que-dice][una tabla de lecturas]].»
  - L506: «las tres cautelas de la transparencia ``Qué dice y qué no dice el coeficiente de una indicadora''.» → «las tres cautelas de esa tabla.»
  - L508: «En el modelo en niveles de la transparencia ``Con más regresores: la diferencia con lo demás fijo'', =wage=» → «En [[#mas-regresores][el modelo en niveles]], =wage=»
  - L508: «Y el laboratorio integrador volverá al Boston original» → «Y el laboratorio integrador, la práctica A de la sesión 25 ([[Practicas-pdf/S25-Prct-A-boston-integrador.pdf#page=3][actividad 2]] ([[Practicas-html/S25-Prct-A-boston-integrador.html#indicadora-chas][html]])), volverá al Boston original»
  - L785: «las tres cautelas de la transparencia ``Qué dice y qué no dice el coeficiente de una indicadora'': no hay» → «las tres cautelas [[#que-dice][de lo que dice y no dice el coeficiente de una indicadora]]: no hay»
  - L161: «es el de la transparencia ``Log-nivel: salarios y educación'' de la lección 15:» → «es el del ejemplo de salarios de la [[Lecciones-pdf/S23-Lecc15.pdf#page=6][lección 15]] ([[Lecciones-html/S23-Lecc15.html#log-nivel][html]]):»

### Lección 1 (`org-lessons/S01-Lecc01.org`)

- Anclas creadas: ninguna (ya las tenía).
- Enlaces: 30 antes, 30 después (diferencia 0; cada enlace doble cuenta dos).
- Frases reescritas (1):

  - L403: «condensa las distinciones de [[#seccion-cruzada][``Datos de sección cruzada'']], [[#series-temporales][``Series temporales'']] y [[#datos-panel][``Datos de panel'']].» → «condensa las distinciones entre [[#seccion-cruzada][datos de sección cruzada]], [[#series-temporales][series temporales]] y [[#datos-panel][datos de panel]].»

### Lección 2 (`org-lessons/S02-Lecc02.org`)

- Anclas creadas: ninguna (ya las tenía).
- Enlaces: 18 antes, 19 después (diferencia 1; cada enlace doble cuenta dos).
- Frases reescritas (3):

  - L262: «[fn::en [[#formas-de-medir][``Hay más de una forma de medir'']] veremos que hay otros productos escalares;» → «[fn::veremos que hay [[#formas-de-medir][otros productos escalares]];»
  - L288: «como veremos en [[#norma][``Norma de un vector: \(\|\boldsymbol{x}\|=\sqrt{\langle\boldsymbol{x}, \boldsymbol{x}\rangle}\)'']].» → «como veremos [[#norma][al definir la norma]].»
  - L347: «aparecerá ya en la próxima sección de esta misma lección, y se formalizará» → «aparecerá ya en esta misma lección, [[#formas-de-medir][al ver otras formas de medir]], y se formalizará»

### Lección 3 (`org-lessons/S03-Lecc03.org`)

- Anclas creadas: ninguna (ya las tenía).
- Enlaces: 14 antes, 18 después (diferencia 4; cada enlace doble cuenta dos).
- Frases reescritas (3):

  - L446: «(la identidad que destacamos en [[#pitagoras][``Teorema de Pitágoras en $\mathbb{R}^n$'']])» → «(la identidad que destacamos [[#pitagoras][al demostrar el teorema de Pitágoras]])»
  - L254: «La linealidad, vista en la lección 2, reparte» → «La linealidad, vista en la [[Lecciones-pdf/S02-Lecc02.pdf#page=7][lección 2]] ([[Lecciones-html/S02-Lecc02.html#producto-escalar][html]]), reparte»
  - L465: «de unos vectores dados (lección 2).» → «de unos vectores dados ([[Lecciones-pdf/S02-Lecc02.pdf#page=6][lección 2]] ([[Lecciones-html/S02-Lecc02.html#combinacion-lineal][html]])).»

### Lección 4 (`org-lessons/S05-Lecc04.org`)

- Anclas creadas: ninguna (ya las tenía).
- Enlaces: 14 antes, 14 después (diferencia 0; cada enlace doble cuenta dos).
- Frases reescritas (10):

  - L212: «(que en [[#desviaciones-ortogonal][``El vector en desviaciones es ortogonal a $\boldsymbol{1}$'']] llamaremos /vector en desviaciones/)» → «(que llamaremos /vector en desviaciones/ [[#desviaciones-ortogonal][en su propia transparencia]])»
  - L290: «Las figuras de [[#ilustracion-proyeccion][``Ilustración geométrica de la proyección'']] ilustran» → «Las figuras de la transparencia ilustran»
  - L296: «Aunque las figuras de [[#ilustracion-proyeccion][``Ilustración geométrica de la proyección'']] son» → «Aunque esas figuras son»
  - L367: «que vimos en [[#media-dos-caras][``La media: dos caras de la misma moneda'']]:» → «que vimos [[#media-dos-caras][al deducir la media de dos maneras]]:»
  - L401: «En el ``avance'' mostrado en [[#desviaciones-ortogonal][``El vector en desviaciones es ortogonal a $\boldsymbol{1}$'']] se emplea» → «En el ``avance'' de la transparencia se emplea»
  - L290: «Las figuras de [[#propiedades-geometricas][``Propiedades geométricas'']] ilustran» → «Las figuras de la transparencia ilustran»
  - L971: «(analítica y geométrica) de la transparencia [[#media-dos-caras][``La media: dos caras de la misma moneda'']].» → «(analítica y geométrica) [[#media-dos-caras][de la media]].»
  - L980: «anticipado al final de la transparencia [[#desviaciones-ortogonal][``El vector en desviaciones es ortogonal a $\boldsymbol{1}$'']].» → «anticipado [[#desviaciones-ortogonal][al final de la transparencia sobre el vector en desviaciones]].»
  - L81: «en la lección 3 construimos» → «en la [[Lecciones-pdf/S03-Lecc03.pdf#page=7][lección 3]] ([[Lecciones-html/S03-Lecc03.html#cauchy-schwarz][html]]) construimos»
  - L426: «el /Teorema de Pitágoras/ de la lección 3 aplicado» → «el /Teorema de Pitágoras/ de la [[Lecciones-pdf/S03-Lecc03.pdf#page=6][lección 3]] ([[Lecciones-html/S03-Lecc03.html#pitagoras][html]]) aplicado»

### Lección 5 (`org-lessons/S06-Lecc05.org`)

- Anclas creadas: ninguna (ya las tenía).
- Enlaces: 19 antes, 24 después (diferencia 5; cada enlace doble cuenta dos).
- Frases reescritas (12):

  - L138: «y eso es lo que se calcula en la transparencia [[#varianza-pitagoras][``Varianza y Pitágoras'']].» → «y eso es lo que se calcula [[#varianza-pitagoras][al combinar la varianza con Pitágoras]].»
  - L179: «Si nos fijamos en la figura de la transparencia [[#apertura-pitagoras][``De dónde venimos: Pitágoras, otra vez'']] vemos» → «Si nos fijamos en [[#apertura-pitagoras][la figura de la transparencia de apertura]] vemos»
  - L196: «/Comprobación con el vector de la figura de [[#apertura-pitagoras][la transparencia de apertura]]/.» → «/Comprobación con el vector de la figura de la transparencia de apertura/.»
  - L260: «que retomaremos en la transparencia [[#correlacion-coseno][``La correlación: el coseno de un ángulo'']]:» → «que retomaremos [[#correlacion-coseno][al definir la correlación]]:»
  - L309: «que revisitaremos en [[#traslacion-escala][``Propiedades geométricas: traslación y escala'']])» → «que revisitaremos [[#traslacion-escala][al trasladar y reescalar vectores]])»
  - L341: «La transparencia [[#correlacion-r2][``Un hecho geométrico: en $\mathbb{R}^2$ la correlación es siempre $\pm1$'']] lo explica.» → «[[#correlacion-r2][El caso $n=2$]] lo explica.»
  - L468: «que ya vimos en [[#covarianza][``De un vector a dos: la covarianza'']])» → «que ya vimos [[#covarianza][al pasar de un vector a dos]])»
  - L555: «como vimos en [[#correlacion-r2][``Un hecho geométrico: en $\mathbb{R}^2$ la correlación es siempre $\pm1$'']], es» → «como vimos [[#correlacion-r2][al estudiar la correlación en $\mathbb{R}^2$]], es»
  - L482: «[html]]) (sección ``Propiedades geométricas''): allí vimos» → «[html]]): allí vimos»
  - L86: «En la lección 4 introdujimos el producto escalar estadístico» → «En la [[Lecciones-pdf/S05-Lecc04.pdf#page=3][lección 4]] ([[Lecciones-html/S05-Lecc04.html#producto-escalar-estadistica][html]]) introdujimos el producto escalar estadístico»
  - L306: «recordemos que en la lección 3 vimos que la igualdad en Cauchy–Schwarz» → «recordemos que en la [[Lecciones-pdf/S03-Lecc03.pdf#page=7][lección 3]] ([[Lecciones-html/S03-Lecc03.html#cauchy-schwarz][html]]) vimos que la igualdad en Cauchy–Schwarz»
  - L462: «(homogeneidad de la norma, lección 2)» → «(homogeneidad de la norma, [[Lecciones-pdf/S02-Lecc02.pdf#page=8][lección 2]] ([[Lecciones-html/S02-Lecc02.html#norma][html]]))»

### Lección 6 (`org-lessons/S08-Lecc06.org`)

- Anclas creadas: ninguna (ya las tenía).
- Enlaces: 15 antes, 22 después (diferencia 7; cada enlace doble cuenta dos).
- Frases reescritas (8):

  - L151: «interpretemos la figura de la transparencia [[#geometria-ajuste][``La geometría del ajuste'']].» → «interpretemos [[#geometria-ajuste][la figura del ajuste]].»
  - L161: «Esto es lo que verá en la figura de la transparencia [[#geometria-ajuste][``La geometría del ajuste'']].» → «Esto es lo que verá en esa figura.»
  - L269: «tal y como anticipamos en la transparencia [[#no-ortogonales][``Un matiz importante: $\boldsymbol{1}$ y $\boldsymbol{x}$ no son ortogonales'']].» → «tal y como [[#no-ortogonales][anticipamos]].»
  - L286: «la transparencia [[#vocabulario-regresor][``Vocabulario: regresor'']] fija el término.» → «el término se fija [[#vocabulario-regresor][al presentar el vocabulario]].»
  - L90: «Recordemos de la lección 2 que una /combinación lineal/» → «Recordemos de la [[Lecciones-pdf/S02-Lecc02.pdf#page=6][lección 2]] ([[Lecciones-html/S02-Lecc02.html#combinacion-lineal][html]]) que una /combinación lineal/»
  - L153: «En la lección 4 vimos que $\mu_{\boldsymbol{x}}=» → «En la [[Lecciones-pdf/S05-Lecc04.pdf#page=4][lección 4]] ([[Lecciones-html/S05-Lecc04.html#media-dos-caras][html]]) vimos que $\mu_{\boldsymbol{x}}=»
  - L169: «es lo que en la lección 4 llamamos el /vector en desviaciones/» → «es lo que en la [[Lecciones-pdf/S05-Lecc04.pdf#page=9][lección 4]] ([[Lecciones-html/S05-Lecc04.html#desviaciones-ortogonal][html]]) llamamos el /vector en desviaciones/»
  - L292: «la misma estructura pitagórica que ya usamos en la lección 5,» → «la misma estructura pitagórica que ya usamos en la [[Lecciones-pdf/S06-Lecc05.pdf#page=5][lección 5]] ([[Lecciones-html/S06-Lecc05.html#varianza-pitagoras][html]]),»

### Lección 7 (`org-lessons/S09-Lecc07.org`)

- Anclas creadas: ninguna (ya las tenía).
- Enlaces: 28 antes, 29 después (diferencia 1; cada enlace doble cuenta dos).
- Frases reescritas (12):

  - L147: «con su lectura geométrica completa, en [[#lugar-de-las-medias][``$\hat\beta_1$ y el lugar de las medias'']].» → «con su lectura geométrica completa, [[#lugar-de-las-medias][al interpretar $\hat\beta_1$]].»
  - L153: «Este hecho será la clave geométrica de [[#lugar-de-las-medias][``$\hat\beta_1$ y el lugar de las medias'']].» → «Este hecho será la clave geométrica de esa interpretación.»
  - L175: «$ (transparencia [[#primera-condicion][``Primera condición: el residuo tiene media cero'']]) y agrupando:» → «$ ([[#primera-condicion][primera condición]]) y agrupando:»
  - L219: «$ (transparencia [[#primera-condicion][``Primera condición: el residuo tiene media cero'']]) y agrupamos» → «$ ([[#primera-condicion][primera condición]]) y agrupamos»
  - L239: «lo que hacemos en la transparencia [[#covarianza-sobre-varianza][``$\hat\beta_2$: covarianza sobre varianza'']].» → «lo que hacemos [[#covarianza-sobre-varianza][al obtener la pendiente como covarianza sobre varianza]].»
  - L277: «obtenida en la transparencia [[#segunda-condicion][``Segunda condición: el residuo ortogonal a $\boldsymbol{x}$'']]» → «obtenida [[#segunda-condicion][con la segunda condición]]»
  - L407: «obtenida ya en la transparencia [[#primera-condicion][``Primera condición: el residuo tiene media cero'']], admite» → «obtenida ya [[#primera-condicion][con la primera condición]], admite»
  - L413: «con la observación que hicimos en la transparencia [[#primera-condicion][``Primera condición: el residuo tiene media cero'']]:» → «con la observación que hicimos sobre la primera condición:»
  - L419: «La figura de [[#lugar-de-las-medias][``$\hat\beta_1$ y el lugar de las medias'']] hace visible» → «La figura de la transparencia hace visible»
  - L434: «de la práctica que sigue a la lección 8» → «de la práctica A de la sesión 11»
  - L128: «es la misma condición que, en la lección 4, hacía» → «es la misma condición que, en la [[Lecciones-pdf/S05-Lecc04.pdf#page=9][lección 4]] ([[Lecciones-html/S05-Lecc04.html#desviaciones-ortogonal][html]]), hacía»
  - L149: «Recordemos que en la lección 6 vimos que» → «Recordemos que en la [[Lecciones-pdf/S08-Lecc06.pdf#page=7][lección 6]] ([[Lecciones-html/S08-Lecc06.html#lo-que-da-ortogonalidad][html]]) vimos que»

### Dudas, sin tocar (pendiente de su decisión)

1. **Lección 15, línea 255** (apuntes de «Nivel-log»): «y ``Lo que cambia y lo que no'' explica cómo comparar el ajuste cuando cambia el regresando». La comparación del ajuste con regresandos distintos está en «Previsión con y sin logaritmos» (apuntes, línea 410). «Lo que cambia y lo que no» trata las unidades, las variables positivas y la forma de la perturbación. He dejado la frase como estaba, con el título literal y sin enlace, para no enlazar a un destino que parece equivocado. Si el destino debe ser `#prevision`, el cambio es de una palabra.
2. **Lección 15, línea 319**: «la serie =$coeff(nox)*nox/$yhat= (un comando que la práctica de la sesión 26 usará)». Ninguna práctica de la sesión 26 contiene esa orden (`grep` en `org-pract/S2[56]*`). Sin enlace.
3. **Lección 15, línea 331**: «La estimación completa [del ejemplo 4.5 de Wooldridge, con =l_dist= y =stratio=], con sus cifras, queda para el laboratorio con Gretl». No he encontrado ninguna práctica que la haga (no aparece `l_dist` en las de las sesiones 25 y 26). Sin enlace.
4. **Lección 16, línea 433** (Para profundizar): citaba «lección 13 de este curso, ``El contraste $F$''», pero la lección 13 no tiene ninguna sección con ese título. He enlazado a «El estadístico $F$» (`#estadistico-F`), con el texto «el estadístico $F$». Compruebe que es la sección que quería citar.
5. **Lección 1, líneas 201 y 300**: enlazan la práctica A de la sesión 4 entera (PDF sin `#page=` y HTML sin ancla). Son menciones de la práctica como conjunto, no de una actividad ni de un resultado. Las he dejado así.

