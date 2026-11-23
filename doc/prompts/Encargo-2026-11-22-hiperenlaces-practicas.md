# Encargo: hiperenlaces en las prácticas que no son de la sesión 18 (22-11-2026)

Encargo de la sesión de revisión para Opus. Trabajo mecánico: no se cambia el contenido.

Las reglas, el formato de los enlaces, lo que no se hace y las comprobaciones son los del encargo
`doc/prompts/Encargo-2026-11-18-hiperenlaces-S18.md` (apartados «Qué hacer», «Qué no hacer» y
«Comprobaciones»), que se aplicó a las tres prácticas de la sesión 18. Léalo entero, con su «Aplicado»,
y lea `doc/prompts/GuiaDeEstilo.org`, secciones 4, 8 y 9. Las tres prácticas de la sesión 18 son el
modelo de cómo queda el resultado. Este encargo extiende lo mismo al resto.

## Lotes

Se trabaja por lotes, en este orden. Cada lote lo hace una sola sesión, sin otra en paralelo.

- **Lote 1** (prioritario: entra en la prueba del 4-12): `S20-Prct-A`, `S20-Prct-B`, `S20-Prct-C`,
  `S22-Prct-A`, `S22-Prct-B`, `S22-Prct-C`, `S22-Prct-D`.
- **Lote 1 bis** (pendiente, se hace antes del lote 2): repasar `S20-Prct-A`, `S20-Prct-B` y
  `S20-Prct-C` y enlazar los anuncios hacia delante que el lote 1 dejó sin enlace por la regla
  anterior (a las lecciones 14 y 15 y a las prácticas de la sesión 22; véase «Criterios» del lote 1).
  Mirar también si `S22-Prct-A` a `D` anuncian algo de las lecciones 15 y 16 o de las sesiones 25 y 26.
- **Lote 2**: `S14-Prct-A` a `D`, `S16-Prct-A` a `C`.
- **Lote 3**: `S04-Prct-A` y `B`, `S07-Prct-A` a `C`, `S11-Prct-A` a `D`.
- **Lote 4**: `S25-Prct-A` y `B`, `S26-Prct-A` a `C`.

## Diferencias con el encargo de la sesión 18

- Los anuncios hacia delante («la lección 14 dirá…», «lo veremos en la sesión 22») **también se
  enlazan**, con el mismo criterio que las remisiones hacia atrás (resultado concreto con sección
  propia). Corregido el 23-11-2026 por decisión del autor: «no hay ningún problema en enlazar hacia
  delante o hacia atrás». El lote 1 se hizo con la regla anterior y dejó sin enlace los anuncios de
  S20; quedan por revisar.
- Si una práctica citada no tiene `:CUSTOM_ID:` en la actividad de destino, se crea (nombre corto,
  minúsculas, sin acentos, distinto de todo `#+NAME:` de ese fichero) y se anota en «Aplicado».
- Tras añadir enlaces, el PDF de una práctica puede cambiar de paginación. Por eso
  `python3 doc/tools/comprobar-paginas.py` se pasa al final sobre **todas** las prácticas y lecciones
  (`org-pract/S*.org org-lessons/S*.org`), no solo sobre las del lote, y se corrigen los `#page=` que
  hayan quedado desplazados, estén en el fichero que estén.
- Antes de empezar un lote, guarde una copia de los `.txt` de salida de sus prácticas y compárelos al
  final con `diff`: deben ser idénticos.
- No se toca la sección «* COMMENT …» de ningún fichero.
- Lo que requiera juicio (una remisión ambigua, una sesión mal citada, una frase que habría que
  reescribir para colocar el enlace) no se resuelve: se anota en «Aplicado» como duda, con fichero,
  línea y cita.

## Informe

Al terminar cada lote, rellene «Aplicado» con: enlaces añadidos por fichero (número y tipo), anclas
creadas, `#page=` corregidos, dudas, y el resultado de cada comprobación. No commitear, no empujar, no
desplegar.

## Aplicado

### Lote 1

Ejecutado el 22-11-2026 por una sesión con Opus. Nada commiteado, empujado ni desplegado. Cada enlace
doble (pdf+html) cuenta como uno. «Comando» = enlace a la actividad en que apareció un comando dado por
conocido; «práctica» = enlace a otra práctica; «lección» = enlace doble a una lección; «interno» =
`[[#ancla][Actividad N]]`.

**Enlaces añadidos.**
- S20-A: 6 de comando (=ols --quiet= S11-A act. 6; =$ess= S11-D act. 2; =$coeff= S11-A act. 3;
  =$stderr= S18-A act. 2; =%d= S07-B act. 5; bloque =plot= S11-C act. 2), 12 a lecciones (10 a la 13,
  1 a la 11, 1 a la 12), 11 internos. Total 29.
- S20-B: 4 a lecciones (3 a la 13, 1 a la 12), 7 internos. Total 11.
- S20-C: 4 de comando (=smpl 20 --random= S16-B act. 1; =critical= S18-A act. 2; =quantile= S18-C
  act. 2; =$rsq= S11-A act. 3), 5 a lecciones (4 a la 13, 1 a la 11), 8 internos. Total 17.
- S22-A: 9 de comando (=nulldata=/=set seed=/=normal()= S07-B act. 1; =series=/=scalar= S07-A act. 4;
  =--quiet= S11-A act. 6; =$coeff= S11-A act. 3; =$ess= S11-D act. 2; =$stderr=/=critical= S18-A
  act. 2, dos veces en apartados distintos; =if=/=endif= S07-B act. 5; =gnuplot= S07-A act. 3),
  8 a lecciones (7 a la 14, 1 a la 12), 4 internos. Total 21.
- S22-B: 5 de comando (S11-A act. 3, S11-D act. 2, S16-A act. 1, S18-A act. 2 en la lista; S18-A act. 2
  en la Actividad 5), 9 a lecciones (5 a la 14, 3 a la 12, 1 a la 13), 3 internos. Total 17.
- S22-C: 7 de comando (=labels= S04-A act. 2; =corr= S07-A act. 2; =ols= S11-A act. 1; =restrict= S20-A
  act. 2; =$test= S20-A act. 6; =smpl= S14-A act. 6; =pvalue= S18-A act. 2), 7 a lecciones (4 a la 14,
  3 a la 10), 6 internos. Total 20.
- S22-D: 6 de comando (los cinco de la lista, como en S22-C salvo =smpl=; y el $F$ de =restrict= de la
  Actividad 5, S20-A act. 2), 6 a lecciones (2 a la 14, 3 a la 10, 1 a la 13), 20 internos. Total 32.

**Anclas creadas.**
- En las prácticas del lote: S20-A `excluir-uno` (Act. 3), `igualdad-coeficientes` (Act. 4); S20-B
  `uno-a-uno` (Act. 1), `exclusion-conjunta` (Act. 2); S20-C `muestra-20` (Act. 2), `falsa-por-poco`
  (Act. 3); S22-A `cuatro-experimentos` (Act. 1); S22-B `ee-reconstruido` (Act. 2); S22-D
  `con-y-sin-tasacion` (Act. 2).
- En documentos citados: S04-A `atributos` (Act. 2, =labels=); S07-A `covarianzas` (Act. 2, =corr=);
  S07-B `repeticiones` (Act. 5, primeros =%d= e =if=/=endif=); S11-C `personalizar` (Act. 2, bloque
  =plot=: S20-A ya enlazaba a `#personalizar` y el ancla no existía, de modo que el enlace estaba roto);
  lección 14 `sintomas` («Síntomas y diagnóstico», citada en S22-C y S22-D).
- Ninguna coincide con un `#+NAME:` de su fichero (comprobado por guion antes de escribir). No se ha
  renombrado ningún ancla. Ningún enlace en `#+CAPTION:`, bloques de código ni secciones `* COMMENT`.

**`#page=` corregidos.** La lista de comandos de S22-B se alargó y su Actividad 1 pasó de la página 1 a la
2: corregidos los tres enlaces que apuntaban a `S22-Prct-B-hprice2-vif.pdf#page=1` (S20-A, objetivo 5 y
Actividad 5; lección 14, recapitulación). Además, lección 14: `S16-Prct-B-condicionar.pdf#page=8`
«pregunta 4» → `page=9` (desplazado ya antes de este lote; comprobado con `pdftotext`).

**Frases con redacción tocada** (además de poner el enlace). En las listas de comandos, «(sesión N)» pasa
a «(actividad K de la práctica X de la sesión N)» y «(sesiones N a M)» a «(sesiones N a M: actividad K
de la práctica X …)», como en el lote de la sesión 18. En plurales se enlaza cada número: S20-A, respuesta
3, «las [[#excluir-dos][Actividades 2]] y [[#nox-lnox][5]]»; S20-C, lista de comandos, «las Actividades
2 y 3»; S22-D, Actividad 4, «las actividades 1 y 2».

**Criterios.**
- Una vez por apartado: no se enlazan, por repetir destino ya enlazado en el mismo apartado, S20-A
  «como en la sesión 18» y «las funciones de la sesión 18» (Descripción), «Es la Actividad 5 dibujada»
  (Act. 6), «la Actividad 5 lo muestra» (respuesta 3); S20-B «la salida de la Actividad 1» (Act. 2);
  S22-A «en la sesión 11 lo usamos con cuatro vueltas», «=critical= (sesión 18)» (Descripción) y «de la
  Actividad 1» (Act. 2); S22-B «el factor $8{,}7$ de la lección 14» (objetivo 4), «la descomposición
  de la lección 14» (Act. 2), «=critical= (sesión 18)»; S22-C «la recta de la Actividad 1» (Act. 6,
  apartado de la predicción); S22-D las menciones repetidas de las Actividades 1 y 2 en la Actividad 4 y
  «el de la 4» (respuesta 4).
- Anuncios hacia delante sin enlace: en S20 (sesión 20) las lecciones 14 y 15 y las prácticas de la
  sesión 22. Los enlaces hacia delante que ya existían (S20-A → S22-B, objetivo 5 y Actividad 5) se han
  dejado; solo se ha corregido su página.
- Lección 12, «el enunciado de la lección 12» ($\mathrm{ee}=\mathfrak s/\Vert\tilde{\boldsymbol x}_j\Vert_e$,
  S22-A y S22-B) se enlaza a su recapitulación (p. 27), único lugar donde está.

**Dudas, sin tocar.**
- Atribuciones de sesión que no coinciden con la primera aparición (enlace solo al destino coherente
  con el texto, o ninguno):
  - S20-C, Descripción: «=smpl full= (sesiones 16 y 18)»: primera aparición en S14-A, Actividad 6; S16-B no
    lo usa. Solo se enlaza S16-B, Actividad 1, para =smpl 20 --random=.
  - S22-C y S22-D, Descripción: «=summary --simple= y el comando =corr= (sesión 7)»: =summary= y su opción
    =--simple= se presentan en S04-A, Actividad 3 (sesión 4). Solo se enlaza =corr= (S07-A, Actividad 2).
  - S22-C y S22-D: «=open= y =labels= (sesión 4)»: enlazado a S04-A, Actividad 2 (=labels=); =open=
    aparece antes, en la Descripción de S04-A.
  - S22-C y S22-D: «=restrict= y =$test= (sesión 20)»: =restrict= aparece por primera vez en S18-A,
    Actividad 3 (con =b[2]=); en la sesión 20 aparece la forma =b[variable]= que usan estas prácticas. Se
    enlazan S20-A, Actividades 2 y 6.
  - S20-A, Descripción: =critical= y =pvalue= aparecen en S18-A, Actividad 2, pero el enlace existente las
    agrupa con =restrict= en la Actividad 3. No se ha cambiado.
- S20-B, respuesta 5: «la lección 14 lo dijo del VIF»: la lección 14 es de la sesión 21, posterior a esta
  práctica; tiempo verbal de remisión hacia atrás.
- S20-C, Actividad 2 (L≈200) y S22-A, Actividad 1 (L≈124): «(véase la lista de comandos nuevos)»: remisión a
  la Descripción, que no tiene ancla. No se ha creado.
- S20-C, pregunta 2: «la geometría de la lección 13» (general; es la pregunta). Respuesta 2: «el reparto
  por igual de la lección 13» se ha enlazado a «El estadístico $F$» (p. 6, el argumento por grado de
  libertad), aunque la lección no dice «reparto por igual»: conviene confirmarlo.
- S22-A, Para profundizar: «Lección 11, la covarianza entre $\hat\beta_1$ y $\hat\beta_2$ con $k=2$»: la
  lección 11 («¿Y con más regresores?») dice que esos elementos no se calculan. Sin enlace.
- S22-A, Actividad 1: «la fórmula de la 14» enlazada a «La parte propia de un regresor» (p. 4); podría
  ser «Cuánto se acorta» (p. 6), donde aparece $\sin\theta$.
- S22-B, respuesta 2: «La lección 14 lo dijo: más datos alargan las partes propias sin cambiar el VIF»: no
  encuentro esa afirmación en la lección 14. Sin enlace.
- S22-B, respuesta 3: «la lección 13 mostró que los dos modelos con una sola medida ajustan igual de
  bien»: no lo encuentro en la lección 13 («Conjunto $\neq$ individual» dice que cada uno, solo, es
  significativo). Sin enlace.
- S22-D, Actividad 5, «Lo que debe observar»: «el caso que la lección 13 describió para una restricción que
  no se rechaza: el modelo restringido es más simple y más preciso»: no lo encuentro en la lección 13. Sin
  enlace.
- S22-D, Actividad 2: «es el efecto parcial de la lección 10»: está en la recapitulación de la lección 10
  y en su pregunta 10, sin sección propia. Sin enlace.
- S22-C y S22-D, Para profundizar: «Lección 10, el coeficiente de regresión múltiple como coordenada»: sin
  sección con ese contenido identificable; solo se enlaza «la familia ortogonal».
- S22-C, Descripción; S22-D, Actividad 1 y pregunta 2: «el caso =nox= y =lnox=», «el factor $9$ de =nox= y
  =lnox=»: no nombran documento. Sin enlace.

**Comprobaciones.**
- Ningún fichero bloqueado (`.#…`) en `org-pract/` ni en `org-lessons/` antes de escribir. 122
  sustituciones con un guion que comprobó con `assert`, sobre el fichero recién leído, que cada cadena
  aparecía exactamente una vez, fuera de bloques de código, de `#+CAPTION:` y de `* COMMENT`, y que ningún
  ancla nueva coincidía con un `#+NAME:`; todas antes de escribir. Las 4 correcciones de `#page=`, con un
  segundo guion igual.
- `make` de PDF y HTML de las siete prácticas, de S04-A, S07-A, S07-B, S11-C y de la lección 14 (S20-A y
  la lección 14 dos veces, tras corregir páginas): sin errores, ningún «file-locked»; en el log solo los
  avisos habituales (autoloads, depurador). La lección 14 no tiene regenerados el cuaderno ni las
  transparencias (solo cambia un cajón de propiedades y dos `#page=`).
- Número de páginas sin cambios: S20-A 13, S20-B 10, S20-C 9, S22-A 9, S22-B 9, S22-C 13, S22-D 11,
  lección 14 18. Sí se movió una actividad dentro de S22-B (véase arriba).
- Salidas de Gretl: los 54 `.txt` de las siete prácticas y de S04-A, S07-A, S07-B y S11-C son idénticos byte
  a byte a la copia previa.
- `comprobar-paginas.py org-pract/S*.org org-lessons/S*.org`: quedan 6 avisos previos a este lote, que no
  son páginas desplazadas sino etiquetas que la herramienta no reconoce («muestra», «pdf») en enlaces al
  apéndice de las lecciones 9 y 16.
- `#page=` a lecciones comprobados con `pdftotext`: lección 13 pp. 3, 5, 6, 7, 12, 13 (figura 2), 16, 17
  ($F=t^2$ con $q=1$), 19; lección 12 pp. 12 (valor $p$), 20, 27; lección 11 pp. 17, 20; lección 14 pp. 4,
  6, 7, 9, 10, 12, 14; lección 10 p. 12.
- HTML de las siete prácticas: todo `href="#…"` tiene su `id` (solo quedan la plantilla JavaScript
  `' + item.id + '` y un `href="#"` del tema, también presentes en S18-A). Toda ancla externa citada existe
  como `CUSTOM_ID` en el `.org` de destino y como `id` en su HTML.
- Aviso: `org-lessons/S17-Lecc12.org` aparece modificado (un párrafo sobre la tipificación, en «El error
  estándar…») sin que lo haya tocado esta sesión; parece de otra sesión o del autor. Su PDF no se ha
  recompilado: si se recompila, conviene volver a pasar `comprobar-paginas.py` y revisar los `#page=` a la
  lección 12 (pp. 12, 20 y 27).
