# Encargo: hiperenlaces internos y pasada «nada se presupone» en las lecciones 1 a 11 (04-11-2026)

Repositorio: este mismo (`PEconometria`). Encargo para una sesión de Opus. Dos partes con criterios distintos:

- **Parte A, mecánica, se aplica**: anclas e hiperenlaces internos, remisiones relativas, prácticas citadas con enlace, y las palabras de las listas de la Guía («exactamente», «literalmente», «precisamente», «conviene»).
- **Parte B, de juicio, no se aplica**: la pasada «nada se presupone» (términos técnicos sin explicar en su primera aparición) se entrega como informe de candidatos con propuesta de texto, lección por lección. Decide el autor; el precedente es `Encargo-2026-10-05-referentes.md`, cuya revisión acabó haciendo Fable porque dependía del significado.

Producto: el informe `doc/prompts/Informe-2026-11-04-pasada-L01-L11.org` (con un apartado «Aplicado» por lección para la parte A y la tabla de candidatos de la parte B), y un commit por lección con los cambios de la parte A. **No se empuja.** No se tocan L12 (hecha), L13 a L16 (pendientes de relectura del autor), las prácticas ni el apéndice.

Lea primero `doc/prompts/GuiaDeEstilo.org` entera: §4 (referentes; en él están las dos reglas del 03-11, «Nada se presupone» y «Toda remisión interna es un hiperenlace», con la extensión a las remisiones descriptivas), §2 (la frase; listas de palabras), §8 (referencias cruzadas y enlaces) y §11 (lista de comprobación). El modelo de lo que se pide ya aplicado es la lección 12: `org-lessons/S17-Lecc12.org` (once `:CUSTOM_ID:`, 21 remisiones entre comillas y 12 descriptivas convertidas en enlaces; informe en `doc/prompts/Informe-2026-11-03-auditoria-L12.org`, secciones C0 y D3).

## Alcance y orden

Lecciones `org-lessons/S01-Lecc01.org` a `S15-Lecc11.org` (once ficheros). Orden: 11, 10, 9, 8, 7 primero (son las que la lección 12 cita), después 6, 5, 4, 3, 2, 1. Tamaño medido el 04-11:

| Lección | Transparencias | `CUSTOM_ID` ya | Entrecomillados ``…'' | Remisiones relativas | «exactamente» y afines | «conviene» |
|---------|---------------:|---------------:|----------------------:|---------------------:|-----------------------:|-----------:|
| L1      | 13 | 0 | 17 | 0 | 2  | 7  |
| L2      | 11 | 0 | 15 | 3 | 2  | 5  |
| L3      | 11 | 0 | 15 | 0 | 4  | 4  |
| L4      | 13 | 0 | 21 | 0 | 2  | 4  |
| L5      | 14 | 1 | 20 | 0 | 5  | 3  |
| L6      | 11 | 0 | 28 | 2 | 5  | 2  |
| L7      | 11 | 3 | 20 | 1 | 14 | 6  |
| L8      | 14 | 0 | 54 | 1 | 12 | 10 |
| L9      | 14 | 1 | 58 | 0 | 10 | 10 |
| L10     | 17 | 0 | 45 | 4 | 13 | 6  |
| L11     | 14 | 1 | 60 | 3 | 2  | 10 |

Los entrecomillados incluyen títulos de transparencia citados y también palabras entre comillas que no son títulos; solo los primeros se convierten.

## Parte A: qué se aplica

### A1. Anclas

En cada transparencia (encabezado `* ` con `slide_type . slide`), un `:CUSTOM_ID:` en el cajón `:PROPERTIES:`, después de `:metadata:`. Nombre corto, en minúsculas, sin acentos ni símbolos, con guiones (`error-estandar`, `supuesto-normalidad`). Reglas:

- Las anclas que ya existen no se cambian (L5, L7 ×3, L9, L11): están publicadas y enlazadas desde otros ficheros (`covarianza-sobre-varianza`, `via-alternativa`, `lugar-de-las-medias`, `esperanza-condicional`, `apendice-copias`, …). Compruebe con `grep -rn "#ancla" org-lessons org-pract` antes de tocar cualquiera.
- Un `CUSTOM_ID` nunca puede coincidir con el `#+NAME:` de un bloque de código de la misma lección: rompe el noweb (incidente del 29-09). Antes de nombrar, `grep -n "#+NAME:" fichero.org`.
- Los apartados de apuntes (`*** ` con `slide_type . skip`) no llevan ancla: el enlace apunta a la transparencia y los apuntes van justo debajo.

### A2. Remisiones internas

Dentro de la misma lección, toda cita del título de una transparencia entre comillas pasa a `[[#ancla][``Título exacto'']]` (el título tal como está en el encabezado, con su matemática). Y toda remisión descriptiva o relativa a una transparencia de la misma lección («en la transparencia siguiente», «la transparencia del intervalo», «como veremos más adelante al hablar de…», «le dedicaremos una transparencia entera») pasa a la forma con título y enlace, reescribiendo la frase lo mínimo: «En [[#contraste-t][``El contraste $t$'']] el contraste es este mismo». En las transparencias (no en los apuntes) se admiten «anterior» y «siguiente» a secas, como en L12.

Remisiones a otra lección: se nombra la lección («la lección 7», nunca «la lección anterior» ni «la próxima lección») y, si se cita una transparencia concreta, enlace pdf + html con el patrón de L12: `[[https://mbujosab.github.io/PEconometria/Lecciones-pdf/S09-Lecc07.pdf#page=8][lección 7]] ([[https://mbujosab.github.io/PEconometria/Lecciones-html/S09-Lecc07.html#lugar-de-las-medias][html]])`. La página se busca con `pdftotext -f N -l N` sobre el PDF de la lección citada y la comprueba `doc/tools/comprobar-paginas.py`. Como las anclas de destino se crean en esta misma pasada, haga primero A1 en las once lecciones y después los enlaces cruzados.

Remisiones a prácticas: nunca «la práctica anterior», «el laboratorio anterior», «el laboratorio que sigue»; siempre «la práctica C de la sesión 16» con enlace pdf (`Practicas-pdf/…pdf#page=N`) + html (`Practicas-html/…html#ancla-de-la-actividad`) a la actividad concreta (Guía §4 y §8; anclas de las actividades en los `:CUSTOM_ID:` de cada práctica).

### A3. Palabras de las listas

- «exactamente», «literalmente», «precisamente» (Guía §2): se quitan, salvo «exactamente» frente a «aproximadamente» en la misma frase. Ya hubo un barrido el 30-09; lo que queda es texto posterior.
- «conviene» y afines («vale la pena», «merece un comentario», «nótese que», «obsérvese que»): se quitan cuando son relleno (la frase dice lo mismo sin ellos: «conviene ver la lógica entera» → «veamos la lógica entera»); se dejan cuando van seguidos de un motivo («conviene enunciarlo con cuidado porque es donde se cometen los errores»). Criterio decidido por el autor el 03-11; listar todos los casos, aplicados y no aplicados, en el informe.
- Las demás listas de §2 y §3 (coloquialismos, metáforas, superlativos valorativos) se revisaron el 30-09; si encuentra alguno en texto nuevo, se aplica y se lista.

Nada más se reescribe. Ninguna fórmula, ninguna definición, ningún argumento. Si una frase necesita más que un enlace o una palabra, va a la parte B.

### Método (obligatorio)

- Antes de escribir, comprobar que no hay lock de Emacs (`ls org-lessons/.#*`); el autor edita a veces los mismos ficheros.
- Sustituciones con guiones de Python que leen el fichero, hacen `assert s.count(old) == 1` (o el número esperado) para **todas** las sustituciones antes de escribir nada, y escriben una vez. Nunca `sed -i` sobre un `.org`.
- Tras cada lección: `make` (compila todo; los avisos de autoloads y use-package son ruido), `python3 doc/tools/medir-transparencias.py 0 org-lessons/SNN-LeccNN.slides.html` (todas las pantallas por debajo de 700 px; los enlaces no cambian la altura, pero se comprueba), `python3 doc/tools/comprobar-paginas.py` (estado limpio = «7 enlaces por corregir», que son falsos positivos conocidos; cualquier línea nueva hay que arreglarla: añadir texto en una lección puede mover de página una transparencia que otro fichero enlaza con `#page=`), y en el PDF, `qpdf --qdf --object-streams=disable fichero.pdf - | grep -a -c "/D (sec"` para ver que los enlaces internos existen; en el cuaderno `.ipynb`, que no queda ningún `[ancla]` suelto (`grep -c "\[[a-z-]*\]" fichero.ipynb` comparado con antes).
- Un commit por lección, mensaje «Lección N: anclas, remisiones internas con hiperenlace y palabras de las listas», sin empujar.

## Parte B: informe de candidatos («nada se presupone»)

Para cada lección, una tabla como la C0 del informe de auditoría de L12 (`Informe-2026-11-03-auditoria-L12.org`): término técnico, línea de su primera aparición, y si está explicado allí (sí / parcial / no, con la frase). Cuenta como término técnico lo que el alumno del inventario (`doc/prompts/Inventario-2026-10-25-estadistica-previa.org`) no trae: todo lo del álgebra del curso (vector en desviaciones, producto escalar estadístico, proyección, familia ortogonal, parte propia…) y de la probabilidad (copia, muestra aleatoria, esperanza condicional, sombra, realización…), y también los nombres que el curso da por sabidos del curso previo (media muestral, varianza con divisor $n-1$, tipificar) cuando el inventario diga que no los trae. Para cada «no» o «parcial», una propuesta de glosa de una aposición, con el texto exacto, que cumpla la Guía y no cambie el contenido. Marque DECIDE EL AUTOR en todas: no las aplique.

Añada, también sin aplicar, lo que encuentre de estos dos tipos, con sección, frase citada y propuesta: objetos nombrados a medias («la $t$», «la normal», «el estimador» cuando hay dos) y frases que dicen lo que algo no es sin decir lo que es (Guía §5).

## Qué no hay que repetir

Los referentes implícitos (Encargo del 05-10) están revisados en L1–L15; la pasada anticoloquial y el repaso de estilo, en S02–S22 (30-09); la regla media/esperanza (08-10) y «muestra» en dos sentidos (12-10) están aplicadas. No vuelva sobre ellas salvo que tropiece con un caso al hacer lo demás.

## Formato del informe

`doc/prompts/Informe-2026-11-04-pasada-L01-L11.org`, como el de la auditoría de L12: primero «Qué se ha hecho y qué no», después, por lección, «Aplicado» (parte A: anclas creadas, enlaces convertidos con su número, palabras quitadas y dejadas, medidas, comprobaciones, hash del commit) y «Candidatos» (parte B). Primera persona del plural en el informe, usted en los textos propuestos. Nada que no haya ocurrido; si una lección queda sin hacer, decirlo.
