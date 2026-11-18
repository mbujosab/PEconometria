# Encargo: auditoría de comprensión de las tres prácticas de la sesión 18 (18-11-2026)

Trabaja en español. NO edites ninguna práctica ni lección: solo lees y escribes un informe.

## Qué hay que auditar

Las tres prácticas de Gretl de la sesión 18, que se imparten el 19-11 en el laboratorio:

- `org-pract/S18-Prct-A-hprice2-inferencia.org`
- `org-pract/S18-Prct-B-regresor-disperso.org`
- `org-pract/S18-Prct-C-cobertura.org`

Las salidas de Gretl que cada práctica incluye con `#+include:` están en los directorios
`org-pract/S18-Prct-A-hprice2-inferencia/`, `org-pract/S18-Prct-B-regresor-disperso/` y
`org-pract/S18-Prct-C-cobertura/` (ficheros `.txt` y `.png`). Léelas: el alumno las ve en el documento.
Los guiones completos están en `org-pract/guiones/S18-Prct-*.inp`. La sección
«* COMMENT Banco de preguntas de reserva» de cada práctica no se publica: ignórala.

## La pregunta

¿Entenderá un estudiante estas tres prácticas leyéndolas por su cuenta, en orden A, B, C?

Lee como ese estudiante: segundo o tercer curso de un grado de Economía, ha seguido el curso hasta la
lección 12 inclusive (contraste $t$, intervalo de confianza, lectura de una tabla de resultados) y ha
hecho las prácticas anteriores. NO ha visto la lección 13 (contraste $F$ de varias restricciones). No
conoce la jerga econométrica más allá de lo que el curso le ha dado, no programa, y usa Gretl solo
desde este curso.

Lo que el curso le ha dado está en `org-lessons/` (`S15-Lecc11.org` y `S17-Lecc12.org` son las
inmediatamente anteriores; el apéndice citado es `org-lessons/Apendice-geometria.org`) y en las
prácticas anteriores de `org-pract/` (S04 a S16). Consulta esos ficheros cuando necesites saber si un
término, un símbolo o un comando ya se le ha explicado, en lugar de suponerlo.

Busca, en concreto:

1. Pasos que el texto da por sabidos y el alumno no sabe: un término, un símbolo, un comando o una
   opción de Gretl usados sin explicación ni remisión, o una remisión que no lleva a donde dice.
2. Frases que no se entienden a la primera lectura: referentes sin antecedente claro («ello», «esa
   diferencia», «lo mismo»), frases demasiado largas, afirmaciones que el alumno no puede comprobar
   con lo que tiene delante.
3. Saltos entre el código, la salida y el comentario: algo que el texto dice que se ve en la salida y
   no se ve (o se ve con otra cifra u otro rótulo); una línea de código que el texto no explica; una
   salida que nadie comenta; una cifra del texto que no coincide con la salida. Comprueba las cifras
   una a una contra los `.txt`.
4. Contradicciones o incoherencias entre las tres prácticas (la misma cosa nombrada de dos maneras,
   una afirmación de una que choca con otra) y entre ellas y la lección 12.
5. Errores de contenido: afirmaciones estadísticas o econométricas falsas o imprecisas.
6. Sitios donde el alumno previsiblemente se atascará al ejecutar el guion en Gretl (orden de los
   bloques, variables que ya no existen, dependencia entre actividades).
7. Preguntas de interpretación y sus respuestas: si la pregunta se puede contestar con lo que la
   práctica ha dado, y si la respuesta contesta lo que se pregunta.

No hagas una revisión de estilo general ni propongas reescribir lo que se entiende. No propongas
cambios en las matemáticas de las lecciones. Sé estricto con lo que es un problema real para el alumno
y deja fuera las preferencias.

## Contexto para no señalar falsos problemas

- Las tres prácticas se han revisado el 18-11 y no están desplegadas: el PDF y el HTML publicados en
  la web pueden no coincidir con los `.org`. Audita los `.org`.
- Las reglas de redacción del curso están en `doc/prompts/GuiaDeEstilo.org`, por si quieres saber por
  qué algo está escrito de cierta manera (por ejemplo: el curso no dice que un intervalo o un contraste
  sean «compatibles» con un valor; distingue «muestra» (datos) de «muestra aleatoria»; el Montecarlo se
  describe como un bloque de filas de una «matriz de copias»).

## Qué entregas

Escribe el informe en `doc/prompts/Informe-2026-11-18-auditoria-comprension-S18.org` (org-mode, en
español). Estructura:

- Un párrafo inicial con el veredicto: para cada práctica, si un alumno la entiende sola, y cuál es el
  obstáculo principal si lo hay.
- Después, los hallazgos por práctica (A, B, C) y un apartado final de incoherencias entre prácticas.
  Cada hallazgo con: gravedad (grave = el alumno no puede seguir o aprende algo falso; media = se
  atasca o malentiende; leve), el fichero y la línea, la frase o el código citados literalmente, por
  qué es un problema para ese alumno, y una corrección concreta propuesta en una o dos frases.
- Ordena los hallazgos de cada práctica de más a menos grave. Distingue lo que has comprobado (una
  cifra cotejada contra la salida, un comando buscado en las prácticas anteriores) de lo que es una
  apreciación tuya.

Al terminar, resume en el chat: el veredicto por práctica, el número de hallazgos por gravedad y los
graves y medios en una línea cada uno, con fichero y línea.

## Aplicado

