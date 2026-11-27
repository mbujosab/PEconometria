# Encargo: auditoría de comprensión de la lección 14 (colinealidad) (27-11-2026)

Trabaja en español. NO edites ninguna lección ni práctica: solo lees y escribes un informe.

No abras ningún informe ni encargo anterior sobre la lección 14 que haya en `doc/prompts/` (los
ficheros cuyo nombre contiene `L14`, salvo este encargo). Esta lectura tiene que ser independiente
de las anteriores.

## Qué hay que auditar

La lección 14, entera:

- `org-lessons/S21-Lecc14.org` (797 líneas).
- Sus dos figuras, que el alumno ve en el documento: `org-lessons/img/S21-Lecc14/PartePropia_fila.png`
  y `ParalelogramoAplastado_fila.png`. Ábrelas. El código que las genera está en
  `org-lessons/img/S21-Lecc14/figuras-S21-Lecc14.org`.

Cada apartado del `.org` tiene dos capas. El texto bajo el encabezado de primer nivel (`* Título`)
es la transparencia: el guion que el profesor proyecta y comenta en clase. El texto bajo el
encabezado de tercer nivel con el mismo título (`*** Título`) son los apuntes: la explicación
completa que el alumno lee por su cuenta. Audita las dos capas, y también las preguntas de repaso
(líneas 497–669) con sus respuestas (líneas 670–783). La sección final «* COMMENT ipynb y slides» no
se publica: ignórala.

La lección se ha retocado por partes el 26 y el 27 de noviembre. Lee toda la lección con el mismo
cuidado, pero comprueba además, para cada una de estas zonas tocadas, que encaja con el texto que la
rodea, con su transparencia y con las preguntas de repaso que tratan lo mismo: líneas 46, 61–69, 88,
103–109, 129–151 (incluida la nota al pie de la línea 149), 197–215, 253–259, 290–294, 328–334, 353,
370–378, 390, 407–417, 438, 453, 488–492 y 613.

## La pregunta

¿Entenderá un estudiante esta lección leyendo los apuntes por su cuenta, de principio a fin?

Lee como ese estudiante: segundo o tercer curso de un grado de Economía, con poca base matemática
(no recuerda la trigonometría del bachillerato), ha seguido el curso hasta la lección 13 inclusive
(contraste $t$, intervalo de confianza, contraste $F$) y ha hecho las prácticas hasta la sesión 20.
NO ha hecho las prácticas de la sesión 22 (las de colinealidad) ni ha visto las lecciones 15 y 16.
No conoce la jerga econométrica más allá de lo que el curso le ha dado.

Lo que el curso le ha dado está en `org-lessons/` (`S01-Lecc01.org` a `S19-Lecc13.org`; las más
citadas desde la lección 14 son la 3, la 5, la 8, la 10, la 11, la 12 y la 13) y en el apéndice
`org-lessons/Apendice-geometria.org`, al que la lección remite para las demostraciones. Cuando la
lección diga «la lección N», «como se vio» o remita a un apartado del apéndice, abre ese fichero y
comprueba que allí está lo que se le atribuye, con el mismo nombre y la misma notación. Consulta esos
ficheros siempre que necesites saber si un término o un símbolo ya se le ha explicado, en lugar de
suponerlo.

La lección remite también a prácticas, anteriores (sesiones 14, 18 y 20) y posteriores (sesión 22),
que están en `org-pract/`. Cuando cite una actividad y diga lo que esa actividad hace o las cifras
que da, abre la práctica y comprueba que es así.

Busca, en concreto:

1. Pasos que el texto da por sabidos y el alumno no sabe: un término o un símbolo usados sin
   definición ni remisión, o una remisión que no lleva a donde dice o que atribuye a otra lección o
   práctica algo que no dice.
2. Frases que no se entienden a la primera lectura: referentes sin antecedente claro («ello», «ese
   factor», «lo mismo», «los demás»), frases demasiado largas, afirmaciones que el alumno no puede
   comprobar con lo que tiene delante (cifras que no están en ninguna tabla, figura o práctica
   citada), identidades enunciadas sin la condición bajo la que valen.
3. Errores de contenido: afirmaciones estadísticas, algebraicas o geométricas falsas o imprecisas.
   Rehaz cada derivación paso a paso (la definición de la parte propia y su ortogonalidad; el
   triángulo de la regresión auxiliar y la longitud de la parte propia con el seno; la nota al pie
   sobre seno, coseno y Pitágoras; el despeje de $\mathrm{SRC}_j$ y el VIF; la descomposición del
   error estándar en dos factores; la cuenta de las coordenadas en la figura del paralelogramo, con
   sus factores $1/\sin\theta$ y $\cos\theta$; lo que se afirma del signo de la covarianza entre los
   dos estimadores; la relación entre la norma euclídea y la estadística y el efecto de añadir
   observaciones; lo que se afirma de las restricciones). Di en el informe cuáles has rehecho.
4. Cifras. Recalcula cada número de la lección a partir de los demás que la lección da (longitudes,
   $R_j^2$, senos, ángulos, VIF y sus raíces, errores estándar, cocientes entre longitudes, la tabla
   de correlaciones y VIF, las coordenadas de la figura) y cotéjalo con las salidas de Gretl de los
   mismos modelos, que están en `org-pract/S22-Prct-B-hprice2-vif/`,
   `org-pract/S22-Prct-A-colinealidad-montecarlo/`, `org-pract/S22-Prct-C-ramanathan-coches/`,
   `org-pract/S20-Prct-A-hprice2-restricciones/` y `org-pract/S18-Prct-A-hprice2-inferencia/`
   (ficheros `.txt`), y con la tabla de apertura de la lección 13. Si para una cifra no encuentras
   salida, dilo; no la des por buena ni por mala.
5. Figuras frente a texto: que cada punto, vector, ángulo y rótulo que el texto o el pie nombran
   esté en la figura con ese mismo rótulo y color, que lo que el texto dice que se ve se vea, y que
   la figura no muestre nada que el texto no explique.
6. Incoherencias internas: entre los apuntes y su transparencia (una dice algo que la otra
   contradice, o la transparencia usa un símbolo que los apuntes no definen), entre apartados (la
   misma cosa nombrada de dos maneras, la misma cantidad con dos símbolos), y entre la lección y las
   lecciones anteriores o el apéndice.
7. Preguntas de repaso y respuestas: si cada pregunta se puede contestar con lo que la lección dice
   ahora; si la opción marcada como correcta lo es y es la única; si la explicación de la respuesta
   contesta lo que se pregunta y coincide con el texto actual de la lección (el 27-11 se suprimieron
   de los apuntes varias cifras y se recortó la opción 2 de la pregunta 8).

No hagas una revisión de estilo general ni propongas reescribir lo que se entiende. Si una
derivación es falsa o le falta un paso, señálalo con tu comprobación; no propongas reorganizar el
desarrollo matemático de la lección. Sé estricto con lo que es un problema real para el alumno y
deja fuera las preferencias.

## Contexto para no señalar falsos problemas

- Audita el `.org`. El PDF y el HTML de `org-lessons/` están compilados, pero la fuente es el `.org`.
- Las transparencias son escuetas a propósito: son el guion de la clase y la explicación completa
  está en los apuntes. Que una transparencia no explique algo no es un hallazgo si los apuntes del
  mismo apartado lo explican. Sí lo es que contradiga a los apuntes o use un símbolo que la lección
  no ha definido.
- Las demostraciones largas están en el apéndice a propósito. Que algo se enuncie sin demostración no
  es un hallazgo si se dice que se enuncia y se remite al sitio correcto.
- La lección anuncia lecciones y prácticas posteriores (lección 16, sesión 22). Este curso alguna no
  se imparte; esos anuncios se dejan como están.
- Los hiperenlaces solo van en la primera mención de cada destino dentro de un apartado, y las
  opciones de las preguntas de repaso no llevan enlaces. No es un hallazgo que una segunda mención
  vaya sin enlace.
- Las reglas de redacción del curso están en `doc/prompts/GuiaDeEstilo.org`, por si quieres saber por
  qué algo está escrito de cierta manera. Algunas que afectan a esta lección: el curso no dice que un
  contraste o un intervalo sean «compatibles» con un valor, ni enuncia las decisiones de un contraste
  de forma tajante («se rechaza / no se rechaza al nivel α» al leer una salida); las hipótesis son
  sobre coeficientes, no sobre regresores; la constante es uno de los regresores («los demás
  regresores» la incluyen); la geometría (ángulo, proyección, ortogonal) se aplica a vectores de
  datos, no a listas de variables aleatorias; «muestra» son los datos y «muestra aleatoria» la lista
  de variables aleatorias; $\widehat\beta$ debe decir en cada uso si es el estimador (variable
  aleatoria) o la estimación (número); el curso dice «$R^2$ ajustado»; «Montecarlo» va en una
  palabra; el texto no usa lenguaje coloquial ni personifica («el modelo cree», «los datos dicen»);
  los números que el texto nombra tienen que estar en la tabla o figura a la que acompañan, o en la
  práctica o lección que cita. Un incumplimiento de estas reglas sí es un hallazgo (leve, salvo que
  confunda).

## Qué entregas

Escribe el informe en `doc/prompts/Informe-2026-11-27-auditoria-comprension-L14-sin-contexto.org`
(org-mode, en español). Modelo de formato:
`doc/prompts/Informe-2026-11-20-auditoria-comprension-L13-sin-contexto.org` (mira solo su estructura).
Contenido:

- Un apartado «Veredicto»: si un alumno entiende la lección sola, los obstáculos principales si los
  hay, y el recuento de hallazgos por gravedad.
- Un apartado «Hallazgos», ordenados de más a menos grave y numerados (G1…, M1…, L1…). Gravedad:
  grave = el alumno no puede seguir o aprende algo falso; media = se atasca o malentiende; leve.
  Cada hallazgo con: las líneas, la frase o la fórmula citadas literalmente, por qué es un problema
  para ese alumno, qué has comprobado (la cuenta rehecha, la salida cotejada, el fichero y la línea
  de la lección o práctica consultada) y una corrección concreta propuesta en una o dos frases.
  Distingue siempre lo comprobado de lo que es una apreciación tuya.
- Un apartado «Comprobado sin hallazgo»: la lista de derivaciones rehechas, cifras cotejadas y
  remisiones seguidas que han resultado correctas, para que se sepa qué se ha mirado.

Al terminar, resume en el chat: el veredicto, el número de hallazgos por gravedad y los graves y
medios en una línea cada uno, con su línea del fichero.

## Aplicado

(Lo rellena quien ejecute el encargo: fecha, quién, fichero del informe y recuento de hallazgos.)

27-11-2026, agente Opus sin contexto. Informe: `doc/prompts/Informe-2026-11-27-auditoria-comprension-L14-sin-contexto.org`. Hallazgos: 0 graves, 2 medios (M1 l. 415, M2 l. 85/105/107), 12 leves (L1–L12). No se ha editado ninguna lección, práctica, figura ni guion.

27-11-2026, decisiones del autor sobre el informe (tomadas de una en una y aplicadas por Fable en `org-lessons/S21-Lecc14.org`; lección compilada, PDF en 18 páginas): M1 aplicado («en el modelo con las dos variables»); M2 aplicado (l. 105: «ese ángulo es el que el vector forma con su proyección ortogonal sobre el subespacio»); L1, se deja $0{,}9879$ y se añade «(con todos los decimales de $R_j^2$)»; L2, el $6^\circ$ se queda y los $800$ dólares se quitan; L3 a L12 aplicados con la corrección propuesta o una equivalente (L5 en los tres sitios; L9 con la condición «dados los valores de los demás regresores en esa observación»; L10 en la opción 2 de la pregunta 7 y en la recapitulación; L11 «Gretl tiene que omitir uno de ellos para estimar el modelo»). Cuatro recortes de pocas palabras para conservar los saltos de página (l. 109, 143, 149 y 407). El banco de preguntas no necesita aviso.
