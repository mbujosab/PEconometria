# Encargo: auditoría de comprensión de las cuatro prácticas de la sesión 22 (colinealidad) (27-11-2026)

Trabaja en español. NO edites ninguna práctica, lección ni guion: solo lees y escribes un informe.

No abras ningún informe ni encargo anterior de `doc/prompts/` salvo este y el modelo de formato que
se cita al final. Esta lectura tiene que ser independiente de las anteriores.

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
en `org-pract/guiones/S22-Prct-*.inp`. Si una práctica tiene una sección «* COMMENT ...», no se
publica: ignórala.

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

La lección 14 se ha reescrito en buena parte entre el 19 y el 27 de noviembre (títulos de apartados,
nombres de las cosas, cifras que se muestran y cifras que se quitaron). Las prácticas son anteriores
y solo se les han actualizado los enlaces. Por eso, además de la lectura general, comprueba con
especial cuidado la coherencia de cada práctica con la lección 14 tal como está ahora.

Busca, en concreto:

1. Pasos que el texto da por sabidos y el alumno no sabe: un término, un símbolo, un comando o una
   opción de Gretl usados sin explicación ni remisión, o una remisión que no lleva a donde dice.
   Para cada remisión a una lección, a una práctica o al apéndice, abre el destino y comprueba que
   allí está lo que se le atribuye, con el mismo nombre (título del apartado o de la actividad) y la
   misma notación; comprueba también que el ancla del enlace HTML existe y que la página `#page=`
   del PDF es la del destino (los PDF compilados están junto a los `.org`).
2. Frases que no se entienden a la primera lectura: referentes sin antecedente claro («ello», «esa
   diferencia», «lo mismo», «los demás»), frases demasiado largas, afirmaciones que el alumno no
   puede comprobar con lo que tiene delante.
3. Saltos entre el código, la salida y el comentario: algo que el texto dice que se ve en la salida y
   no se ve (o se ve con otra cifra u otro rótulo); una línea de código que el texto no explica; una
   salida que nadie comenta; una cifra del texto que no coincide con la salida. Comprueba las cifras
   una a una contra los `.txt`, y recalcula las que el texto deriva de otras (cocientes, raíces del
   VIF, $1/(1-R_j^2)$, estadísticos $t$, cuadrados, porcentajes).
4. Coherencia con la lección 14 actual: el mismo objeto con el mismo nombre (por ejemplo «parte
   propia» de un regresor, «regresión auxiliar», «factor de inflación de la varianza (VIF)», los
   títulos de los apartados que las prácticas citan), las mismas cifras para los mismos modelos, y
   ninguna afirmación de una práctica que choque con lo que la lección dice (qué estadísticos
   dependen de la colinealidad y cuáles no, qué se puede hacer y qué no ante ella).
5. Contradicciones o incoherencias entre las cuatro prácticas (la misma cosa nombrada de dos
   maneras, la misma variable con dos nombres, una afirmación de una que choca con otra).
6. Errores de contenido: afirmaciones estadísticas, algebraicas, geométricas o econométricas falsas
   o imprecisas, e identidades enunciadas sin la condición bajo la que valen.
7. Sitios donde el alumno previsiblemente se atascará al ejecutar el guion en Gretl (orden de los
   bloques, variables que ya no existen, dependencia entre actividades, ficheros de datos que no
   están donde el guion los busca). Puedes ejecutar los guiones con `gretlcli -b` para comprobarlo,
   pero solo sobre una copia en un directorio temporal fuera del repositorio: no escribas nada en
   `org-pract/`. Las simulaciones sin semilla darán cifras distintas de las del texto; juzga
   entonces si lo que el texto afirma sigue siendo cierto con otra semilla.
8. Preguntas de interpretación y sus respuestas: si la pregunta se puede contestar con lo que la
   práctica ha dado, y si la respuesta contesta lo que se pregunta.

No hagas una revisión de estilo general ni propongas reescribir lo que se entiende. No propongas
cambios en las matemáticas de las lecciones. Sé estricto con lo que es un problema real para el alumno
y deja fuera las preferencias.

## Contexto para no señalar falsos problemas

- Audita los `.org`. El PDF y el HTML están compilados, pero la fuente es el `.org`.
- La práctica D usa un logaritmo y la A una simulación de Montecarlo; las dos cosas se han usado en
  prácticas anteriores. Comprueba dónde antes de señalarlo.
- Las prácticas anuncian lecciones posteriores (15 y 16). Este curso alguna no se imparte; esos
  anuncios se dejan como están.
- Las prácticas son tutoriales de Gretl: cada bloque de código va precedido de la descripción de sus
  comandos y seguido de su salida y de un «Lo que debe observar» con cifras. Un comando ya explicado
  en una práctica anterior puede ir solo con un enlace a esa actividad.
- Las reglas de redacción del curso están en `doc/prompts/GuiaDeEstilo.org`, por si quieres saber por
  qué algo está escrito de cierta manera. Algunas que afectan a estas prácticas: el curso no dice que
  un contraste o un intervalo sean «compatibles» con un valor; al leer una salida concreta se dice
  «se rechaza / no se rechaza al nivel α»; las hipótesis son sobre coeficientes, no sobre regresores;
  la constante es uno de los regresores («los demás regresores» la incluyen); la geometría (ángulo,
  proyección, ortogonal) se aplica a vectores de datos, no a listas de variables aleatorias;
  condicionar no es fijar; «muestra» son los datos y «muestra aleatoria» la lista de variables
  aleatorias; «media» es de los datos, «valor esperado» de una variable aleatoria; $\widehat\beta$
  debe decir en cada uso si es el estimador (variable aleatoria) o la estimación (número); el curso
  dice «$R^2$ ajustado» («corregido» solo como rótulo de Gretl); los grados de libertad son «del
  residuo» y «del ajuste», nunca «del modelo»; «Montecarlo» va en una palabra; el texto no usa
  lenguaje coloquial ni personifica; una ecuación estimada se escribe con los errores estándar bajo
  los coeficientes. Un incumplimiento de estas reglas sí es un hallazgo (leve, salvo que confunda).

## Qué entregas

Escribe el informe en `doc/prompts/Informe-2026-11-27-auditoria-comprension-S22-sin-contexto.org`
(org-mode, en español). Modelo de formato: `doc/prompts/Informe-2026-11-18-auditoria-comprension-S18.org`
(mira solo su estructura). Contenido:

- Un párrafo inicial con el estado leído y la lista de lo comprobado de forma sistemática sin
  hallazgo (cifras cotejadas, enlaces seguidos, guiones ejecutados), para que se sepa qué se ha
  mirado.
- Un apartado «Veredicto»: para cada práctica, si un alumno la entiende sola y cuál es el obstáculo
  principal si lo hay; y el recuento de hallazgos por gravedad.
- Después, los hallazgos por práctica (A, B, C, D), numerados A-1, A-2, …, y un apartado final de
  incoherencias entre prácticas y con la lección 14. Cada hallazgo con: gravedad (grave = el alumno
  no puede seguir o aprende algo falso; media = se atasca o malentiende; leve), el fichero y la
  línea, la frase o el código citados literalmente, por qué es un problema para ese alumno, qué has
  comprobado, y una corrección concreta propuesta en una o dos frases.
- Ordena los hallazgos de cada práctica de más a menos grave. Distingue siempre lo que has comprobado
  (una cifra cotejada contra la salida, un comando buscado en las prácticas anteriores) de lo que es
  una apreciación tuya.

Al terminar, resume en el chat: el veredicto por práctica, el número de hallazgos por gravedad y los
graves y medios en una línea cada uno, con fichero y línea.

## Aplicado

(Lo rellena quien ejecute el encargo: fecha, quién, fichero del informe y recuento de hallazgos.)

- Fecha: 2026-11-27.
- Quién: agente Opus sin contexto.
- Informe: `doc/prompts/Informe-2026-11-27-auditoria-comprension-S22-sin-contexto.org`.
- Recuento: 0 graves, 7 medios (A-1, A-2, B-1, B-2, C-1, C-2, C-3), 15 leves (6 en A, 5 en B,
  2 en C, 2 en D) y 1 incoherencia leve entre prácticas (I-1); el apartado final remite además a
  tres hallazgos ya contados que afectan a la lección 14 (C-1, C-3, A-2).
- Guiones ejecutados con `gretlcli -b` (Gretl 2022c) sobre copias fuera del repositorio: salidas
  idénticas a los `.txt`. No se ha editado ninguna práctica, lección ni guion.

27-11-2026, decisiones del autor sobre los dos informes (el del agente y la pasada con contexto de Fable, `Informe-2026-11-27-auditoria-S22-con-contexto.org`), tomadas de una en una para los medios y por bloques para los leves, y aplicadas por Fable. Medios: (1) B, respuesta 5: `restrict` con coeficientes enteros, `100*b[nox] + 18*b[lnox] = c`, con aviso de que Gretl en español no lee bien un decimal dentro de `restrict` (comprobado con Gretl 2022c: con `0.18` da F = 0,034; con enteros, 53,8); fuera $a^\top Va$. (2) C: el coche típico pasa de 300 semanas y 40 mil millas a 300 semanas y 45 mil millas (guion, `prediccion.txt`: 1 472,5 con error estándar 37,4; actividad 6, pregunta 4 y respuesta 4, con $-155\cdot(10-45)=+5\,412$); lección 14, l. 403, «siete veces» → «diecinueve veces». (3) C, l. 391: el error estándar es la dispersión del valor ajustado, con remisión a la columna `var(b2+b3)` de la actividad 1 de la práctica A y aviso sobre la perturbación de un coche concreto; pregunta 4, «estimar el coste medio de los coches de…». (4) B, respuesta 4: `nox` no puede cambiar con su logaritmo fijo; «mal interpretado»; respuesta 3, «la misma magnitud, una en niveles y otra en logaritmos». (5) A, objetivo 2 y l. 196: lo que no cambia con ρ es el residuo. (6) A, l. 127 y 194: la correlación de los vectores sorteados no es ρ; por eso el VIF es 5,7 y no 5,3 (opción de texto; el guion no se toca; la opción de construir los regresores con correlación exacta se descartó). (7) C, l. 216, y B, l. 187: «si tuvieran correlación cero» / «si no compartiera variación con los demás regresores», en lugar de «si estuviera solo». (8) C, actividad 6: «El regresor al que se le ha quitado la parte compartida es `age`; `miles` entra entero», y un `printf` que imprime la pendiente 7,43 (`ortogonal.txt` gana una línea). (9) C, actividad 4: párrafo de «Lo que debe observar» reescrito (decisiones con nivel, F de significación conjunta comentado, última frase sin «la pareja» ni «el reparto»). Leves: aplicados todos los propuestos en A (12), B (11), C (15) y D (8), más «grados de libertad del residuo» en B y D; «el mundo artificial» de A se deja. Enlaces: páginas de «Qué hacer» corregidas (A 198 → 16, A 314 → 15, B 352 → 15); los cuatro enlaces a la actividad 2 de la práctica A pasan a `#page=4` (lección 14, S20-A, S22-B, S22-C), porque la actividad se movió de página; anclas nuevas `misma-cuenta-sin-lnox` (B, actividad 4) y `partes-propias-ee` (C, actividad 3). Compilado: A 9 páginas, B 9, C 13, D 11, lección 14 en 18 con los mismos saltos, S20-A 13; salidas de Gretl idénticas salvo `prediccion.txt` y `ortogonal.txt` de C. Aviso al banco: `Encargo-2026-11-27-qbank-S22.md`. Sin commitear ni desplegar.
