# Encargo: segunda auditoría de comprensión de las cuatro prácticas de la sesión 22 (colinealidad) (27-11-2026)

Trabaja en español. NO edites ninguna práctica, lección ni guion: solo lees y escribes un informe.
No hagas commits ni toques git.

No abras ningún otro informe ni encargo de `doc/prompts/` cuyo nombre contenga `S22` o `L14` (hay
una auditoría anterior de estas mismas prácticas, hecha hoy; sus hallazgos ya se han aplicado). Esta
lectura tiene que ser independiente de aquella. Los únicos ficheros de `doc/prompts/` que puedes
abrir son este encargo, `GuiaDeEstilo.org` y el modelo de formato que se cita al final.

## Qué hay que auditar

Las cuatro prácticas de Gretl de la sesión 22, que se imparten el jueves 3-12 en el laboratorio:

- `org-pract/S22-Prct-A-colinealidad-montecarlo.org`
- `org-pract/S22-Prct-B-hprice2-vif.org`
- `org-pract/S22-Prct-C-ramanathan-coches.org`
- `org-pract/S22-Prct-D-hprice1-tasacion.org`

Las salidas de Gretl que cada práctica incluye con `#+include:` están en los directorios
`org-pract/S22-Prct-A-colinealidad-montecarlo/`, `org-pract/S22-Prct-B-hprice2-vif/`,
`org-pract/S22-Prct-C-ramanathan-coches/` y `org-pract/S22-Prct-D-hprice1-tasacion/` (ficheros `.txt`
y `.png`). Léelas y abre las figuras: el alumno las ve en el documento. Los guiones completos están
en `org-pract/guiones/S22-Prct-*.inp`. La sección «* COMMENT Banco de preguntas de reserva» de cada
práctica no se publica: ignórala.

Las cuatro prácticas se han corregido hoy en muchos puntos y los cambios no están commiteados:
audita los ficheros tal como están en el directorio de trabajo, no la versión de git ni la web
publicada. Lee las cuatro prácticas enteras con el mismo cuidado, pero comprueba además, para cada
una de estas zonas tocadas, que la frase nueva es correcta, que se entiende, y que encaja con el
texto que la rodea, con el código y la salida de su actividad, y con las preguntas y respuestas que
tratan lo mismo:

- Práctica A, líneas 100, 102, 107, 127, 194, 196, 198, 276, 281, 289, 310, 312, 314 y 316.
- Práctica B, líneas 178, 187, 214, 247, 250–252, 286, 295, 324, 332, 336–337, 355, 357, 359 y 361.
- Práctica C, líneas 100, 102, 108, 114, 183, 216, 218, 221–223, 309, 348, 357, 366, 389, 395, 402,
  427, 437, 443–444, 462, 466 y 468.
- Práctica D, líneas 170, 179, 181, 218, 220, 257, 303, 353 y 369–370.
- Fuera de las prácticas: `org-lessons/S21-Lecc14.org`, líneas 294 y 403, y
  `org-pract/S20-Prct-A-hprice2-restricciones.org`, línea 495 (un enlace).

Entre los cambios hay tres que afectan a cifras o a código, y conviene rehacerlos:

1. Práctica C, actividad 6: el coche «típico» es ahora el de 300 semanas y 45 mil millas (antes 40).
   Comprueba que ese coche está entre los de la muestra (figura de la actividad 1, valores de
   `uhatAge`), que todas las cifras que dependen de él son las de `prediccion.txt` (en la actividad,
   en la pregunta 4, en la respuesta 4 y en la lección 14, línea 403: «diecinueve veces»), y que no
   queda ninguna mención del coche de 40 mil millas ni de sus cifras en las prácticas, en la lección
   14 ni en ningún otro `.org` de `org-lessons/` y `org-pract/`.
2. Práctica C, actividad 6: el guion imprime ahora la pendiente de `age` sobre `miles` (una línea
   nueva en `ortogonal.txt`). Comprueba que el texto que describe el bloque coincide línea a línea
   con el código y que la identidad que usa esa pendiente se cumple con las cifras a la vista.
3. Práctica B, respuesta 5: la restricción se escribe con coeficientes enteros,
   `100*b[nox] + 18*b[lnox] = c`. Ejecútala con `gretlcli` en español y comprueba qué contrasta y
   qué F da; comprueba también lo que el texto afirma de la versión con decimales.

## La pregunta

¿Entenderá un estudiante estas cuatro prácticas leyéndolas por su cuenta, en orden A, B, C, D?

Lee como ese estudiante: segundo o tercer curso de un grado de Economía, con poca base matemática,
ha seguido el curso hasta la lección 14 inclusive (contraste $t$, intervalo de confianza, contraste
$F$, colinealidad) y ha hecho las prácticas hasta la sesión 20. NO ha visto las lecciones 15 y 16
(logaritmos como herramienta general, variables ficticias). No conoce la jerga econométrica más allá
de lo que el curso le ha dado, no programa, y usa Gretl solo desde este curso.

Lo que el curso le ha dado está en `org-lessons/` (`S01-Lecc01.org` a `S21-Lecc14.org`; la lección de
esta sesión es `S21-Lecc14.org`, y el apéndice citado es `org-lessons/Apendice-geometria.org`) y en
las prácticas anteriores de `org-pract/` (S04 a S20). Consulta esos ficheros cuando necesites saber
si un término, un símbolo o un comando ya se le ha explicado, en lugar de suponerlo. En las lecciones,
el texto bajo `* Título` es la transparencia y el texto bajo `*** Título` son los apuntes.

Busca, en concreto:

1. Pasos que el texto da por sabidos y el alumno no sabe: un término, un símbolo, un comando o una
   opción de Gretl usados sin explicación ni remisión, o una remisión que no lleva a donde dice.
   Para cada remisión a una lección, a una práctica o al apéndice, abre el destino y comprueba que
   allí está lo que se le atribuye, con el mismo nombre y la misma notación. Comprueba todos los
   enlaces: que el ancla del HTML existe (`CUSTOM_ID` en el `.org` de destino) y que la página
   `#page=` del PDF es la del pasaje o la actividad citados (los PDF compilados hoy están junto a
   los `.org`; usa `pdftotext -f N -l N`). Hoy se han cambiado varias páginas de enlaces: los que
   van a «Qué hacer» de la lección 14 y los cuatro que van a la actividad 2 de la práctica A (ahora
   en la página 4), y se han añadido dos anclas (`misma-cuenta-sin-lnox` en B y `partes-propias-ee`
   en C). Comprueba también los enlaces que llegan a estas cuatro prácticas desde las lecciones y
   desde otras prácticas.
2. Frases que no se entienden a la primera lectura: referentes sin antecedente claro («ello», «esa
   diferencia», «lo mismo», «los demás», «la pareja»), frases demasiado largas, afirmaciones que el
   alumno no puede comprobar con lo que tiene delante.
3. Saltos entre el código, la salida y el comentario: algo que el texto dice que se ve en la salida y
   no se ve (o se ve con otra cifra u otro rótulo); una línea de código que el texto no explica; una
   salida que nadie comenta; una cifra del texto que no coincide con la salida. Comprueba las cifras
   una a una contra los `.txt`, y recalcula las que el texto deriva de otras (cocientes, raíces del
   VIF, $1/(1-R_j^2)$, estadísticos $t$, cuadrados, porcentajes, intervalos).
4. Coherencia con la lección 14: el mismo objeto con el mismo nombre («parte propia», «regresión
   auxiliar», «factor de inflación de la varianza (VIF)», los títulos de los apartados que las
   prácticas citan), las mismas cifras para los mismos modelos, y ninguna afirmación de una práctica
   que choque con lo que la lección dice (qué estadísticos dependen de la colinealidad y cuáles no,
   con qué se compara el error estándar al leer la raíz del VIF, qué se puede hacer y qué no).
5. Contradicciones o incoherencias entre las cuatro prácticas (la misma cosa nombrada de dos
   maneras, una afirmación de una que choca con otra), y dentro de cada una entre el cuerpo, las
   preguntas y las respuestas. Las correcciones de hoy han cambiado frases sueltas: busca los sitios
   donde la frase vecina, la pregunta o la respuesta siguen diciendo lo de antes.
6. Errores de contenido: afirmaciones estadísticas, algebraicas, geométricas o econométricas falsas
   o imprecisas, e identidades enunciadas sin la condición bajo la que valen.
7. Sitios donde el alumno previsiblemente se atascará al ejecutar el guion en Gretl (orden de los
   bloques, variables que ya no existen, dependencia entre actividades, ficheros de datos). Ejecuta
   los cuatro guiones con `gretlcli -b` sobre una copia en un directorio temporal fuera del
   repositorio (no escribas nada en `org-pract/`) y compara sus salidas con los `.txt`. Comprueba
   también que cada `.inp` coincide con los bloques de código de su `.org`.
8. Preguntas de interpretación y sus respuestas: si la pregunta se puede contestar con lo que la
   práctica ha dado, y si la respuesta contesta lo que se pregunta.

No hagas una revisión de estilo general ni propongas reescribir lo que se entiende. No propongas
cambios en las matemáticas de las lecciones. Sé estricto con lo que es un problema real para el alumno
y deja fuera las preferencias.

## Contexto para no señalar falsos problemas

- La práctica D usa una variable que vale 0 o 1 y la A una simulación de Montecarlo; las dos cosas
  se han usado o explicado en prácticas anteriores o en el propio texto. Comprueba dónde antes de
  señalarlo.
- En la práctica A, la correlación de los vectores sorteados (columna `corr`) no coincide con el ρ
  elegido, y por eso los VIF de su tabla no son los de la tabla de la lección 14. Es deliberado y el
  texto lo dice; no es un hallazgo, salvo que la explicación no se entienda. «El mundo artificial»
  se usa también en la práctica A de la sesión 16 y se deja.
- Las prácticas anuncian lecciones posteriores (15 y 16). Este curso alguna no se imparte; esos
  anuncios se dejan como están.
- Las prácticas son tutoriales de Gretl: cada bloque de código va precedido de la descripción de sus
  comandos y seguido de su salida y de un «Lo que debe observar» con cifras. Un comando ya explicado
  en una práctica anterior puede ir solo con un enlace a esa actividad. Los hiperenlaces solo van en
  la primera mención de cada destino dentro de un apartado.
- El guion completo añade a algunas órdenes opciones para guardar las salidas y los gráficos
  (`outfile`, `--output=`, `--plot=`); el texto lo dice. No es una discrepancia entre el `.inp` y el
  bloque que se muestra.
- Las reglas de redacción del curso están en `doc/prompts/GuiaDeEstilo.org`, por si quieres saber por
  qué algo está escrito de cierta manera. Algunas que afectan a estas prácticas: el curso no dice que
  un contraste o un intervalo sean «compatibles» con un valor; al leer una salida concreta se dice
  «se rechaza / no se rechaza al nivel α» («muy significativo» sin nivel se admite si el valor $p$
  es muy inferior a cualquier nivel habitual y el estadístico está a la vista); las hipótesis son
  sobre coeficientes, no sobre regresores; la constante es uno de los regresores («los demás
  regresores» la incluyen); la geometría (ángulo, proyección, ortogonal) se aplica a vectores de
  datos, no a listas de variables aleatorias; condicionar no es fijar; «muestra» son los datos y
  «muestra aleatoria» la lista de variables aleatorias; «media» es de los datos, «valor esperado» de
  una variable aleatoria; $\widehat\beta$ debe decir en cada uso si es el estimador (variable
  aleatoria) o la estimación (número); el curso dice «$R^2$ ajustado» («corregido» solo como rótulo
  de Gretl); los grados de libertad son «del residuo» y «del ajuste», nunca «del modelo»;
  «Montecarlo» va en una palabra; el texto no usa lenguaje coloquial ni personifica («el modelo
  cree», «los datos dicen», «el azar sube»); una ecuación estimada se escribe con los errores
  estándar bajo los coeficientes; los números que el texto nombra tienen que estar en la salida o
  figura a la que acompañan, o en la práctica o lección que cita. Un incumplimiento de estas reglas
  sí es un hallazgo (leve, salvo que confunda).

## Qué entregas

Escribe el informe en `doc/prompts/Informe-2026-11-27-auditoria-comprension-S22-segunda.org`
(org-mode, en español). Modelo de formato: `doc/prompts/Informe-2026-11-18-auditoria-comprension-S18.org`
(mira solo su estructura). Contenido:

- Un párrafo inicial con el estado leído (fecha y hora de los ficheros) y la lista de lo comprobado
  de forma sistemática sin hallazgo (cifras cotejadas, enlaces seguidos, guiones ejecutados, las
  tres comprobaciones de cifras y código pedidas arriba), para que se sepa qué se ha mirado.
- Un apartado «Veredicto»: para cada práctica, si un alumno la entiende sola y cuál es el obstáculo
  principal si lo hay; y el recuento de hallazgos por gravedad.
- Después, los hallazgos por práctica (A, B, C, D), numerados A-1, A-2, …, y un apartado final de
  incoherencias entre prácticas y con la lección 14. Cada hallazgo con: gravedad (grave = el alumno
  no puede seguir o aprende algo falso; media = se atasca o malentiende; leve), el fichero y la
  línea, la frase o el código citados literalmente, por qué es un problema para ese alumno, qué has
  comprobado, y una corrección concreta propuesta en una o dos frases. Marca con «(zona tocada
  hoy)» los hallazgos que caigan en las líneas listadas arriba.
- Ordena los hallazgos de cada práctica de más a menos grave. Distingue siempre lo que has comprobado
  (una cifra cotejada contra la salida, un comando buscado en las prácticas anteriores) de lo que es
  una apreciación tuya.

Al terminar, resume en el chat: el veredicto por práctica, el número de hallazgos por gravedad, los
graves y medios en una línea cada uno, con fichero y línea, y lo que no hayas podido comprobar.

## Aplicado

(Lo rellena quien ejecute el encargo: fecha, quién, fichero del informe y recuento de hallazgos.)

27-11-2026, Claude (Fable 5.2), sesión aparte. Informe en
`doc/prompts/Informe-2026-11-27-auditoria-comprension-S22-segunda.org`. Recuento: 0 graves, 1 medio
(B-1), 16 leves (5 en A, 3 en B, 6 en C, 2 en D) y 2 incoherencias leves entre prácticas. Nada
editado en prácticas, lecciones ni guiones; sin commits.

27-11-2026, decisiones del autor sobre el informe de la segunda auditoría (0 graves, 1 medio, 16 leves y 2 incoherencias), aplicadas por Fable: todas las correcciones propuestas, en bloque. Medio: B, respuesta 4, «el del modelo con `lnox` está mal interpretado…». A: la última columna de la tabla imprime porcentajes (`100*rechazos/R`, un decimal; `montecarlo.txt` cambia solo en esa columna); divisor de `mcov`; fuera «(mismos ejes)» del comentario del guion; cómo se calculan en el `printf` la varianza de la suma, la de la diferencia y el VIF; «su coeficiente se estima con precisión, como la suma» y «con poca precisión, como la diferencia». B: respuesta 5 con $c=0$, $F(1,502)=53{,}8$ y el fallo solo con punto decimal; $-1\,983$; enlace de la respuesta 2 de nuevo a `#page=14`; «si no compartiera variación con los demás regresores» en lugar de «sola». C: $-154{,}6\cdot(10-45)\approx+5\,412$; aviso de redondeo en la identidad con $7{,}43$; remisión a S14-B con su notación; «van de $-19$ a $28$ semanas (puede verlo con `summary uhatAge`)»; `df` explicado; «se predice un coste de reparaciones de…». D: la regresión de `dif` sobre la constante es el modelo restringido; «en una cantidad que, en promedio, no depende de la tasación ni de las características». C y D: «el primer / segundo / último recuadro» en lugar del nombre del bloque. Además, decisión del autor sobre lo que el agente no pudo comprobar: `assess` es «la tasación», sin decir de quién («el tasador» donde hacía falta un sujeto; «inmobiliaria» fuera de S22-D, de su título, de la lección 14 l. 421, de la portada y de las fichas del Plan). Compilado: A 9 páginas, B 9, C 13, D 11, lección 14 en 18 con los mismos saltos, portada regenerada. Sin commitear ni desplegar.
