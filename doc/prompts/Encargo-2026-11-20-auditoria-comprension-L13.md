# Encargo: auditoría de comprensión de la lección 13 (contraste $F$) (20-11-2026)

Trabaja en español. NO edites ninguna lección ni práctica: solo lees y escribes un informe.

## Qué hay que auditar

La lección 13, entera:

- `org-lessons/S19-Lecc13.org` (836 líneas).
- Sus tres figuras, que el alumno ve en el documento: `org-lessons/img/S19-Lecc13/TrianguloF_ancho.png`,
  `ProyeccionYTriangulo.png` y `ProyeccionAnidada.png`. Ábrelas. El código que las genera está en
  `org-lessons/img/S19-Lecc13/figuras-S19-Lecc13.org`.

Cada apartado del `.org` tiene dos capas. El texto bajo el encabezado de primer nivel (`* Título`)
son los apuntes: la explicación completa que el alumno lee por su cuenta. El texto bajo el encabezado
de tercer nivel con el mismo título (`*** Título`) es la transparencia: el guion que el profesor
proyecta y comenta en clase. Audita las dos capas, y también las doce preguntas de repaso con sus
respuestas (líneas 536–822). La sección final «* COMMENT ipynb y slides» no se publica: ignórala.

La lección se ha reescrito por partes entre el 17 y el 20 de noviembre. Lee toda la lección con el
mismo cuidado, pero comprueba además, para cada una de estas zonas tocadas el 19 y el 20, que encaja
con el texto que la rodea, con su transparencia y con las preguntas de repaso que tratan lo mismo:
líneas 41–45, 66, 98–125, 144–152, 179, 210–226, 245–258, 296–302, 320, 348–354, 395–403 y 811.
El 20-11 se cambió también una frase del apéndice (`org-lessons/Apendice-geometria.org`, línea 344).

## La pregunta

¿Entenderá un estudiante esta lección leyendo los apuntes por su cuenta, de principio a fin?

Lee como ese estudiante: segundo o tercer curso de un grado de Economía, ha seguido el curso hasta la
lección 12 inclusive (contraste $t$, intervalo de confianza, lectura de una tabla de resultados) y ha
hecho las prácticas hasta la sesión 18. NO ha hecho las prácticas de la sesión 20 (las del contraste
$F$) ni ha visto la lección 14 (colinealidad). No conoce la jerga econométrica más allá de lo que el
curso le ha dado.

Lo que el curso le ha dado está en `org-lessons/` (`S01-Lecc01.org` a `S17-Lecc12.org`; las más
citadas desde la lección 13 son la 8, la 10, la 11 y la 12) y en el apéndice
`org-lessons/Apendice-geometria.org`, al que la lección remite para las demostraciones. Cuando la
lección diga «la lección N», «como se vio» o remita a un apartado del apéndice, abre ese fichero y
comprueba que allí está lo que se le atribuye, con el mismo nombre y la misma notación. Consulta esos
ficheros siempre que necesites saber si un término o un símbolo ya se le ha explicado, en lugar de
suponerlo.

Busca, en concreto:

1. Pasos que el texto da por sabidos y el alumno no sabe: un término o un símbolo usados sin
   definición ni remisión, o una remisión que no lleva a donde dice o que atribuye a otra lección
   algo que esa lección no dice.
2. Frases que no se entienden a la primera lectura: referentes sin antecedente claro («ello», «esa
   diferencia», «lo mismo», «el bloque»), frases demasiado largas, afirmaciones que el alumno no
   puede comprobar con lo que tiene delante, identidades enunciadas sin la condición bajo la que
   valen.
3. Errores de contenido: afirmaciones estadísticas, algebraicas o geométricas falsas o imprecisas.
   Rehaz cada derivación paso a paso (las igualdades del $F$ en términos de sumas de cuadrados, de
   $R^2$ y de longitudes; los grados de libertad de cada vector; el caso de una sola restricción y
   su relación con el $t$; lo que se afirma del $R^2$ ajustado). Di en el informe cuáles has
   rehecho.
4. Cifras. Recalcula cada número de la lección a partir de los demás que la lección da ($F$ desde
   $R^2$, desde las sumas de cuadrados y desde los $t$; valores críticos y valores $p$; $R^2$
   ajustados) y cotéjalo con las salidas de Gretl de los mismos modelos, que están en
   `org-pract/S20-Prct-A-hprice2-restricciones/`, `org-pract/S18-Prct-A-hprice2-inferencia/` y
   `org-pract/S22-Prct-B-hprice2-vif/` (ficheros `.txt`). Si para una cifra no encuentras salida,
   dilo; no la des por buena ni por mala.
5. Figuras frente a texto: que cada punto, vector, ángulo y rótulo que el texto nombra esté en la
   figura con ese mismo rótulo, que lo que el texto dice que se ve se vea, y que la figura no
   muestre nada que el texto no explique.
6. Incoherencias internas: entre los apuntes y su transparencia (una dice algo que la otra
   contradice, o la transparencia usa un símbolo que los apuntes no definen), entre apartados (la
   misma cosa nombrada de dos maneras, la misma cantidad con dos símbolos), y entre la lección y las
   lecciones 8, 10, 11 y 12 o el apéndice.
7. Preguntas de repaso y respuestas: si cada pregunta se puede contestar con lo que la lección ha
   dado; si la opción marcada como correcta lo es y es la única; si la explicación de la respuesta
   contesta lo que se pregunta y coincide con el texto actual de la lección (las preguntas se
   escribieron antes de los últimos cambios).

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
- Las demostraciones largas están en el apéndice a propósito. La lección distingue lo que demuestra
  de lo que enuncia (pregunta 12); que algo se enuncie sin demostración no es un hallazgo si se dice
  que se enuncia y se remite al sitio correcto.
- La lección anuncia lecciones posteriores (14 a 16). Este curso alguna no se imparte; esos anuncios
  se dejan como están.
- Las reglas de redacción del curso están en `doc/prompts/GuiaDeEstilo.org`, por si quieres saber por
  qué algo está escrito de cierta manera. Algunas que afectan a esta lección: el curso no dice que un
  contraste o un intervalo sean «compatibles» con un valor, ni enuncia las decisiones de un contraste
  de forma tajante; las hipótesis son sobre coeficientes, no sobre regresores; «grados de libertad»
  es la dimensión del subespacio donde está el vector, y se dice «del residuo» ($n-k$) y «del
  ajuste» ($k-1$); la esperanza condicional se escribe en cursiva, $E[\cdot\mid\mathbf X]$, y la no
  condicional en redonda, $\mathrm E(\cdot)$; el curso dice «$R^2$ ajustado» y reserva «corregido»
  para el rótulo de la salida de Gretl; $\widehat\beta$ debe decir en cada uso si es el estimador
  (variable aleatoria) o la estimación (número). Un incumplimiento de estas reglas sí es un hallazgo
  (leve, salvo que confunda).

## Qué entregas

Escribe el informe en `doc/prompts/Informe-2026-11-20-auditoria-comprension-L13.org` (org-mode, en
español). Modelo de formato: `doc/prompts/Informe-2026-11-19-auditoria-comprension-L14.org` (mira solo
su estructura). Contenido:

- Un apartado «Veredicto»: si un alumno entiende la lección sola, los obstáculos principales si los
  hay, y el recuento de hallazgos por gravedad.
- Un apartado «Hallazgos», ordenados de más a menos grave y numerados (G1…, M1…, L1…). Gravedad:
  grave = el alumno no puede seguir o aprende algo falso; media = se atasca o malentiende; leve.
  Cada hallazgo con: las líneas, la frase o la fórmula citadas literalmente, por qué es un problema
  para ese alumno, qué has comprobado (la cuenta rehecha, la salida cotejada, el fichero y la línea
  de la lección anterior consultada) y una corrección concreta propuesta en una o dos frases.
  Distingue siempre lo comprobado de lo que es una apreciación tuya.
- Un apartado «Comprobado sin hallazgo»: la lista de derivaciones rehechas, cifras cotejadas y
  remisiones seguidas que han resultado correctas, para que se sepa qué se ha mirado.

Al terminar, resume en el chat: el veredicto, el número de hallazgos por gravedad y los graves y
medios en una línea cada uno, con su línea del fichero.

## Aplicado

20-11-2026. Ejecutado por Fable en la sesión principal (no por un agente sin contexto). Informe en
`doc/prompts/Informe-2026-11-20-auditoria-comprension-L13.org`: 0 graves, 1 medio (l. 487), 14 leves.
No se ha editado ninguna lección ni práctica. Sin salida de Gretl para tres cifras (fila `lnox` de la
l. 420, covarianza de la nota de la l. 393 y la correlación 0,994); las tres son coherentes con las
demás.


20-11-2026, tarde. Ejecutado por segunda vez por un agente Opus sin contexto, sobre la lección ya
corregida con el primer informe. Informe en
`doc/prompts/Informe-2026-11-20-auditoria-comprension-L13-sin-contexto.org`: 0 graves, 3 medios
(l. 441, 87 y 374), 11 leves. Errata de este encargo que el agente detectó: las capas están descritas
al revés; en el `.org`, el texto bajo `* Título` es la transparencia y el texto bajo `*** Título` son
los apuntes.
