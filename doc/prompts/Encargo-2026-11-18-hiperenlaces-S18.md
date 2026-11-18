# Encargo: hiperenlaces en las tres prácticas de la sesión 18 (18-11-2026)

Encargo de la sesión de revisión para una sesión con Opus. El autor, al leer la práctica B, ha visto
remisiones sin hiperenlace. Hay que completar los enlaces en las tres prácticas de la sesión 18, que se
imparten el 19-11. Trabajo mecánico: no se cambia el contenido.

Lea antes `doc/prompts/GuiaDeEstilo.org`, §4 («Toda remisión interna es un hiperenlace») y §8 («Cada
mención a otra práctica…»), y el encargo anterior del mismo tipo, con sus criterios en «Aplicado»:
`doc/prompts/Encargo-2026-11-11-hiperenlaces-L01-L07-L15-L16.md`. Este encargo aplica las mismas
reglas a tres prácticas.

## Ficheros

- `org-pract/S18-Prct-A-hprice2-inferencia.org`
- `org-pract/S18-Prct-B-regresor-disperso.org`
- `org-pract/S18-Prct-C-cobertura.org`

No toque ningún otro `.org` salvo para añadir un `:CUSTOM_ID:` que falte en una práctica o lección
citada (véase «Qué no hacer»). La sección «* COMMENT Banco de preguntas de reserva» no se toca.

## Qué hacer

1. **Menciones a otra práctica** (también a las otras dos de la misma sesión: «la práctica C», «como en
   la práctica A»): enlace doble, al PDF con `#page=N` y al HTML con el ancla de la actividad, con el
   formato que ya usan estas prácticas. Modelo, en S18-B:
   `[[https://mbujosab.github.io/PEconometria/Practicas-pdf/S18-Prct-C-cobertura.pdf#page=2][actividad 1]] ([[https://mbujosab.github.io/PEconometria/Practicas-html/S18-Prct-C-cobertura.html#cubre-95][html]])`.
   Si la mención es a la práctica entera y no a una actividad, enlace al PDF y al HTML sin `#page` ni
   ancla, como hace S18-A con «práctica C de esta misma sesión».
2. **Lista «Comandos nuevos de esta práctica»**: cada comando que se da por conocido se cita hoy con su
   sesión a secas («(sesión 16)», «las de las sesiones 4 y 7»). Regla de la Guía §9: «el comando se cita
   como ya usado, con enlace pdf+html a la actividad en que apareció». Busque con `grep` en
   `org-pract/` la práctica y la actividad en que el comando se presentó (su lista «Comandos nuevos» o
   su primera aparición en el código) y ponga el enlace doble. Si la sesión que dice el texto no es la
   de la primera aparición, no la corrija: anótelo en el informe.
3. **Remisiones a otra actividad de la misma práctica** («la Actividad 2 guardó…», «Compare con el de
   la Actividad 2», «el primer bloque de la Actividad 3», «Tras el Apéndice»): enlace interno
   `[[#ancla][Actividad 2]]` al `:CUSTOM_ID:` de esa actividad. Todas las actividades de A y de B tienen
   ancla; en C compruébelo y cree las que falten (nombre corto, minúsculas, sin acentos).
4. **Remisiones a una lección**: enlace doble al PDF (`Lecciones-pdf/SYY-LeccXX.pdf#page=N`) y al HTML
   (`Lecciones-html/SYY-LeccXX.html#ancla`) *solo* cuando se remite a un resultado concreto con sección
   propia y ancla en esa lección: «la figura de la lección 12», «la pregunta 10 de la lección 12», «la
   identidad de la lección 12», «los grados de libertad (lección 11)», «el triángulo de la lección 8»,
   «el panel izquierdo de su figura». Modelo, en la lección 13:
   `grep -n 'Lecciones-pdf/S' org-lessons/S19-Lecc13.org | head`. «La lección 12» citada como tema
   general y los anuncios hacia delante («la lección 13 presentará…») no se enlazan. Las preguntas de
   repaso de las lecciones solo están en el HTML: para «la pregunta 10 de la lección 12» basta el enlace
   al HTML si el PDF no la tiene.
5. **Una vez por actividad**: dentro de una misma actividad (o apartado de primer nivel) se enlaza la
   primera mención de cada destino; las siguientes van sin enlace. En «Preguntas de interpretación» y
   «Respuestas», cada pregunta o respuesta cuenta como un apartado propio.
6. **El enlace va sobre las palabras que remiten**; no añada títulos ni reescriba la frase más allá de
   lo imprescindible para colocar el enlace.

## Qué no hacer

- No cambiar ninguna frase, cifra, fórmula ni línea de código. Si para colocar un enlace hay que tocar
  la redacción, lo mínimo, y se anota en el informe (antes y después).
- No renombrar anclas existentes: otros documentos dependen de ellas.
- Ningún `:CUSTOM_ID:` puede coincidir, salvo mayúsculas, con el `#+NAME:` de un bloque del mismo
  fichero (rompe el noweb). Compruébelo antes de crear un ancla.
- Sin enlaces dentro de los pies de figura (`#+CAPTION:`) ni dentro de bloques de código.
- En `org-pract` el tanto por ciento se escribe `$5\%$`, sin `\,`.
- No commitear, no empujar, no desplegar.

## Comprobaciones

- Antes de escribir en un fichero, comprobar que no existe `org-pract/.#fichero` (el autor puede
  tenerlo abierto). Si existe, no escriba en él y dígalo.
- Las sustituciones, con un guion que haga `assert` de cada cadena sobre el fichero recién leído, todas
  antes de escribir.
- `make pract` desde la raíz del repositorio; en el log solo deben aparecer los avisos habituales de
  Emacs (autoloads, projectile). Si `make` dice «file-locked», avise.
- Las salidas de Gretl no deben cambiar: `git status` no debe mostrar cambios fuera de los `.org`
  tocados (las carpetas de salida están en `.gitignore`; compruebe que `org-pract/S18-Prct-*/` conserva
  las mismas cifras comparando un `.txt` antes y después).
- `python3 doc/tools/comprobar-paginas.py org-pract/S18-Prct-A-hprice2-inferencia.org org-pract/S18-Prct-B-regresor-disperso.org org-pract/S18-Prct-C-cobertura.org`:
  todos los `#page=` de prácticas correctos. Los `#page=` a PDF de lecciones no los comprueba esa
  herramienta: compruébelos con `pdftotext -f N -l N` contra el PDF de `org-lessons/`.
- En el HTML generado de cada práctica, todo `href="#…"` tiene su `id`; y cada ancla externa citada
  (`…html#ancla`) existe como `CUSTOM_ID` en el `.org` de destino.
- Si el número de páginas del PDF de alguna de las tres prácticas cambia, comprobar los `#page=` de
  los documentos que enlazan a ella (`grep -rn 'S18-Prct-' org-lessons org-pract`).

## Informe

Rellene el apartado «Aplicado» de este fichero con: por práctica, anclas creadas, número de enlaces
añadidos y la lista de frases tocadas (antes y después, con línea). Aparte, lo que haya dudado y no
haya tocado, y las atribuciones de sesión de los comandos que no coincidan con su primera aparición.

## Aplicado

Ejecutado el 18-11-2026 por una sesión con Opus. Nada commiteado, empujado ni desplegado.

**Resumen.** Cuentas en remisiones; cada enlace doble cuenta como uno.
- Práctica A: 7 enlaces a otras prácticas (6 en la lista de comandos y 1 en la Actividad 2, también de comando: la raíz de la suma de cuadrados de la sesión 7); 10 enlaces dobles a lecciones (7 a la lección 12, 2 a la 11, 1 a la 8) y 1 solo HTML a la pregunta 10 de la lección 12; 8 enlaces internos (3 en el texto de las actividades y 5 en las preguntas).
- Práctica B: 7 enlaces de comandos (uno de ellos sustituye al enlace existente a la práctica A entera por el de su Actividad 2) y 1 enlace nuevo a la práctica C entera; 7 enlaces dobles a lecciones (6 a la lección 12 y 1 a la 11) y 1 solo HTML a la pregunta 10; 7 internos.
- Práctica C: 4 enlaces de comandos y 4 a otras prácticas (B, Actividad 2; A, Actividad 2; A, Actividad 5, dos veces: en la pregunta 4 y en la respuesta 4); 7 enlaces dobles a la lección 12; 7 internos.

**Anclas creadas.**
- `org-pract/S18-Prct-C-cobertura.org`: `no-normales` (el Apéndice).
- `org-pract/S11-Prct-A-mco-simulado.org`: `bondad-ajuste` (Actividad 3, donde aparecen por primera vez `$coeff` y `$rsq` en el código).
- `org-pract/S07-Prct-A-hprice2.org`: `correlacion-coseno` (Actividad 4, primera aparición de `printf` y de la norma con `sqrt(sum(...))`).
- `org-pract/S04-Prct-B-boston.org`: `seccion-cruzada` (Actividad 3, primera aparición de `setobs`).
- `org-lessons/S17-Lecc12.org`: `pregunta-10` (pregunta de repaso 10, solo en el HTML).
Ninguna coincide con un `#+NAME:` de su fichero (comprobado por guion antes de escribir). No se ha renombrado ningún ancla. Ningún enlace en pies de figura ni en bloques de código. La sección «Banco de preguntas de reserva» no se ha tocado.

**Comprobaciones.**
- Ningún fichero bloqueado (`.#…`) en `org-pract/` ni en `org-lessons/` antes de escribir. Las 61 sustituciones se hicieron con un guion que verificó con `assert` que cada cadena aparecía exactamente una vez en el fichero recién leído, todas antes de escribir.
- `make pract`: sin errores; en el log solo los avisos habituales de Emacs (autoloads, projectile, depurador). Ningún «file-locked». Se recompilaron las tres prácticas de la sesión 18 y las tres que reciben un ancla nueva (S04-B, S07-A, S11-A).
- `make org-lessons/S17-Lecc12.html`: el HTML de la lección 12 contiene `id="pregunta-10"`. El PDF, el cuaderno y las transparencias de la lección 12 no se han regenerado (el `.org` solo cambia en el cajón de propiedades de una pregunta que solo va al HTML); el próximo `make lessons` los regenerará igual.
- Número de páginas sin cambios: S18-A 10, S18-B 8, S18-C 12, S04-B 6, S07-A 9, S11-A 10. Por eso no hace falta revisar los `#page=` de otros documentos que enlazan a ellas.
- Salidas de Gretl: los 21 `.txt` de `org-pract/S18-Prct-{A,B,C}-*/` (y los de S04-B, S07-A y S11-A) son idénticos byte a byte a los de antes. `git status` solo muestra los siete `.org` tocados.
- `comprobar-paginas.py` sobre las tres prácticas: «todos los #page= correctos».
- `#page=` a lecciones comprobados con `pdftotext`: lección 12 p. 4 (supuesto de normalidad), 8 (error estándar, «longitud del residuo por unidad…»), 13 (razón de catetos, la identidad), 15 (valor crítico y $n-k$), 19 (comienzo de «El intervalo de confianza»), 20 (figura 4 y equivalencia intervalo–contraste), 21 (panel izquierdo, lectura correcta, garantía del procedimiento), 22 (tabla de resultados, aviso terminológico), 24 («Significación… relevancia»), 26 (teorema central del límite); lección 11 p. 13 (varianza) y 17 (definición de grados de libertad y de $\mathfrak s$); lección 8 p. 3 (el triángulo).
- HTML de las tres prácticas: todo `href="#…"` tiene su `id` (el único aviso es la plantilla JavaScript `' + item.id + '` del tema, que no es un enlace). Toda ancla externa citada (`…html#ancla`) existe como `CUSTOM_ID` en el `.org` de destino y como `id` en su HTML compilado.

**Criterios aplicados.**
- Regla de «una vez por apartado» frente a la lista de comandos: la lista está dentro de «Descripción de la práctica», que ya enlazaba la Actividad 1 de S16-A (en A) y la Actividad 3 de S16-A (en C). Esas dos menciones de la lista quedan sin enlace: «=$df= (sesión 16)» en A y «actividad 3» (texto plano) en C.
- Los comandos se enlazan con la forma que ya usan S20–S26: «([[…][actividad N]] ([[…][html]]) de la práctica X de la sesión S)».
- Una remisión a la figura de la lección 12 sin nombrar la lección («el panel izquierdo de la figura» en B, Actividad 1; «el panel derecho» en B, Actividad 2) se enlaza porque es la primera mención de ese destino en la actividad; la mención explícita posterior de la Actividad 1 («la figura de la lección 12») queda sin enlace.
- «Para profundizar»: los títulos de sección de la lección 12 entre comillas se enlazan (pdf+html), porque son secciones con ancla.

**Dudas, sin enlazar.**
- Referencias generales o hacia delante a la lección 12 y la 13: «La lección 12 construyó tres herramientas», «las fórmulas de la lección 12», «las piezas de la lección 12» (A), «la lección 12 ya dividía por ese $1$» (A, Actividad 3), «Es el mecanismo de la lección 12» y «El aparato de la lección 12» (C), y todas las de la lección 13 («presentará», «usará», «explicará»).
- A, Actividad 2: «tal como se definió en la lección 4» (longitud euclídea del regresor en desviaciones; la lección 4 define la norma estadística, no la euclídea).
- A, respuesta 2: «(homogeneidad de la norma, lección 2)».
- B, pregunta 3: «qué cantidad de la lección 4» (es la pregunta misma; el enlace daría la respuesta).
- B, respuesta 1: «(lección 6)»; respuesta 3: «el objeto que la lección 4 definió y con el que la lección 5 construyó la desviación típica». Sí se enlaza, en esa respuesta, «la varianza de $\hat\beta_2$ de la lección 11».
- C, Descripción: «el valor de $\mathfrak s$ en aquella práctica» (la práctica B ya está enlazada en la frase anterior).
- C, Actividad 3: «las doce observaciones de las actividades anteriores» (plural, sin destino único).

**Atribuciones de sesión que no coinciden con la primera aparición** (no corregidas; el enlace va a la primera aparición en el código).
- A: `$ess` está atribuido a «prácticas de la sesión 11»: en el código aparece primero en S11-D, Actividad 2 (S11-A solo lo nombra en su lista de accesores). He enlazado S11-A, Actividad 3, donde aparecen `$coeff` y `$rsq`, y he reescrito «prácticas» como «práctica A» (véase la lista de frases).
- A: `$nobs` «sesiones 7 y 14»: se presenta como nuevo en S07-B, Actividad 1 (aparece antes en el Apéndice de S07-A). La sesión 14 no es primera aparición.
- A: `set seed` con `smpl n --random`, «sesión 16»: la combinación aparece en S16-B, Actividad 1, pero `set seed` solo es de S07-B, Actividad 1.
- A: `printf`, «sesión 7»: correcto para su presentación (S07-A, Actividad 4); `grep` lo encuentra antes en S04-A, pero solo en el bloque oculto `printf "%s", readfile(...)` añadido el 08-11.
- C: `$coeff`, «las de las prácticas A y B de hoy»: es de la sesión 11. `critical` y `$stderr` sí son de S18-A (Actividad 2).
- C: `smpl 1 12`, «de la sesión 14»: la sesión 14 (S14-A, Actividad 6) usa `smpl` con `--restrict` y `smpl full`; la forma con un rango de observaciones (`smpl 1 12`) no aparece en ninguna práctica anterior a S18-C.
- B: «=nulldata=, =setobs= y =printf=, los de las sesiones 4 y 7»: correcto (`setobs` S04-B, Actividad 3; `nulldata` S07-B, Actividad 1; `printf` S07-A, Actividad 4).

**Frases tocadas** (línea en el fichero nuevo; en las URL se omite `https://mbujosab.github.io/PEconometria/`). Las únicas con cambio de redacción, además de añadir el enlace, son: A L114 «prácticas de la sesión 11» → «práctica A de la sesión 11, …»; A L114 «sesiones 7 y 14)» → «sesiones 7 y 14: … de la práctica B de la sesión 7)»; las menciones «(sesión N)» de las listas de comandos, que pasan a «(… de la práctica X de la sesión N)»; B L113 «son los de la [[…][práctica A]] ([[…][html]]) de hoy» → «son los de la práctica A de hoy ([[…][actividad 2]] ([[…][html]]))»; C L126 «el regresor disperso de la práctica B, los parámetros» → «…de la práctica B, [[…][actividad 2]] ([[…][html]]), los parámetros» (comas, porque la frase ya va entre paréntesis).

### `org-pract/S18-Prct-A-hprice2-inferencia.org`
  - L114: «=$coeff=, =$ess= y =$rsq= (prácticas de la sesión 11)» → «=$coeff=, =$ess= y =$rsq= (práctica A de la sesión 11, [[Practicas-pdf/S11-Prct-A-mco-simulado.pdf#page=3][actividad 3]] ([[Practicas-html/S11-Prct-A-mco-simulado.html#bondad-ajuste][html]]))»
  - L114: «=$nobs= (sesiones 7 y 14)» → «=$nobs= (sesiones 7 y 14: [[Practicas-pdf/S07-Prct-B-verificacion-geometrica.pdf#page=2][actividad 1]] ([[Practicas-html/S07-Prct-B-verificacion-geometrica.html#vector-pequeno][html]]) de la práctica B de la sesión 7)»
  - L114: «pie de la tabla, sesión 14)» → «pie de la tabla, [[Practicas-pdf/S14-Prct-D-simulados-matricial.pdf#page=7][actividad 7]] ([[Practicas-html/S14-Prct-D-simulados-matricial.html#coordenadas-base-ortonormal][html]]) de la práctica D de la sesión 14)»
  - L114: «=$df= (sesión 16), =set seed= con =smpl n --random= (elegir al azar =n= observaciones, sesión 16), =smpl full= (volver a la muestra completa, sesión 14) y =printf= con sus formatos (sesión 7)» → «=$df= (sesión 16), =set seed= con =smpl n --random= (elegir al azar =n= observaciones, [[Practicas-pdf/S16-Prct-B-condicionar.pdf#page=2][actividad 1]] ([[Practicas-html/S16-Prct-B-condicionar.html#doce-viviendas][html]]) de la práctica B de la sesión 16), =smpl full= (volver a la muestra completa, [[Practicas-pdf/S14-Prct-A-ramanathan.pdf#page=8][actividad 6]] ([[Practicas-html/S14-Prct-A-ramanathan.html#quitar-viviendas][html]]) de la práctica A de la sesión 14) y =printf= con sus formatos ([[Practicas-pdf/S07-Prct-A-hprice2.pdf#page=4][actividad 4]] ([[Practicas-html/S07-Prct-A-hprice2.html#correlacion-coseno][html]]) de la práctica A de la sesión 7)»
  - L158: «las cuatro columnas de la lección 12, y conviene» → «[[Lecciones-pdf/S17-Lecc12.pdf#page=22][las cuatro columnas de la lección 12]] ([[Lecciones-html/S17-Lecc12.html#tabla-resultados][html]]), y conviene»
  - L183: «(raíz de la suma de cuadrados, sesión 7)» → «(raíz de la suma de cuadrados, [[Practicas-pdf/S07-Prct-A-hprice2.pdf#page=4][actividad 4]] ([[Practicas-html/S07-Prct-A-hprice2.html#correlacion-coseno][html]]) de la práctica A de la sesión 7)»
  - L226: «es la $\mathfrak s$ de la lección 11 dividida» → «es la $\mathfrak s$ de la [[Lecciones-pdf/S15-Lecc11.pdf#page=17][lección 11]] ([[Lecciones-html/S15-Lecc11.html#blue][html]]) dividida»
  - L226: «en desviaciones'' de la lección 12.» → «en desviaciones'' de la [[Lecciones-pdf/S17-Lecc12.pdf#page=8][lección 12]] ([[Lecciones-html/S17-Lecc12.html#error-estandar][html]]).»
  - L235: «La lección 12 demostró que, en un modelo lineal simple, el estadístico $t$ se calcula con los dos catetos del triángulo de la lección 8:» → «La [[Lecciones-pdf/S17-Lecc12.pdf#page=13][lección 12]] ([[Lecciones-html/S17-Lecc12.html#razon-catetos][html]]) demostró que, en un modelo lineal simple, el estadístico $t$ se calcula con los dos catetos [[Lecciones-pdf/S10-Lecc08.pdf#page=3][del triángulo de la lección 8]] ([[Lecciones-html/S10-Lecc08.html#triangulo-rectangulo][html]]):»
  - L243: «los escalares guardados en la Actividad 2.» → «los escalares guardados en la [[#tabla-a-mano][Actividad 2]].»
  - L293: «por sus grados de libertad (lección 11):» → «por sus grados de libertad ([[Lecciones-pdf/S15-Lecc11.pdf#page=17][lección 11]] ([[Lecciones-html/S15-Lecc11.html#blue][html]])):»
  - L295: «de la tabla de la Actividad 1. La lección 13» → «de la tabla de la [[#tabla-resultados][Actividad 1]]. La lección 13»
  - L340: «Es la equivalencia exacta de la lección 12:» → «Es [[Lecciones-pdf/S17-Lecc12.pdf#page=20][la equivalencia exacta de la lección 12]] ([[Lecciones-html/S17-Lecc12.html#intervalo-confianza][html]]):»
  - L349: «que la Actividad 2 guardó en» → «que la [[#tabla-a-mano][Actividad 2]] guardó en»
  - L381: «describió con el panel izquierdo de su figura:» → «describió con [[Lecciones-pdf/S17-Lecc12.pdf#page=20][el panel izquierdo de su figura]] ([[Lecciones-html/S17-Lecc12.html#intervalo-confianza][html]]):»
  - L389: «1. En la salida de la Actividad 1 aparecen» → «1. En la salida de la [[#tabla-resultados][Actividad 1]] aparecen»
  - L390: «2. En la Actividad 2 el error estándar» → «2. En la [[#tabla-a-mano][Actividad 2]] el error estándar»
  - L391: «3. La Actividad 3 mostró» → «3. La [[#identidad-F][Actividad 3]] mostró»
  - L392: «4. En la Actividad 4 el mismo dato» → «4. En la [[#restrict-valor][Actividad 4]] el mismo dato»
  - L393: «5. En la Actividad 5 el coeficiente» → «5. En la [[#doce-viviendas][Actividad 5]] el coeficiente»
  - L397: «en especial las secciones ``Cómo se lee una tabla de resultados'' y ``Significación estadística $\neq$ relevancia económica''.» → «en especial las secciones [[Lecciones-pdf/S17-Lecc12.pdf#page=22][``Cómo se lee una tabla de resultados'']] ([[Lecciones-html/S17-Lecc12.html#tabla-resultados][html]]) y [[Lecciones-pdf/S17-Lecc12.pdf#page=24][``Significación estadística $\neq$ relevancia económica'']] ([[Lecciones-html/S17-Lecc12.html#significacion-relevancia][html]]).»
  - L415: «Es la pregunta 10 de la lección 12, y la» → «Es la [[Lecciones-html/S17-Lecc12.html#pregunta-10][pregunta 10 de la lección 12]], y la»

### `org-pract/S18-Prct-B-regresor-disperso.org`
  - L100: «con una figura de dos paneles:» → «con [[Lecciones-pdf/S17-Lecc12.pdf#page=20][una figura de dos paneles]] ([[Lecciones-html/S17-Lecc12.html#intervalo-confianza][html]]):»
  - L104: «contrastar una hipótesis que /sabemos/ cierta, cosa imposible con datos reales, y preparar así la práctica C.» → «contrastar una hipótesis que /sabemos/ cierta, cosa imposible con datos reales, y preparar así la [[Practicas-pdf/S18-Prct-C-cobertura.pdf][práctica C]] ([[Practicas-html/S18-Prct-C-cobertura.html][html]]).»
  - L104: «en la Actividad 3, contrastar» → «en la [[#hipotesis-cierta][Actividad 3]], contrastar»
  - L113: «=$coeff= y =$rsq= (sesión 11) y =$df= (sesión 16); =$stderr=, =$sigma=, =critical= y =pvalue= son los de la [[https://mbujosab.github.io/PEconometria/Practicas-pdf/S18-Prct-A-hprice2-inferencia.pdf][práctica A]] ([[https://mbujosab.github.io/PEconometria/Practicas-html/S18-Prct-A-hprice2-inferencia.html][html]]) de hoy; =nulldata=, =setobs= y =printf=, los de las sesiones 4 y 7; la barra =\= al final de una línea, que indica que la instrucción continúa en la línea siguiente, la de la práctica B de la sesión 7;» → «=$coeff= y =$rsq= ([[Practicas-pdf/S11-Prct-A-mco-simulado.pdf#page=3][actividad 3]] ([[Practicas-html/S11-Prct-A-mco-simulado.html#bondad-ajuste][html]]) de la práctica A de la sesión 11) y =$df= ([[Practicas-pdf/S16-Prct-A-montecarlo.pdf#page=2][actividad 1]] ([[Practicas-html/S16-Prct-A-montecarlo.html#mundo-artificial][html]]) de la práctica A de la sesión 16); =$stderr=, =$sigma=, =critical= y =pvalue= son los de la práctica A de hoy ([[Practicas-pdf/S18-Prct-A-hprice2-inferencia.pdf#page=3][actividad 2]] ([[Practicas-html/S18-Prct-A-hprice2-inferencia.html#tabla-a-mano][html]])); =nulldata=, =setobs= y =printf=, los de las sesiones 4 y 7 ([[Practicas-pdf/S04-Prct-B-boston.pdf#page=2][actividad 3]] ([[Practicas-html/S04-Prct-B-boston.html#seccion-cruzada][html]]) de la práctica B de la sesión 4, [[Practicas-pdf/S07-Prct-B-verificacion-geometrica.pdf#page=2][actividad 1]] ([[Practicas-html/S07-Prct-B-verificacion-geometrica.html#vector-pequeno][html]]) de la práctica B de la sesión 7 y [[Practicas-pdf/S07-Prct-A-hprice2.pdf#page=4][actividad 4]] ([[Practicas-html/S07-Prct-A-hprice2.html#correlacion-coseno][html]]) de la práctica A de la sesión 7); la barra =\= al final de una línea, que indica que la instrucción continúa en la línea siguiente, la de la práctica B de la sesión 7 ([[Practicas-pdf/S07-Prct-B-verificacion-geometrica.pdf#page=4][actividad 3]] ([[Practicas-html/S07-Prct-B-verificacion-geometrica.html#relacion-conocida][html]]));»
  - L122: «los del regresando son los del panel izquierdo de la figura.» → «los del regresando son los del [[Lecciones-pdf/S17-Lecc12.pdf#page=20][panel izquierdo de la figura]] ([[Lecciones-html/S17-Lecc12.html#intervalo-confianza][html]]).»
  - L162: «La Actividad 2 cambia ese denominador.» → «La [[#disperso][Actividad 2]] cambia ese denominador.»
  - L169: «y el regresando es el del panel derecho.» → «y el regresando es el del [[Lecciones-pdf/S17-Lecc12.pdf#page=20][panel derecho]] ([[Lecciones-html/S17-Lecc12.html#intervalo-confianza][html]]).»
  - L171: «las mismas comparaciones que en la Actividad 1, con» → «las mismas comparaciones que en la [[#concentrado][Actividad 1]], con»
  - L276: «Lo que la lección 12 garantiza es» → «Lo que la [[Lecciones-pdf/S17-Lecc12.pdf#page=21][lección 12]] ([[Lecciones-html/S17-Lecc12.html#intervalo-confianza][html]]) garantiza es»
  - L313: «Es la pregunta 10 de la lección 12 con números:» → «Es la [[Lecciones-html/S17-Lecc12.html#pregunta-10][pregunta 10 de la lección 12]] con números:»
  - L315: «Compare este resultado con el de la Actividad 2.» → «Compare este resultado con el de la [[#disperso][Actividad 2]].»
  - L320: «2. En la Actividad 1, el intervalo» → «2. En la [[#concentrado][Actividad 1]], el intervalo»
  - L322: «4. En la Actividad 3 la hipótesis cierta» → «4. En la [[#hipotesis-cierta][Actividad 3]] la hipótesis cierta»
  - L323: «5. Tras la Actividad 4,» → «5. Tras la [[#cambio-unidades][Actividad 4]],»
  - L327: «secciones ``El error estándar, y el precio de estimar $\sigma$'' y ``El intervalo de confianza'', cuya figura» → «secciones [[Lecciones-pdf/S17-Lecc12.pdf#page=8][``El error estándar, y el precio de estimar $\sigma$'']] ([[Lecciones-html/S17-Lecc12.html#error-estandar][html]]) y [[Lecciones-pdf/S17-Lecc12.pdf#page=19][``El intervalo de confianza'']] ([[Lecciones-html/S17-Lecc12.html#intervalo-confianza][html]]), cuya figura»
  - L346: «en la varianza de $\hat\beta_2$ de la lección 11)» → «en [[Lecciones-pdf/S15-Lecc11.pdf#page=13][la varianza de $\hat\beta_2$ de la lección 11]] ([[Lecciones-html/S15-Lecc11.html#varianza][html]]))»

### `org-pract/S18-Prct-C-cobertura.org`
  - L100: «La lección 12 distinguió lo que» → «La [[Lecciones-pdf/S17-Lecc12.pdf#page=21][lección 12]] ([[Lecciones-html/S17-Lecc12.html#intervalo-confianza][html]]) distinguió lo que»
  - L113: «son las de la práctica A de la sesión 16; =critical=, =$coeff= y =$stderr=, las de las prácticas A y B de hoy; =randgen(X, 1)=, la de la práctica C de la sesión 16; =smpl 1 12=, que restringe la muestra a las observaciones 1 a 12, y =smpl full=, que la devuelve entera, los de la sesión 14.» → «son las de la práctica A de la sesión 16 (actividad 3 y [[Practicas-pdf/S16-Prct-A-montecarlo.pdf#page=5][actividad 4]] ([[Practicas-html/S16-Prct-A-montecarlo.html#abrir-replicas][html]])); =critical=, =$coeff= y =$stderr=, las de las prácticas A ([[Practicas-pdf/S18-Prct-A-hprice2-inferencia.pdf#page=3][actividad 2]] ([[Practicas-html/S18-Prct-A-hprice2-inferencia.html#tabla-a-mano][html]])) y B de hoy; =randgen(X, 1)=, la de la práctica C de la sesión 16 ([[Practicas-pdf/S16-Prct-C-sorpresas.pdf#page=2][actividad 1]] ([[Practicas-html/S16-Prct-C-sorpresas.html#tres-perturbaciones][html]])); =smpl 1 12=, que restringe la muestra a las observaciones 1 a 12, y =smpl full=, que la devuelve entera, los de la sesión 14 ([[Practicas-pdf/S14-Prct-A-ramanathan.pdf#page=8][actividad 6]] ([[Practicas-html/S14-Prct-A-ramanathan.html#quitar-viviendas][html]]) de la práctica A).»
  - L126: «el regresor disperso de la práctica B, los parámetros» → «el regresor disperso de la práctica B, [[Practicas-pdf/S18-Prct-B-regresor-disperso.pdf#page=2][actividad 2]] ([[Practicas-html/S18-Prct-B-regresor-disperso.html#disperso][html]]), los parámetros»
  - L239: «Esa es la razón de la lectura correcta de la lección 12:» → «Esa es la razón de [[Lecciones-pdf/S17-Lecc12.pdf#page=21][la lectura correcta de la lección 12]] ([[Lecciones-html/S17-Lecc12.html#intervalo-confianza][html]]):»
  - L246: «La lección 12 explicó por qué el estadístico» → «La [[Lecciones-pdf/S17-Lecc12.pdf#page=8][lección 12]] ([[Lecciones-html/S17-Lecc12.html#error-estandar][html]]) explicó por qué el estadístico»
  - L288: «con $504$, como en la práctica A, $t_c$» → «con $504$, como en la práctica A ([[Practicas-pdf/S18-Prct-A-hprice2-inferencia.pdf#page=3][actividad 2]] ([[Practicas-html/S18-Prct-A-hprice2-inferencia.html#tabla-a-mano][html]])), $t_c$»
  - L297: «al abrir el fichero de réplicas en la Actividad 1,» → «al abrir el fichero de réplicas en la [[#cubre-95][Actividad 1]],»
  - L388: «* Apéndice - ¿Y si las perturbaciones no son normales?» → «* Apéndice - ¿Y si las perturbaciones no son normales?
:PROPERTIES:
:CUSTOM_ID: no-normales
:END:»
  - L395: «Según la lección 12, la normalidad» → «Según la [[Lecciones-pdf/S17-Lecc12.pdf#page=4][lección 12]] ([[Lecciones-html/S17-Lecc12.html#supuesto-normalidad][html]]), la normalidad»
  - L395: «Repetimos la Actividad 3 con perturbaciones» → «Repetimos la [[#falsa-por-poco][Actividad 3]] con perturbaciones»
  - L471: «Lo dijo el final de la lección 12:» → «Lo dijo [[Lecciones-pdf/S17-Lecc12.pdf#page=26][el final de la lección 12]] ([[Lecciones-html/S17-Lecc12.html#significacion-relevancia][html]]):»
  - L475: «1. En la Actividad 1, la frecuencia» → «1. En la [[#cubre-95][Actividad 1]], la frecuencia»
  - L477: «3. En la Actividad 2, ¿por qué» → «3. En la [[#precio-sigma][Actividad 2]], ¿por qué»
  - L478: «4. En la Actividad 3, la cobertura» → «4. En la [[#falsa-por-poco][Actividad 3]], la cobertura»
  - L478: «los intervalos de la práctica A.» → «los intervalos de la práctica A ([[Practicas-pdf/S18-Prct-A-hprice2-inferencia.pdf#page=6][actividad 5]] ([[Practicas-html/S18-Prct-A-hprice2-inferencia.html#doce-viviendas][html]])).»
  - L479: «5. Tras el Apéndice:» → «5. Tras el [[#no-normales][Apéndice]]:»
  - L483: «secciones ``El intervalo de confianza'' y ``Por qué el valor crítico depende de $n-k$''.» → «secciones [[Lecciones-pdf/S17-Lecc12.pdf#page=19][``El intervalo de confianza'']] ([[Lecciones-html/S17-Lecc12.html#intervalo-confianza][html]]) y [[Lecciones-pdf/S17-Lecc12.pdf#page=15][``Por qué el valor crítico depende de $n-k$'']] ([[Lecciones-html/S17-Lecc12.html#valor-critico-nk][html]]).»
  - L505: «Es lo que se veía en la práctica A al pasar» → «Es lo que se veía en la práctica A ([[Practicas-pdf/S18-Prct-A-hprice2-inferencia.pdf#page=6][actividad 5]] ([[Practicas-html/S18-Prct-A-hprice2-inferencia.html#doce-viviendas][html]])) al pasar»
  - L507: «5. /Valores $p$ con muestra pequeña y perturbaciones asimétricas./ El Apéndice muestra» → «5. /Valores $p$ con muestra pequeña y perturbaciones asimétricas./ El [[#no-normales][Apéndice]] muestra»
