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

### Lote 1 bis

Ejecutado el 23-11-2026 por una sesión con Opus. Nada commiteado, empujado ni desplegado. Mismo
convenio de cuentas que el lote 1.

**Búsqueda.** `grep` en S20-A/B/C y S22-A/B/C/D, fuera de `* COMMENT`, de «lección 14/15/16», «sesión
21 a 26», «veremos», «explicará», «dirá», «mostrará», «propondrá», «más adelante» y «próxima».
- S22-A a D: ningún anuncio de las lecciones 15 y 16 ni de las sesiones 25 y 26. Sus menciones de la
  lección 14 son remisiones hacia atrás, ya tratadas en el lote 1. Sin cambios.
- S20-C: ningún anuncio hacia delante. Sin cambios.
- S20-B, respuesta 5: la duda del lote 1 («la lección 14 lo dijo del VIF») ya aparece resuelta en el
  fichero como «la lección 14 dirá lo mismo», con enlace a «Qué hacer» (p. 14). No lo he tocado.

**Enlaces añadidos.**
- S20-A: 6 a lecciones y 1 a práctica. Total 7.
  - L332 (Actividad 4, tras la salida de =restrict=): «lección 15 veremos restricciones con contenido»
    → lección 15, «Cobb–Douglas: elasticidades y rendimientos a escala» (`#cobb-douglas`, p. 13).
  - L368 (Actividad 5): «lección 14 explicará por qué esta pareja las separa tanto» → lección 14,
    «Síntomas y diagnóstico» (`#sintomas`, p. 10; su primer síntoma es $F$ alto con $t$ bajos).
  - L456 (Actividad 6): «lección 14 llamará ``Por qué son inestables los coeficientes''» →
    `#por-que-oscilan`, p. 9.
  - L487 (respuesta 2): «lección 14 lo dirá con la parte propia» → «La parte propia de un regresor»
    (`#parte-propia`, p. 4).
  - L493 (respuesta 5): «remedios que la lección 14 propondrá» → «Qué hacer» (`#que-hacer-y-que-no`),
    p. 15, donde está «El tercer caso» (la restricción lineal que funde dos regresores).
  - L495 (respuesta 6): «lección 14 en ``Por qué son inestables los coeficientes''» →
    `#por-que-oscilan`, p. 9; y la práctica A de la sesión 22 → Actividad 2 (`#nube`, p. 3).
- S20-B: 1 a lección. L312 (Actividad 3): «lección 14 describirá en ``Por qué son inestables los
  coeficientes''» → `#por-que-oscilan`, p. 9.

**Anclas creadas.** Ninguna: todos los destinos tenían `:CUSTOM_ID:`.

**Frase con redacción tocada.** S20-A, respuesta 6 (L495). Antes: «(la práctica A de la sesión 22 lo
mostrará con dos mil réplicas…)». Después: «(la práctica A de la sesión 22 lo mostrará en la
[actividad 2] ([html]) con dos mil réplicas…)». Se añade «en la actividad 2» para colocar el enlace
sin anidar paréntesis dentro del paréntesis.

**`#page=` corregidos.** Ninguno.

**Dudas, sin tocar.**
- S20-A, L368: «por qué esta pareja las separa tanto» podría enlazar también a «El caso =nox= y =lnox=
  con números» (`#caso-nox-lnox`), que da el VIF de la pareja; he elegido «Síntomas y diagnóstico»
  porque es la que explica la discrepancia entre el $F$ y los $t$. La frase siguiente ya enlaza la
  práctica B de la sesión 22, que pone los números.
- S20-A, L332: el enlace va a la sección Cobb–Douglas; el contraste de rendimientos constantes está
  en su p. 14 (la sección empieza en la p. 13).

**Comprobaciones.**
- Ningún fichero bloqueado (`.#…`) en `org-pract/` ni en `org-lessons/` antes de escribir. 7
  sustituciones con un guion que comprobó con `assert`, sobre el fichero recién leído, que cada cadena
  aparecía exactamente una vez y fuera de `* COMMENT`; todas antes de escribir. Ninguna en `#+CAPTION:`
  ni en bloques de código.
- `make` de PDF y HTML de S20-A y S20-B: sin errores; en el log solo los avisos habituales (autoloads,
  projectile, depurador); ningún «file-locked».
- Número de páginas sin cambios: S20-A 13, S20-B 10. No hace falta revisar enlaces entrantes.
- Salidas de Gretl: los 16 `.txt` de S20-A/B/C y S22-A son idénticos byte a byte a la copia previa.
  `git status`: solo los dos `.org` tocados (y este fichero).
- `comprobar-paginas.py org-pract/S*.org org-lessons/S*.org`: solo los 6 avisos previos (etiquetas
  «muestra» y «pdf» del apéndice en las lecciones 9 y 16).
- `#page=` a lecciones comprobados con `pdftotext`: lección 14 pp. 4, 9, 10, 15; lección 15 p. 13.
- HTML de S20-A y S20-B: todo `href="#…"` tiene su `id` (salvo la plantilla JavaScript del tema). Las
  anclas externas `sintomas`, `por-que-oscilan`, `parte-propia`, `que-hacer-y-que-no` (lección 14),
  `cobb-douglas` (lección 15) y `nube` (S22-A) existen como `id` en sus HTML.

### Lote 2

Ejecutado el 23-11-2026 por una sesión con Opus. Nada commiteado, empujado ni desplegado. Mismo
convenio de cuentas que el lote 1 («comando», «práctica», «lección», «interno»; cada enlace doble
cuenta como uno). 152 sustituciones y 15 anclas nuevas.

**Enlaces añadidos.**
- S14-A: 16 de comando (lista de la Descripción: =setinfo= S04-A act. 2, =summary= S04-A act. 3,
  =corr= S07-A act. 2, =gnuplot= S07-A act. 3, =printf=/escalares S07-A act. 4, =ols= S11-A act. 1,
  =--quiet= S11-A act. 6, =$coeff=/=$rsq= S11-A act. 3, =$uhat= S11-A act. 2, =resid[12]= S07-C
  act. 1; en las actividades: =print --byobs=, =ols=, =gnuplot=, =corr= dos veces, =$rsq=), 2 a
  prácticas (S14-B act. 5 y S14-B entera), 5 a lecciones (2 a la 11, 1 a la 8, 9 y 10), 2 internos.
  Total 25.
- S14-B: 8 de comando (lista: S04-A act. 2 y 3, S07-A act. 4, S11-A act. 1, 6 y 3, S14-A act. 3;
  =$nobs= S07-B act. 1), 5 a prácticas (S11-B entera, S04-A entera, S11-B act. 2 y 3, S14-C entera),
  6 a lecciones (4 a la 8, 1 a la 10, 1 a la 11), 1 interno. Total 20.
- S14-C: 7 de comando (lista: S11-A act. 1 y 3, S14-A act. 1, S14-B act. 5; =edad^2= S07-A act. 4;
  bucle S11-D act. 2 y S16-A act. 3), 4 a prácticas (S14-A y S14-B enteras en la Descripción; S14-A
  act. 5 y S14-B act. 4 en la pregunta 1), 2 a la lección 6, 6 internos. Total 19.
- S14-D: 6 de comando (lista: S07-B act. 1 y 3, S07-A act. 4, S11-A act. 1 y 3; =corr= S07-A
  act. 2), 2 a prácticas (respuesta 1: S11-A act. 2; respuesta 4: S14-A act. 3), 21 a lecciones
  (13 a la 10, 2 a la 13, 2 a la 14, 1 a la 3, 7, 8 y 11) y 1 solo HTML (pregunta 2 de la lección
  10), 17 internos. Total 47.
- S16-A: 5 de comando (lista: S07-A act. 4, S07-B act. 5 y 1; =%d= S07-B act. 5; =freq= S04-A
  act. 4), 5 a prácticas (S16-B entera dos veces; S16-C act. 1, 2 y 3), 16 a lecciones (10 a la 11,
  3 a la 12, 2 a la 9, 1 a la 4), 7 internos. Total 33.
- S16-B: 2 a prácticas (S16-A act. 1 y 3), 10 a lecciones (7 a la 11, 1 a la 4, 1 a la 9, 1 al
  apéndice, sección 1.3, en «Para profundizar»), 9 internos. Total 21.
- S16-C: 12 a lecciones (8 a la 11, 2 a la 7, 2 a la 12), 9 internos. Total 21.

**Anclas creadas.**
- En las prácticas del lote: S14-A `cuatro-modelos` (Act. 5); S14-C `parabola` (Act. 3), `cubica`
  (Act. 4), `tres-modelos` (Act. 5); S14-D `caso-general` (Act. 1), `cada-coeficiente` (Act. 5);
  S16-A `una-muestra` (Act. 2); S16-B `regresor-fijo` (Act. 2), `regresor-sorteado` (Act. 3),
  `dos-varianzas` (Act. 4), `muestra-grande` (Act. 5); S16-C `forzar-ortogonalidad` (Act. 3).
- En documentos citados: S04-A `descriptivos` (Act. 3, =summary=) e `histograma` (Act. 4, =freq=);
  lección 10 `pregunta-2` (pregunta de repaso 2, «Transposición de vectores», solo en el HTML; la
  cita S14-D, Actividad 3).
- Ninguna coincide con un `#+NAME:` de su fichero (en S04-A existen «Estadisticos descriptivos» e
  «Histograma de price», distintos). No se ha renombrado ningún ancla. Ningún enlace en `#+CAPTION:`,
  bloques de código ni secciones `* COMMENT`.

**`#page=` corregidos.** La lista de comandos de S14-A se alargó y sus Actividades 1 y 2 bajaron una
página (de 1 a 2 y de 2 a 3; el número total de páginas no cambia). Corregidos: S14-C, lista de
comandos (enlace nuevo de este lote, act. 1 → p. 2); S14-C, respuesta 5 (act. 2 → p. 3, enlace
previo); S20-B, Descripción (act. 1 → p. 2, enlace previo, fichero del lote 1).

**Frases con redacción tocada** (además de poner el enlace).
- Listas de comandos: «(sesión N)» → «(actividad K de la práctica X de la sesión N)», y «(sesiones N y
  M)», «(sesión 11 y prácticas A y B de hoy)» → la misma fórmula seguida de «: actividad K de la
  práctica X …», como en el lote 1. S14-A: «(prácticas de la sesión 11)» → «(práctica A de la sesión
  11: [actividad 1], [actividad 6], [actividad 3] y [actividad 2])». S14-D: «(=nulldata=, …,
  =printf=)» → «(=nulldata=, …, =printf=: actividades 1 y 3 de la práctica B y actividad 4 de la
  práctica A)». S14-C: «(sesión 11; la mecánica del bucle se explica en la sesión 16)» → «([actividad
  2] de la práctica D de la sesión 11; la mecánica del bucle se explica en la [actividad 3] de la
  práctica A de la sesión 16)».
- En el texto: S14-A, Descripción, «en la práctica B de esta sesión» → «en la [actividad 5] de la
  práctica B de esta sesión» (va dentro de un paréntesis); S14-A, Act. 2, «Es la misma orden de la
  sesión 11,» → «… de la sesión 11 ([actividad 1] de la práctica A),»; S14-A, Act. 4, «la matriz
  simétrica de la sesión 7:» → «… de la sesión 7 ([actividad 2] de la práctica A):»; S14-B, Act. 1,
  «como en la sesión 4.» → «como en la [práctica A de la sesión 4].»; S14-B, Act. 2, «las regresiones
  simples de la sesión 11;» → «… de la sesión 11 ([actividad 2] y [actividad 3] de la práctica B);»;
  S14-C, pregunta 1, «prácticas A y B de esta sesión» → «prácticas A ([actividad 5]) y B ([actividad
  4]) de esta sesión»; S14-D, respuesta 4, «la práctica de Ramanathan con» → «la práctica de
  Ramanathan ([actividad 3]) con»; S16-A, «En la práctica C veremos» (Act. 5), «en la práctica C lo
  forzaremos» (respuesta 1) y «La práctica C de hoy muestra» (respuesta 5): se añade «([actividad
  N])» tras «práctica C»; S16-B, Act. 1, «el mundo artificial de la práctica A (mismos» → «el mundo
  artificial de la [actividad 1] de la práctica A (mismos»; S16-B, Act. 2, «Es el experimento de la
  práctica A sin más» → «… de la práctica A ([actividad 3]) sin más».
- Plurales: S16-B, Act. 5, «las Actividades [2] y [3]»; S14-D, «Las lecciones [11] y [13] llamarán»;
  S14-C, Descripción, «Las prácticas [A] y [B] de esta sesión».

**Criterios.**
- Destinos de los comandos, los mismos del lote 1: =printf= y los escalares en S07-A, Actividad 4
  (donde se presentan, aunque =printf= aparece antes en el código de la Actividad 2); =%d= en S07-B,
  Actividad 5. =summary= y =freq= van a S04-A, Actividades 3 y 4, con anclas nuevas.
- Una vez por apartado: no se enlazan, entre otras, S14-A «la misma orden de la sesión 11» (lista de
  comandos); S14-C «(práctica A de la sesión 11)» de =matrix medad= (ya enlazada en la misma lista);
  S14-D «=$coeff(x2)=… (sesión 11)», «Recuerde la advertencia de la lección 10» (Act. 2), «la
  identidad … de la lección 10» y la segunda «(lección 10, ``Transposición'')» (Act. 3), «de la
  Actividad 1» (Act. 4), «Es lo que predice la lección 10» y la segunda «Familia ortogonal» (Act. 5),
  «la fórmula de la lección 14» y «la de la Actividad 1» (Act. 7, «Lo que debe observar»); S16-A «la
  nota a pie de página de la lección 11», «el denominador de la lección 11», «la predicción de la
  lección 11» (Act. 1) y «(fórmula de la lección 11)» (Apéndice); S16-B «(lección 9)» (Descripción),
  «la abreviatura que introdujimos en la práctica A» (Act. 1), «la lección 11 predecía» y «la razón
  por la que la lección 11 se detuvo» (Act. 4); S16-C «las mismas de la práctica B» (Act. 2; la
  mención siguiente ya tenía enlace) y «Es el caso del ejemplo de la lección 7» (Act. 3).
- Remisiones generales sin enlace (sin resultado concreto con sección propia), como en el lote 1:
  S14-A «el bloque de regresión múltiple (lección 10)», «efecto parcial (lección 10)» (objetivo 2,
  Act. 3, y S14-B, Descripción), «la regresión simple ya vista en la lección 6», «No confunda esta
  figura con las de la lección 10»; S14-D «la notación matricial de la lección 10», «el álgebra
  matricial completa de la lección 10»; S16-A/B/C «La lección 11 demostró dos cosas», «lo que la
  lección 11 predice», «la lección 11 trabajó con esa definición» y similares.
- «como en las sesiones 4 y 11» (S14-A, Act. 1): dos sesiones, ninguna práctica concreta; los
  comandos ya están enlazados en la lista. Sin enlace.
- Lección 10, pregunta 2: el HTML de la lección 10 se ha recompilado (contiene `id="pregunta-2"`);
  su PDF, cuaderno y transparencias no, porque solo cambia el cajón de una pregunta que va al HTML.

**Dudas, sin tocar.**
- «El $R^2$ nunca baja» atribuido a la lección 8: S14-A, Act. 5 («(lección 8)»); S14-B,
  Descripción («anunciada en la lección 8 (el $R^2$ nunca disminuye…)») y Act. 4; S14-C, pregunta 1
  («(lección 8, …)») y respuesta 1 («La propiedad de la lección 8 (``$R^2$ nunca baja'')»). La
  lección 8 no lo dice: solo aparece en una pregunta de repaso de la lección 10. Sin enlace, salvo
  S14-B, Act. 4, que enlazo a «Una advertencia: el nombre /suma explicada/ es engañoso» (p. 12)
  porque cita entre comillas «un $R^2$ alto no certifica nada por sí solo»; la lección dice «Un
  $R^2$ alto no certifica relación alguna», así que la cita tampoco es literal (Guía §8).
- Atribuciones de sesión que no coinciden con la primera aparición (enlace al destino coherente con
  el texto):
  - S14-B, lista: «=corr= … (sesión 11 y práctica A de hoy)»: =corr= es de S07-A, Actividad 2. Se
    enlaza S14-A, Actividad 3, donde se usa con dos regresores.
  - S14-C, lista: =setinfo= (S04-A act. 2), =gnuplot= (S07-A act. 3), =$nobs= (S07-B act. 1),
    =nulldata= (S07-B act. 1) y =setobs= (S04-B act. 3) figuran como «sesión 11 y prácticas A y B de
    hoy». Se enlazan S11-A, Actividades 1 y 3 (=nulldata=, =setobs=, =ols=, =$coeff=, =$rsq=), S14-A,
    Actividad 1 (=print --byobs=), y S14-B, Actividad 5 (=$ncoeff=).
- S14-B, Apéndice: «convención fijada en la lección 10» ($k$ cuenta la constante): no la encuentro
  en una sección concreta. Sin enlace.
- S14-B, Act. 2: «(correlación $-0{,}30$; lección 10)» enlazada a «$R^2$ en regresión múltiple»
  (p. 13, donde está la excepción de los regresores ortogonales); podría ser «Familia ortogonal»
  (p. 12).
- S14-B, nota al pie del Apéndice: «la insesgadez … que la lección 11 aborda» enlazada a «MCO es
  BLUE; estimando $\sigma^2$» (p. 17, estimador insesgado de $\sigma^2$), no a «Insesgadez» (p. 11),
  porque la nota habla de las cuasivarianzas.
- S14-A, respuesta 2: «la lección 9 (``El puente'')» enlazada a «Cuidado: Esta descomposición
  ortogonal no implica causalidad» (p. 14), que trata la causalidad; «El puente» es el nombre que la
  lección 8 da a la lección 9, y su primera sección se titula «El puente epistemológico» (p. 2).
- S14-D, Act. 2: «que verificamos en la siguiente actividad»; S16-C, Act. 2: «anótelo como pregunta
  pendiente para la próxima lección». Son referencias relativas (Guía §4). No las he cambiado.
- S14-D, Act. 6: «En la lección 14 veremos el caso menos extremo…» enlazada a «Por qué son
  inestables los coeficientes» (p. 9). El caso lo presenta la sección 2 de la lección 14,
  «Colinealidad exacta y colinealidad de grado» (p. 3), que no tiene ancla; si se le crea una,
  conviene cambiar el destino.
- S16-A, pregunta 2: «¿Con qué expresión de la lección 11 tiene eso que ver?»: el enlace daría la
  respuesta. Sin enlace. En cambio, S16-B, pregunta 2 («¿en qué paso de la demostración de la lección
  11…?») y S16-C, pregunta 1, enlazan la demostración de «Insesgadez» (p. 11): señalan dónde mirar
  sin decir el paso.
- S16-A, Act. 3, y S16-B, Descripción: «la matriz de copias de la lección 11»: la frase ya enlaza el
  apéndice, sección 3. Sin enlace a la lección (la presenta en «El marco: muestra aleatoria»,
  pp. 4-5).
- S16-C, Act. 1: «/y ahora comparamos los tres casos con lo que predice la lección 11/:» va en
  cursiva, y las barras de la URL romperían el énfasis de Org. Sin enlace.
- S16-C, Act. 2 y Act. 3: «los $w_i$ de la lección 7»: la lección 7 no usa $w_i$ ni habla de pesos
  (están en la lección 11, «Dos propiedades de los pesos»). Sin enlace.

**Comprobaciones.**
- Ningún fichero bloqueado (`.#…`) en `org-pract/`, `org-lessons/` ni `doc/prompts/` antes de
  escribir. 152 sustituciones y 15 anclas con un guion que comprobó con `assert`, sobre el fichero
  recién leído, que cada cadena aparecía una sola vez, fuera de bloques de código, de `#+CAPTION:` y
  de `* COMMENT`, y que ninguna ancla nueva coincidía con un `#+NAME:`; todo antes de escribir. Las 3
  correcciones de `#page=`, con un segundo guion igual.
- `make` de PDF y HTML de las siete prácticas, de S04-A, S20-B y del HTML de la lección 10 (S14-C
  dos veces): sin errores; en el log solo los avisos habituales (autoloads, projectile, depurador);
  ningún «file-locked».
- Número de páginas sin cambios: S14-A 13, S14-B 11, S14-C 10, S14-D 13, S16-A 12, S16-B 15, S16-C
  18, S04-A 8, S20-B 10. Sí se movieron dos actividades dentro de S14-A (véase arriba).
- Salidas de Gretl: los 56 `.txt` de las siete prácticas son idénticos byte a byte a la copia previa.
  S04-A (un `.txt`, la salida de =summary=) se regeneró sin copia previa; su `.org` solo cambia en
  dos cajones de propiedades.
- `comprobar-paginas.py org-pract/S*.org org-lessons/S*.org`: tras corregir los tres `#page=`, solo
  los 6 avisos previos (etiquetas «muestra» y «pdf» del apéndice en las lecciones 9 y 16).
- `#page=` a lecciones comprobados con `pdftotext`: lección 3 p. 7; lección 4 p. 10; lección 6 p. 8;
  lección 7 pp. 6, 11; lección 8 pp. 5, 8, 12; lección 9 pp. 8, 14; lección 10 pp. 5, 9, 11, 12, 13,
  17; lección 11 pp. 2, 3, 10, 11, 13, 17, 18; lección 12 pp. 2, 4, 12; lección 13 pp. 6, 11;
  lección 14 pp. 4, 9; apéndice p. 4 (sección 1.3).
- HTML de las siete prácticas y de S20-B: todo `href="#…"` tiene su `id`, y toda ancla externa
  citada (`…html#ancla`) existe como `id` en el HTML de destino (comprobado por guion: 0 rotos).
- `git status`: solo cambian los `.org` tocados (las siete prácticas, S04-A, S20-B, la lección 10) y
  este fichero, además de lo que ya estaba sin commitear del lote 1 bis.

### Lote 3

Ejecutado el 23-11-2026 por una sesión con Opus. Nada commiteado, empujado ni desplegado. Mismo
convenio de cuentas que el lote 1 («comando»/«práctica» = enlace doble a otra práctica, «lección» =
enlace doble a una lección, «interno» = `[[#ancla][Actividad N]]`). 138 sustituciones y 13 anclas
nuevas; 162 enlaces (76 a prácticas, 54 a lecciones, 32 internos).

**Enlaces añadidos.**
- S04-A: 3 a prácticas (S04-B entera y su act. 2, donde se abre un fichero propio con su ruta; S07-B
  entera, respuesta 4), 1 a la lección 1 («Datos de sección cruzada», p. 7: el orden de las
  observaciones es arbitrario), 1 interno. Total 5.
- S04-B: 5 a prácticas (S04-A entera; =print= S04-A act. 1 y =summary= act. 3 en la lista y en la
  Actividad 4), 1 a la lección 5 («traslación y escala», p. 11, homogeneidad de la covarianza). Total 6.
- S07-A: 6 a prácticas (S04-A entera; =setinfo= act. 2, =summary= act. 3, =help= act. 1, en la
  lista y en la Actividad 1), 7 a lecciones (4 a la 5: «La correlación: el coseno» p. 7, tres veces,
  y «traslación y escala» p. 11; 3 a la 4: «El vector en desviaciones es ortogonal» p. 9 y «El
  producto escalar en la estadística» p. 3), 2 internos. Total 15.
- S07-B: 10 a prácticas (lista: S07-A act. 2 y 4; =print -o= S04-A act. 1; S07-C act. 1, Serie B;
  =loop= S16-A act. 3, tres veces, como hace S11-D; S07-A act. 4 y entera; S07-A apéndice en la
  pregunta 2), 9 a lecciones (6 a la 5, 1 a la 3, 1 a la 4 y 1 a la 6), 9 internos. Total 28.
- S07-C: 7 a prácticas (lista: S07-A act. 4, S07-B act. 1, =setobs= S04-B act. 3, =freq= S04-A
  act. 4; =setinfo= S04-A act. 2; =freq= en la Actividad 3; apéndice de S07-A), 4 a lecciones (3 a
  la 5, 1 a la 4), 5 internos. Total 16.
- S11-A: 7 a prácticas (lista: S04-A act. 1, S04-B act. 3, S07-A act. 4, S07-B act. 1, S07-C act. 1;
  =abs= S07-B act. 3; =sd= y su divisor, apéndice de S07-C), 16 a lecciones (10 a la 7, 6 a la 8),
  11 internos. Total 34.
- S11-B: 16 a prácticas (S07-A entera, act. 1, 2 —cinco veces, una por apartado—, 3 y 4; =setinfo=
  S04-A act. 2; lista: S11-A act. 1, 2, 3 y 6; S11-A act. 1 en la Actividad 2; S07-B act. 1), 11 a
  lecciones (9 a la 8, 2 a la 7), 2 internos. Total 29.
- S11-C: 12 a prácticas (S11-A y S11-B enteras; S11-B act. 2 dos veces, act. 6 y act. 8; S04-A
  act. 4 y 5 dos veces; =ols= S11-A act. 1; =gnuplot= S07-A act. 3), 1 a la lección 8, 2 internos.
  Total 15.
- S11-D: 10 a prácticas (lista: S04-B act. 3, S04-A act. 3, S07-B act. 1, S07-A act. 3 y 4, S11-A
  act. 1 y 3; =loop= S07-B act. 2; S07-C act. 6; S14-A act. 6 en la respuesta 3), 4 a lecciones (2 a
  la 8, 1 a la 7, 1 a la 9, «El MCRL», p. 10). Total 14.

**Anclas creadas.**
- En las prácticas del lote: S04-A `mostrar-datos` (Act. 1, también =help=) y `caja` (Act. 5);
  S04-B `importar-csv` (Act. 2); S07-A `reapertura` (Act. 1) y `divisor` (Apéndice); S07-C `sintesis`
  (Act. 6) y `construccion` (Apéndice); S11-A `muestra-grande` (Act. 5); S11-B `bondad-ajuste`
  (Act. 5), `dispersion-recta` (Act. 6), `intercambiar` (Act. 7), `sintesis-comparativa` (Act. 8);
  S11-C `reestimacion` (Act. 1).
- Ninguna en documentos fuera del lote. Ninguna coincide con un `#+NAME:` de su fichero (comprobado
  por guion antes de escribir). No se ha renombrado ningún ancla. Ningún enlace en `#+CAPTION:`,
  bloques de código, títulos de sección ni secciones `* COMMENT`.

**`#page=` corregidos.** Ninguno: ninguna práctica del lote cambia de número de páginas y
`comprobar-paginas.py` no señala ningún enlace desplazado.

**Frases con redacción tocada** (además de poner el enlace).
- Listas de comandos: «(sesión N)» → «(actividad K de la práctica X de la sesión N)» y «(sesiones N y
  M)», «(prácticas de las sesiones 4 y 7)», «(práctica A de esta sesión)» → la misma fórmula seguida
  de «: actividad K de la práctica X …», como en los lotes anteriores.
- S11-C, lista: «=gnuplot=, =freq= y =boxplot= (sesiones 4 y 7):» → «… (sesiones 4 y 7; =gnuplot=,
  [actividad 3] ([html]) de la práctica A de la sesión 7):». =freq= y =boxplot= ya van enlazados en
  el objetivo 4 del mismo apartado (S04-A, act. 4 y 5).
- S07-B, Act. 2, y «Para profundizar»: «en la práctica A de la sesión 16» → «en la [actividad 3]
  ([html]) de la práctica A de la sesión 16»; S07-B, lista: «(en la sesión 4 usamos =print -o=» →
  «(en la [actividad 1] ([html]) de la práctica A de la sesión 4 usamos =print -o=».
- S07-B, Act. 2: «la Serie B de la práctica C de esta misma sesión)» → «…sesión, [actividad 1]
  ([html]))» (coma, porque la frase ya va entre paréntesis); igual en S11-A con «(práctica B de la
  sesión 7, [actividad 3])» y «(práctica C de la sesión 7, [apéndice])».
- En el texto se añade «([actividad N] ([html]))» tras «práctica X de esta sesión/de la sesión N»:
  S04-A, Descripción («como haremos en la práctica B»); S04-B, Act. 4; S07-A, Act. 1; S07-B, Act. 3,
  pregunta 2 y respuesta 5; S11-A, Act. 4; S11-B, Descripción, Act. 1, 2 y 3, preguntas y
  respuestas; S11-C, Descripción, Act. 1 y 5, pregunta 5; S11-D, Act. 1. En S11-C, Act. 2, «(como en
  la práctica B de esta sesión)» → «(como en la [actividad 6] ([html]) de la práctica B de esta
  sesión)».
- S11-C, Descripción, plural: «Las prácticas [A] ([html]) y [B] ([html]) de esta sesión».

**Criterios.**
- Destinos de comandos, los de los lotes anteriores; =help= va a S04-A, Actividad 1 (apartado «Para
  acceder a la ayuda»), y =acos= a S07-A, Actividad 4.
- Enlaces internos dentro de cursiva: se han puesto (no llevan barras), y se ha comprobado en S11-A,
  Act. 2, que el HTML y el PDF conservan la cursiva. Los enlaces externos dentro de cursiva no se han
  puesto (véanse las dudas).
- Lección 8, «Una advertencia: el nombre /suma explicada/ es engañoso»: la sección empieza al pie de
  la p. 11, pero el queso, la superficie sobre el precio y «Un $R^2$ alto no certifica relación
  alguna» están en la p. 12, que es la que se enlaza (como en el lote 2). Lección 7, «sin constante no
  puede hablarse de regresión» (S11-A, Act. 6): `#lugar-de-las-medias`, p. 10, donde está la frase.
- Una vez por apartado: no se enlazan, entre otras, S04-B, objetivo 5 («el =hprice2= de la práctica
  A»); S07-A «como en la sesión 4» (Act. 1); S07-C «el detalle completo se explica en el Apéndice»
  (Act. 1), «(véase el Apéndice)» (lista) y «(lección 5)» (Apéndice); S11-A «el cálculo manual de la
  lección 7» (objetivo 1, Act. 1), «los mismos que calculamos a mano en la lección 7» y «la fórmula de
  la lección 7» (Act. 4); S11-B «el ángulo $\theta$ de la lección 8» (objetivo 4) y «La conclusión es
  la de la lección 8» (Act. 7).
- Remisiones generales sin enlace: «las lecciones 4 y 5» y «(lecciones 3, 4 y 5)» (S04-A, S04-B,
  S07-A, S07-B), «las lecciones 7 y 8» (S11-A), «(lección 6)» (S07-B, objetivo 3), «(lección 8)»
  sobre el $R^2$ con datos económicos (S11-B, Act. 2), «Recta de ajuste y del $R^2$ (lección 8)»
  (S07-C, Act. 6), «la lección 6 da un paso más… lección 7» (S07-B, Act. 4), «en el sentido
  geométrico de la lección 8» (S11-B, respuesta 3), «cuando lleguemos a inferencia», «más adelante».
- «Para profundizar» de S07-A y S07-B («Véanse las lecciones 4 y 5…») sin enlace (general); S07-C
  («Véase la lección 5 para las propiedades de invarianza y homogeneidad») sí, a «traslación y
  escala». Los enlaces existentes en S11-A, S11-B y S11-D (lecciones 7 y 8 enteras) no se han tocado.

**Dudas, sin tocar.**
- Enlaces externos dentro de cursiva (las barras de la URL romperían el énfasis de Org), sin enlace:
  S04-A, Act. 3 («se desarrolla en la práctica A de la sesión 7», «notación que fijaremos en la
  lección 4»); S07-A, Apéndice («homogeneidad de la norma, lección 2; … lección 5»); S07-B, Act. 1
  («Apéndice de la práctica A», «(lección 5)», «La identidad de Pitágoras de la lección 5»), Act. 2
  («las figuras de la lección 5»), Act. 3 («la lección 6 plantea el problema y la lección 7 lo
  resuelve») y Act. 5 («la práctica A de la sesión 16», ya enlazada fuera de la cursiva en la
  Actividad 2); S11-A, Act. 3 («la identidad que la lección 7 pidió guardar para la lección 8»).
- Atribuciones que no coinciden con la primera aparición:
  - S07-C, lista: «=uniform= … de las prácticas A y B»: =uniform= aparece por primera vez en la
    propia S07-C (Actividad 1, Serie C). Se enlazan S07-A act. 4 y S07-B act. 1 por los demás. En
    S11-A, =uniform= queda cubierto por el enlace a S07-C, act. 1.
  - S07-C, lista: =boxplot= se da como nuevo; aparece en S04-A, Actividad 5, con una variable (lo
    nuevo es la figura conjunta). Sin cambio.
  - S11-D, lista: «=$ess= (práctica A de esta sesión)»: S11-A solo lo nombra; en el código aparece
    primero en la propia S11-D (lote 1). Se enlazan S11-A act. 1 y 3 por =ols=, =$coeff= y =$rsq=.
  - S04-B, lista, y S07-A, lista: =open= se presenta en la Descripción de S04-A, que no tiene ancla.
    No se enlaza.
- S04-A, respuesta 2: «en la lección 15 (formas funcionales), se transforma =price= con logaritmos:
  el logaritmo ``comprime'' esa cola larga»: la lección 15 no habla de la asimetría de =price= ni de
  la cola. Sin enlace.
- S04-A, Act. 5: «Más adelante (laboratorio integrador) hablaremos de /observaciones influyentes/»;
  S04-B, Descripción: «cuando estudiemos variables dicotómicas y en el laboratorio final»; S07-C,
  Act. 6 y «Para profundizar»: «el célebre /cuarteto de Anscombe/, que reservamos para más adelante»
  (es S11-D); S11-D, Act. 4: «lo que vimos con los salarios de las cuatro empresas» (es S07-C, ya
  enlazada en la Descripción). No nombran documento: habría que reescribir para enlazar.
- S07-A, Act. 3, nota al pie: «como veremos en la lección 6, se llama ``recta de regresión''»: la
  lección 6 solo usa la expresión en una nota de notación («En su curso de Estadística la recta de
  regresión se escribía…»). Sin enlace.
- S07-B, Act. 3: «La lección 3 demostró dos desigualdades» enlazada a «Desigualdad de Cauchy–Schwarz»
  (p. 7); la triangular tiene sección propia (`#desigualdad-triangular`, p. 10).
- S11-B, objetivo 2: «las dos condiciones de ortogonalidad de la lección 7» enlazada a «Primera
  condición» (p. 3); la segunda tiene sección propia (`#segunda-condicion`, p. 4).
- S11-B, respuesta 5: «como se explicó al cierre de la lección 8, cuando hay más de un regresor…»: la
  recapitulación de la lección 8 solo anuncia que el argumento se generalizará a $k$ regresores; no
  dice que el $R^2$ conjunto no sea la suma de los simples. Sin enlace.
- S11-B, Act. 2: «con =rooms= centrado (lección 7)» enlazada a «Vía alternativa: generadores
  ortogonales» (p. 7), donde el coeficiente de $\boldsymbol 1$ en la base centrada es la media.
- S11-B, respuesta 4: «ya se comprobó en la práctica B de la sesión 7» (redondeo de coma flotante)
  enlazada a su Actividad 1; la Actividad 5 también lo muestra.
- S11-D, «Para profundizar»: el enlace existente es a la lección 8 entera, con el título de la sección
  en texto plano; podría pasar a la sección (`#suma-explicada`). No se ha cambiado.
- S04-A, Descripción: «como haremos en la práctica B» enlazada a S04-B, Actividad 2 (importar el
  CSV); conviene confirmar que es allí donde se escribe la ruta.

**Comprobaciones.**
- Ningún fichero bloqueado (`.#…`) en `org-pract/`, `org-lessons/` ni `doc/prompts/` antes de
  escribir. 138 sustituciones y 13 anclas con un guion que comprobó con `assert`, sobre el fichero
  recién leído, que cada cadena aparecía una sola vez, fuera de bloques de código, de `#+CAPTION:`, de
  títulos y de `* COMMENT`, que ninguna ancla nueva coincidía con un `#+NAME:` ni con un
  `:CUSTOM_ID:` existente y que todo enlace interno tenía su ancla; todo antes de escribir. Las
  páginas de las lecciones las calculó el guion con `pdftotext` sobre los PDF de `org-lessons/`.
- `make` de PDF y HTML de las nueve prácticas: sin errores; en el log solo los avisos habituales
  (autoloads, projectile, depurador); ningún «file-locked».
- Número de páginas sin cambios: S04-A 8, S04-B 6, S07-A 9, S07-B 12, S07-C 10, S11-A 10, S11-B 9,
  S11-C 7, S11-D 6.
- Salidas de Gretl: los 39 `.txt` de las nueve prácticas son idénticos byte a byte a la copia previa.
- `comprobar-paginas.py org-pract/S*.org org-lessons/S*.org`: solo los 6 avisos previos (etiquetas
  «muestra» y «pdf» del apéndice en las lecciones 9 y 16). Los enlaces con etiqueta «apéndice», que
  la herramienta no comprueba, se han verificado a mano: S07-A y S07-C, «Apéndice -» en la p. 6.
- `#page=` a lecciones (pdftotext): lección 1 p. 7; lección 3 p. 7; lección 4 pp. 3, 9, 13;
  lección 5 pp. 4, 5, 6, 7, 9, 11; lección 6 p. 5; lección 7 pp. 3, 6, 7, 10; lección 8 pp. 5, 8,
  10, 12, 13; lección 9 p. 10.
- HTML de las nueve prácticas: todo `href="#…"` tiene su `id` (salvo la plantilla JavaScript del
  tema), y toda ancla externa citada (`…html#ancla`) existe como `id` en el HTML de destino
  (comprobado por guion: 0 rotos).
- `git status`: solo cambian los nueve `.org` del lote y este fichero, además de lo que ya estaba sin
  commitear de los lotes 1 bis y 2.

### Lote 4

Ejecutado el 23-11-2026 por una sesión con Opus. Nada commiteado, empujado ni desplegado. Mismo
convenio de cuentas que los lotes anteriores («práctica» = enlace doble a otra práctica, casi todos
de comandos; «lección» = enlace doble a una lección; «interno» = `[[#ancla][Actividad N]]` o
`[[#ancla][Tabla N]]`). 85 sustituciones, ninguna ancla nueva; 90 enlaces (22 a prácticas, 46 a
lecciones, 1 al apéndice, 21 internos).

**Enlaces añadidos.**
- S25-A: 6 a prácticas (lista de comandos: =open= y =labels= S04-A act. 2, =summary --simple= S07-C
  act. 2, =ols= S11-A act. 1, =series= S07-A act. 4, =corr= S07-A act. 2, =smpl= S14-A act. 6), 16 a
  lecciones (7 a la 16: «río Charles» p. 3, «Con más regresores» p. 6 dos veces —la cautela del
  objetivo 2 y «Tres cautelas» de la Act. 2—, «En log-nivel» p. 8, «Interacciones» p. 15, «Chow»
  p. 17 dos veces —Descripción y Act. 4—; 5 a la 15: «Log-nivel» p. 6 dos veces —objetivo 1 y
  Act. 1—, «Previsión» p. 15 dos veces —objetivo 2 y Act. 2—, «Cuatro formas» p. 5 en la respuesta
  1; 4 a la 13: el $F$ de «modelos anidados» p. 13 dos veces —definición de =chow= y Act. 4—,
  «Conjunto ≠ individual» p. 19 dos veces —Act. 4 y respuesta 6—), 7 internos (Act. 3 y 5,
  preguntas 1, 2, 4 y 7). Total 29.
- S25-B: 5 a prácticas (=summary --simple= S07-C act. 2 y =printf= S07-A act. 4; =corr= S07-A act. 2;
  =ols= S11-A act. 1; =critical= S18-A act. 2), 11 a lecciones (15: «Cobb–Douglas» pp. 13, 14 y 15;
  13: «Tres restricciones» p. 17, cuatro veces; 14: «La parte propia» p. 4, dos veces; 16: «Varias
  categorías» p. 13; 9: «MCRL» p. 12, la exogeneidad), 2 internos (Act. 3 y 4). Total 18.
- S26-A: 2 a prácticas (S14-A act. 6 en la Act. 2; S25-A act. 2 en la Act. 3), 6 a lecciones (10:
  «La geometría es la misma» p. 3 y «Ecuaciones normales» p. 11, en la nota de la respuesta 1; 16:
  «río Charles» p. 3; 9: «Recapitulación» p. 19, la tabla-diccionario, y «La esperanza: dos caras»
  p. 8, en la nota al pie del Cierre, por la definición de $\mathrm{Corr}$; 11: «El marco: muestra
  aleatoria» p. 4, la matriz de copias), 1 al apéndice («Para profundizar», secciones 1 a 4, p. 3,
  como el enlace que ya había en el Cierre), 1 interno (Act. 2). Total 10.
- S26-B: 3 a prácticas (=summary --simple= S07-C act. 2 y =printf= S07-A act. 4; =ols= S11-A act. 1),
  8 a lecciones (15: «Lo que cambia y lo que no» p. 17, «Nivel-log» p. 8, «Cuatro formas» p. 5 en la
  respuesta 1, «Previsión» p. 15 en la respuesta 4; 13: «Tres restricciones» p. 17; 16: «Con más
  regresores» p. 6; 9: «MCRL» p. 12 y «Cuidado: … no implica causalidad» p. 14), 7 internos
  (objetivo 3, Act. 4 dos, Act. 5, preguntas 3 y 4, respuesta 6). Total 18.
- S26-C: 6 a prácticas (=summary --simple= S07-C act. 2 y =printf= S07-A act. 4; =ols= S11-A act. 1;
  =corr= S07-A act. 2; =critical= S18-A act. 2, en la lista y en la Tabla 3), 5 a lecciones (16:
  «En log-nivel» p. 8, el modelo de =wage1=; 15: «Cuatro formas» p. 5 en la Tabla 2 y en la
  respuesta 2, «Log-log» p. 9, la demanda de aire limpio; 9: «MCRL» p. 12), 4 internos (preguntas
  1, 2 y 3: Tablas 1 a 4). Total 15.

**Anclas creadas.** Ninguna: todas las actividades de las cinco prácticas y todas las secciones
citadas de las lecciones ya tenían `:CUSTOM_ID:`. En S26-C los enlaces internos van a las anclas de
las cuatro «Tabla N» (`tabla-niveles`, `tabla-log-nivel`, `tabla-nivel-log`, `tabla-log-log`), que
hacen allí de actividades.

**`#page=` corregidos.** Ninguno: las cinco prácticas conservan su número de páginas y
`comprobar-paginas.py` no señala ningún enlace desplazado.

**Frases con redacción tocada** (además de poner el enlace). En las URL se omite el prefijo.
- Listas de comandos, con la fórmula de los lotes anteriores:
  - S25-A: «=open= y =labels= (sesión 4)» → «(actividad 2 (html) de la práctica A de la sesión 4)»;
    «=summary --simple= (sesión 7)» → «(actividad 2 (html) de la práctica C de la sesión 7)»;
    «(sesiones 11 a 18), =series= (sesión 7)» → «(sesiones 11 a 18: actividad 1 (html) de la
    práctica A de la sesión 11), =series= (actividad 4 (html) de la práctica A de la sesión 7)»;
    «como el comando =corr= de la sesión 7)» → «como el comando =corr= de la actividad 2 (html) de
    la práctica A de la sesión 7)»; «=smpl --restrict= y =smpl full= (sesión 14)» → «(actividad 6
    (html) de la práctica A de la sesión 14)».
  - S25-B: «=summary --simple= y =printf= (sesión 7)» → «(sesión 7: actividad 2 (html) de la
    práctica C y actividad 4 (html) de la práctica A)»; =corr= como en S25-A; «(sesiones 11 a 18)» →
    «(sesiones 11 a 18: actividad 1 (html) de la práctica A de la sesión 11)»; «=critical= (sesión
    18)» → «(actividad 2 (html) de la práctica A de la sesión 18)».
  - S26-B: «=printf= (sesiones 4 y 7)» → «(sesiones 4 y 7: actividad 2 (html) de la práctica C y
    actividad 4 (html) de la práctica A de la sesión 7)»; «(sesiones 11 a 18)» como en S25-B.
  - S26-C: las mismas de S25-B, y «que da =critical= (sesión 18)» (Tabla 3) → «que da =critical=
    (actividad 2 (html) de la práctica A de la sesión 18)».
- S26-A, Act. 2: «es lo que la práctica A de la sesión 14 mostró» → «es lo que la práctica A de la
  sesión 14 (actividad 6 (html)) mostró». Act. 3: «pero el $17$ % de la sesión 25 pasa» → «pero el
  $17$ % de la sesión 25 (actividad 2 (html) de la práctica A) pasa».
- Títulos de transparencia entre comillas: el enlace va sobre el título, que se conserva, y el
  paréntesis que lo rodea queda: «La lección 15 ([``Previsión con y sin logaritmos''] ([html]))
  dejó» (S25-A, Act. 2), «La lección 15 ([``Cobb–Douglas…''] ([html])) presentó» (S25-B), «(lección
  15, [``Lo que cambia y lo que no''] ([html]))» y «(lección 15, [``Nivel-log…''] ([html]))» (S26-B,
  Act. 1 y 2), «(la lección 16, en [``Varias categorías…''] ([html]), hizo» (S25-B, Act. 2), «la
  media de grupo de la lección 16 ([``Una indicadora desplaza…''] ([html]))» (S26-A, Act. 3).
- El resto solo pone el enlace sobre «lección N», «Actividad N», «Tabla N» o sobre la expresión
  que remite («el contraste de Chow de la lección 16», «la cautela de la lección 16», «el $F$ de la
  lección 13», «el caso de la lección 13», «la tabla-diccionario con la que cerró la lección 9»).

**Criterios.**
- Destinos de comandos, los de los lotes anteriores (S22-D como modelo): =open= y =labels= →
  S04-A, act. 2; =summary --simple= → S07-C, act. 2; =printf= y =series= → S07-A, act. 4 (primer
  =series= de las prácticas); =corr= → S07-A, act. 2; =ols= y sus accesores → S11-A, act. 1;
  =smpl --restrict= y =smpl full= → S14-A, act. 6; =critical= → S18-A, act. 2. Los enlaces que ya
  había en las listas (=restrict=, =$test=, =$vcv=, =logs=) no se han tocado.
- Destinos en las lecciones: «el $F$ de la lección 13» con modelo restringido → «Restricciones
  lineales: modelos anidados», p. 13 (fórmula con $\mathrm{SRC}_r$); $F=t^2$ con $q=1$ y el modelo
  restringido por sustitución → «Tres restricciones sobre =hprice2=», p. 17 (segunda y tercera
  filas: «los dos regresores se funden en uno»); $F$ conjunto alto con $t$ pequeños → «Conjunto ≠
  individual», p. 19. Lección 16: las cautelas («entre barrios, no entre viviendas», diferencia bruta
  $6{,}35$ y $4{,}08$ con =rm= fijo) → «Con más regresores», p. 6; la cuenta de la varianza de una
  suma o diferencia con =$vcv= → «Varias categorías», p. 13, donde está la covarianza. Lección 15: el
  límite del $10$ % → «Cuatro formas», p. 5; las «Dos cautelas» de Cobb–Douglas están en la p. 15
  (al pie de la sección, antes de «Previsión»), y las cifras del modelo en la p. 14. Lección 9: la
  exogeneidad $E[U\mid\boldsymbol X]=\mathit 0$ → «El MCRL», p. 12 (corolario de la exogeneidad
  estricta).
- Una vez por apartado: no se enlazan S25-A «Hacer en Gretl el contraste de Chow de la lección 16»
  y «las mismas cifras que la lección» (objetivo 4), «=printf= (sesión 7)» (mismo destino que
  =series= en la lista), «la lección 16 obtuvo $6{,}35$…» (Act. 2, tras «Tres cautelas»), «Las
  previsiones en dólares, como en la lección 15» (Act. 2), la segunda mención de «Interacciones…»
  (Act. 3), «las cifras de la lección 16» y «la colinealidad … que la lección 16 explicó» (Act. 4,
  mismo destino que «Chow»); S25-B «=series= (sesión 7)» (mismo destino que =printf=) y «el $F$ de
  la lección 13» (Act. 3); S26-A, nota del Cierre, «la descomposición … de la lección 9» (misma
  recapitulación ya enlazada).
- Remisiones generales sin enlace: «las herramientas de las lecciones 15 y 16» (S25-A), «las
  herramientas de las lecciones 13, 15 y 16» (S26-B), «que es geometría de la lección 10» (S26-A,
  Descripción), «Las lecciones 3 a 8 … Las lecciones 9 a 12» (S26-A, Cierre), la lista de reglas de
  la Descripción de S26-C («(lección 12)», «(lecciones 15 y 16)», «(lección 10)», «(lecciones 7 y
  16)», «(lecciones 12 y 13)», «(lección 9)»), «Las lecciones 10, 15 y 16 del curso» (S26-C, Para
  profundizar), «la regresión simple de la lección 8» (S26-B, Act. 4), «la colinealidad de la
  lección 14» (S25-A, respuesta 6), «como =lprice= en la lección 15» (S25-A, Act. 1: nombre de una
  variable, no un resultado).

**Dudas, sin tocar.**
- =open= sin enlace en S25-B («=open= (sesión 4)»), S26-B y S26-C («=open= (sesión 4)»): se presenta
  en la Descripción de S04-A, que no tiene ancla (como en el lote 3). En S25-A va con =labels= y se
  enlaza a S04-A, act. 2, como en S22-D.
- S26-A, lista de comandos: «Los demás ya se han usado: =open=, =series=, =ols= y sus accesores
  (=$uhat=, =$sigma=, =$coeff=, =$stderr=, =$nobs=), =summary --simple=, =smpl --restrict= y =smpl
  full=, =printf=, y las funciones =sum=, =min=, =max=, =mean= y =median=.» No cita ninguna sesión,
  y añadir las nueve o diez referencias es redactar, no enlazar. Sin cambio; si se quiere, los
  destinos son los de «Criterios», más =$uhat= (S14-D act. 4) y =$sigma= (S18-A act. 2).
- «El supuesto de exogeneidad de la lección 9» (S25-B Act. 4, S26-B Act. 5, S26-C respuesta 5): la
  lección 9 presenta la exogeneidad estricta como corolario de cómo se define $U$, no como supuesto
  («No la enumeramos entre los supuestos porque no hay nada que suponer»). Enlazado a «El MCRL»,
  p. 12; la palabra «supuesto» no se ha cambiado. La lección 15 dice lo mismo («exige el supuesto de
  exogeneidad de la lección 9»).
- S25-A, objetivo 2: «la cautela de la lección 16» se ha enlazado a «Con más regresores» (p. 6,
  «entre barrios, no entre viviendas»); podría ser también «Qué dice y qué no dice el coeficiente
  de una indicadora» (p. 19).
- S26-A, Act. 1: «(lección 10)» tras «la proyección de $\boldsymbol y$ sobre el subespacio generado
  por las columnas de $\boldsymbol{\mathsf X}$» enlazado a «La geometría es la misma» (p. 3, «El
  vector ajustado es la proyección ortogonal»); la lección 10 no tiene una sección propia para ese
  enunciado.
- S26-A, respuesta 5: «que lo estime sin sesgo es la lección 11»: la lección 11 demuestra la
  insesgadez de $\hat\beta_2$, no la de la media muestral. Sin enlace.
- S26-C, respuesta 4: «pero no es una cantidad económica (lección 16)»: la lección 16 no tiene una
  sección sobre la constante; sin enlace.
- S26-C, Descripción: «antes de leer ``Lo que debe observar'' y compárelo después con el párrafo
  modelo de la sección ``Respuestas''»: secciones de la propia práctica sin ancla. Sin enlace.
- S26-B, Act. 2: «(lección 15, ``Nivel-log: la superficie de la vivienda'')» remite a la lectura de
  un modelo nivel-log, «dividiendo por $100$»; la sección se enlaza tal cual.
- Atribuciones de sesión que no coinciden con la primera aparición:
  - «=summary --simple= (sesión 7)» (S25-A, S25-B, S26-C) y «(sesiones 4 y 7)» (S26-B): =summary= y
    =--simple= se presentan en S04-A, act. 3; se enlaza S07-C, act. 2, como en S22-D.
  - «=critical= (sesión 18)» (S25-B, S26-C): correcto (S18-A, act. 2), aunque S26-B lo atribuye a
    S25-B, act. 2 (enlace previo, no tocado).

**Comprobaciones.**
- Ningún fichero bloqueado (`.#…`) en `org-pract/` ni en `doc/prompts/` antes de escribir. Las 85
  sustituciones se hicieron con un guion que comprobó con `assert`, sobre el fichero recién leído,
  que cada cadena aparecía una sola vez, fuera de bloques de código, de `#+CAPTION:` y otras líneas
  `#+`, de títulos y de `* COMMENT`, y que todo enlace interno tenía su `:CUSTOM_ID:`; todo antes de
  escribir. Copia previa de los cinco `.org` en el directorio temporal de la sesión.
- `make` de PDF y HTML de las cinco prácticas: sin errores; en el log solo los avisos habituales
  (autoloads, projectile, depurador, aviso OpenBLAS de Gretl); ningún «file-locked».
- Número de páginas sin cambios: S25-A 11, S25-B 7, S26-A 9, S26-B 9, S26-C 9.
- Salidas de Gretl: los 23 `.txt` de las cinco prácticas son idénticos byte a byte a la copia previa.
- `comprobar-paginas.py org-pract/S*.org org-lessons/S*.org`: solo los 6 avisos previos (etiquetas
  «muestra» y «pdf» del apéndice en las lecciones 9 y 16). El enlace nuevo al apéndice («secciones 1
  a 4», p. 3) lo comprueba la herramienta y pasa.
- `#page=` a lecciones (pdftotext, buscando en cada página el texto citado): lección 9 pp. 8, 12, 14,
  19; lección 10 pp. 3, 11; lección 11 p. 4; lección 13 pp. 13, 17, 19; lección 14 p. 4; lección 15
  pp. 5, 6, 8, 9, 13, 14, 15, 17; lección 16 pp. 3, 6, 8, 13, 15, 17. Todos correctos.
- HTML de las cinco prácticas: todo `href="#…"` tiene su `id`, y las 83 anclas externas
  (`…html#ancla`) existen como `id` en el HTML de destino (comprobado por guion: 0 rotos).
- `git status`: cambian los cinco `.org` del lote y este fichero, además de lo que ya estaba sin
  commitear de los lotes 1 bis, 2 y 3.

### Dudas resueltas con el autor (sesión de revisión, desde el 23-11-2026)

- **«El $R^2$ nunca baja», lección 8** (duda del lote 2). La lección 8 sí lo dice, en los apuntes de
  «Una advertencia: el nombre /suma explicada/ es engañoso» (p. 13): la atribución de las prácticas
  era correcta. Decidido por el autor (opción a): enlazadas a la lección 8, p. 13, `#suma-explicada`,
  las cuatro menciones sin enlace (S14-A, Act. 5; S14-B, Descripción; S14-C, pregunta 1 y respuesta 1);
  corregida de p. 12 a p. 13 la de S14-B, Act. 4, y quitadas las comillas de su cita, que no era
  literal. A propuesta del autor, «propiedad puramente mecánica» pasa a «puramente algebraica» en la
  lección 8; por coherencia, también en S14-A (respuesta 3), S14-B (Act. 4) y la ficha del Plan.
  Recompilados la lección 8 (PDF, HTML, cuaderno, transparencias) y S14-A/B/C; páginas sin cambios
  (18, 13, 11, 10); los `.txt` de Gretl, idénticos; `comprobar-paginas.py`, solo los 6 avisos previos.
- **«los $w_i$ de la lección 7»** (S16-C, Act. 2 y Act. 3; duda del lote 2). La lección 7 no usa
  $w_i$; se definen en la lección 11, «$\hat\beta_2$: la misma fórmula, aplicada a variables
  aleatorias» (p. 6). Decidido por el autor (opción a): «los $w_i$ de la lección 11», con enlace a
  `#misma-formula`, en las dos frases. S16-C recompilada: 18 páginas, `.txt` idénticos.
- **«El supuesto de exogeneidad de la lección 9»** (lección 15, S25-B Act. 4, S26-B Act. 5, S26-C
  respuesta 5; duda del lote 4). La lección 9 la presenta como corolario para $U=Y-E[Y\mid X]$. El
  autor precisa (23-11): al no figurar entre los supuestos del MCRL, la exogeneidad hay que
  introducirla como supuesto adicional del modelo empírico concreto (todo lo que no está en el modelo
  debe ser ortogonal a las funciones de los regresores), y eso no estaba dicho en ningún sitio.
  Aplicado: párrafo nuevo en los apuntes de la lección 9, «Cuidado: Esta descomposición ortogonal no
  implica causalidad» (p. 16), con el error del modelo empírico escrito $V$; las cuatro frases dicen
  ahora «el supuesto de exogeneidad del modelo empírico (lección 9), $E[V\mid\boldsymbol X]=\mathit
  0$» (S26-C sin la fórmula), enlazan esa página (`#no-implica-causalidad`) y la lección 15 dice
  «sea ortogonal a las funciones de los factores» en vez de «no esté relacionado con». En S26-B se
  quita el segundo enlace al mismo destino del apartado. Regla en la Guía, sección 7. Recompiladas
  las lecciones 9 y 15 (PDF, HTML, cuaderno, transparencias) y las tres prácticas: páginas sin
  cambios (20, 20, 7, 9, 9), `.txt` idénticos, comprobaciones de páginas y anclas limpias.
- **Tres remisiones que sí están en las lecciones** (dudas de los lotes 2, 3 y 4). Enlazadas por
  decisión del autor: S26-A, respuesta 5, «que lo estime sin sesgo es la lección 11» → lección 11,
  «Varianza» (p. 15, `#varianza`: el modelo con solo la constante demuestra $\mathrm E(\bar x)=\mu$);
  S14-B, Apéndice, «convención fijada en la lección 10» → «El problema aritmético» (p. 5,
  `#problema-aritmetico`); S04-A, respuesta 2, «en la lección 15 (formas funcionales)» → «Lo que
  cambia y lo que no» (p. 17, `#lo-que-cambia`), y «anticipa exactamente» pasa a «anticipa».
  Recompiladas las tres prácticas: páginas sin cambios (8, 11, 9), `.txt` idénticos.
  En S04-A, respuesta 2, además (autor, opción a): «lo cual suele mejorar el ajuste lineal» pasa a
  «y convierte las diferencias en dólares en diferencias relativas, que suelen ser más parecidas
  entre zonas baratas y zonas caras», que es lo que dice la lección 15.
- **«como se explicó al cierre de la lección 8»** (S11-B, respuesta 5; duda del lote 3). El argumento
  no está en el cierre, sino en los apuntes de «En el caso de la regresión simple» (p. 15). Decidido
  por el autor (opción a): «como se explicó en la lección 8», con enlace a `#r2-correlacion`, y «se
  estudiará con detalle en la regresión múltiple, más adelante en el curso» pasa a «en la lección
  10», con enlace a «$R^2$ en regresión múltiple» (p. 13, `#r2-multiple`). S11-B recompilada.
- **«no es una cantidad económica (lección 16)»** (S26-C, respuesta 4; duda del lote 4). La lección
  16 no lo dice; dice el caso complementario (la constante es la media de la categoría base).
  Decidido por el autor (opción a, con su redacción): «pero no es una cantidad con interpretación
  económica. La tiene cuando el origen queda dentro de los datos: en la lección 16, con una
  indicadora como único regresor, la constante es la media de la categoría base», con enlace a «Una
  indicadora desplaza el intercepto: el río Charles» (p. 3, `#rio-charles`). S26-C recompilada.
- **«como veremos en la lección 6, se llama "recta de regresión"»** (S07-A, Act. 3, nota al pie; duda
  del lote 3). La recta se presenta en la lección 7 («Primera condición», p. 4) con el nombre del
  curso, «recta ajustada». Decidido por el autor (opción a): la nota dice «que es la recta ajustada de
  la lección 7, la "recta de regresión" de su curso de Estadística», con enlace a
  `#primera-condicion`. S07-A recompilada.
- **Anuncio de la lección 14 en S14-D, Act. 6** (duda del lote 2). Decidido por el autor (opción a):
  ancla nueva `exacta-y-de-grado` en la sección 2 de la lección 14, «Colinealidad exacta y
  colinealidad de grado» (p. 3), y el enlace de S14-D pasa a ella desde «Por qué son inestables los
  coeficientes». Lección 14 (18 páginas) y S14-D recompiladas.
- **Destinos en los que Opus dudó** (lotes 1 bis, 2, 3 y 4). Se dejan como están S14-B, Act. 2
  (`#r2-multiple`), S20-A, Act. 5 (`#sintomas`) y S25-A, objetivo 2 (`#mas-regresores`). Decidido por
  el autor (opción a), tres cambios: S07-B, Act. 3, nombra las dos desigualdades y enlaza cada una
  (lección 3, Cauchy–Schwarz p. 7 y triangular p. 10); S11-B, objetivo 2, enlaza las dos condiciones
  de la lección 7 («primera», p. 3, y «segunda», p. 4); S14-B, nota al pie del Apéndice, pasa de
  `#blue` a «Insesgadez» (lección 11, p. 11). Las tres prácticas recompiladas.
- **Sesiones atribuidas a los comandos** (dudas de los lotes 2, 3 y 4). Comprobadas contra los
  guiones: se dejan `summary --simple` «(sesión 7)» (S07-C lo presenta como nuevo), `$ess` en S11-D,
  `corr` en S14-B, la lista de S14-C y `critical` en S26-B. Decidido por el autor (opción a), dos
  añadidos en la lista de S07-C: la actividad 3 de S07-B, donde aparece `uniform`, y la actividad 5
  de S04-A para `boxplot` con una variable. S07-C recompilada.
- **`open` sin enlace y la lista de S26-A** (dudas de los lotes 3 y 4). Decidido por el autor (opción
  a): ancla nueva `descripcion` en «Descripción de la práctica» de S04-A (p. 2, donde se presenta
  `open`), y «`open` (sesión 4)» pasa a «`open` (Descripción de la práctica A de la sesión 4)» con
  enlace en S25-B y S26-C, las dos listas donde quedaba suelto. La lista de S26-A, sin remisiones,
  se deja como está. S04-A, S25-B y S26-C recompiladas.
- **Remisiones dentro de cursiva** (dudas de los lotes 2 y 3). Probado con la configuración del
  `makefile`: un enlace externo dentro de `/…/` no rompe la cursiva ni en HTML ni en LaTeX.
  Decidido por el autor (opción a), siete enlaces: S04-A actividad 3, a la actividad 4 de S07-A
  (p. 4) y a «La media: dos caras de la misma moneda» de la lección 4 (p. 4); S07-A Apéndice, a
  «Norma» de la lección 2 (p. 10, homogeneidad) y a «Traslación y escala» de la lección 5 (p. 11);
  S07-B actividad 1, al Apéndice de S07-A (p. 6); actividad 2, a «Ilustración geométrica de la
  correlación» de la lección 5 (p. 9); actividad 5, a la actividad 3 de S16-A (p. 4). Sin enlace
  nuevo, por estar ya enlazado el mismo destino en el apartado: «(lección 5)» y «Pitágoras de la
  lección 5» en S07-B actividad 1, y la identidad de la lección 7 en S11-A actividad 3. Sin enlace
  por ser remisiones generales: «la lección 6 plantea el problema y la lección 7 lo resuelve»
  (S07-B) y «lo que predice la lección 11» (S16-C). Las tres prácticas recompiladas.
- **Remisiones que no nombran su destino** (dudas de los lotes 2, 3 y 4). Decidido por el autor
  (opción a), seis cambios: S14-D actividad 2, «la siguiente actividad» pasa a «la Actividad 3»
  con enlace interno y ancla nueva `dos-lecturas`; S16-C actividad 2, «la próxima lección» pasa a
  «la lección 12» (p. 26, donde se responde con el teorema central del límite); S04-A actividad 5,
  «Más adelante (laboratorio integrador)» pasa a «En la práctica A de la sesión 26 (actividad 2)»,
  que es donde se tratan las observaciones influyentes; S04-B Descripción, «variables dicotómicas
  (lección 16) y en la práctica A de la sesión 25 (actividad 2)»; S07-C actividad 6 y «Para
  profundizar», el cuarteto de Anscombe «que veremos en la práctica D de la sesión 11 (actividad
  2)»; S11-D actividad 4, las cuatro empresas con enlace a la actividad 1 de S07-C. Las seis
  prácticas recompiladas.
- **Restos menores** (dudas de los lotes 1 bis, 2 y 4), corregidos sin consulta por ser de página o
  de formato: S11-D «Para profundizar», el enlace a la lección 8 entera pasa al formato doble con
  destino en «Una advertencia…» (p. 12, `#suma-explicada`); S20-A, «en la lección 15 veremos
  restricciones con contenido» pasa de la p. 13 a la p. 14, donde está el contraste de rendimientos
  constantes. Confirmado sin cambio: S04-A, «como haremos en la práctica B» va a la actividad 2 de
  S04-B, que es donde se escribe la ruta del fichero. S11-D y S20-A recompiladas.
- **Transparencia de la lección 9** («Cuidado: Esta descomposición ortogonal no implica
  causalidad»). Decía que «$U$ agrupa otros factores (gustos, necesidades)», lo que contradice el
  párrafo nuevo de sus apuntes (esos factores son $V$). Decidido por el autor (opción a): «…la Renta
  determina el Consumo y que el resto depende de otros factores (gustos, necesidades)», sin
  introducir $V$ en la transparencia. Lección 9 recompilada, mismas páginas.
- **Enlace desplazado en la lección 15** (l. 325, anterior a este encargo). «La lección 14 ya dijo,
  al comparar =nox= y =lnox=…» apuntaba a la p. 12 de la lección 14; la frase citada está en la
  p. 15 (apuntes de «Qué hacer»). Decidido por el autor (opción a): `#page=15`. Lección 15
  recompilada, mismas páginas.
- **Aviso al banco.** Decidido por el autor (opción a): `Encargo-2026-11-23-qbank-exogeneidad.md`,
  con la regla de exogeneidad ($U$ corolario, $V$ supuesto), la transparencia de la lección 9 y
  «algebraica» por «mecánica»; sin pedir preguntas nuevas.
