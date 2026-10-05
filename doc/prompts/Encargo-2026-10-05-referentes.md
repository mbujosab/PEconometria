# Encargo: frases con referente implícito en las lecciones 1 a 15 (informe de candidatos, sin editar)

> **Estado (2026-10-05, tarde):** decisión del autor: la revisión la hace Fable directamente, de dos o tres lecciones en dos o tres hacia atrás (14 y 13 primero), porque la tarea depende del significado y del contexto y la frecuencia varía mucho entre lecciones. Este encargo queda en reserva por si a mitad de camino conviene delegar la primera pasada a Opus.

Repositorio: este mismo (`PEconometria`). Fecha: 2026-10-05.

## Contexto

Al leer la lección 15 (`org-lessons/S23-Lecc15.org`) el autor señaló frases como «La tabla de la transparencia es el resultado.» (¿resultado de qué?) o «dejan a cada uno muy poca parte propia» (término definido en otra lección, usado aquí sin recordar qué es). Son frases cuyo referente el lector tiene que interpolar o adivinar: un pronombre («esto», «eso», «lo mismo»), un sustantivo sin complemento («el resultado», «la razón», «el último punto»), un adverbio («así», «tal cual») o un sujeto elidido que remite a algo que está dos párrafos más arriba, en una tabla, en una figura o en otra lección. En la lección 15 se corrigieron dieciséis. Las lecciones 1 a 14 no han pasado nunca por esta revisión: las pasadas de estilo anteriores (informes G8, G9 y G10 en `doc/prompts/estilo/`, y la lectura crítica de octubre) buscaban otra cosa.

**La tarea es un informe de candidatos, no una edición.** No toques ningún fichero `.org` de lección ni de práctica. Otra sesión (Fable) leerá el informe, decidirá caso por caso y aplicará las reescrituras; las dudosas se consultarán al autor.

## Regla

El lector no debe interpolar. Cuando una frase remite a algo, ese algo se nombra en la misma frase (o el pronombre se sustituye por el sustantivo). Se admite un pronombre o un sujeto elidido cuando el referente es la frase inmediatamente anterior y no hay otro candidato posible. Se señala cuando:

- (a) el referente no está en la frase inmediatamente anterior (está dos frases atrás, en otro párrafo, en una transparencia distinta o en otra lección);
- (b) el referente es un bloque, no una frase: una tabla, una figura, una lista, una ecuación numerada;
- (c) el pronombre o el sustantivo podría apuntar a dos cosas distintas del contexto;
- (d) la frase es un veredicto sin objeto: «es el resultado», «se lee así», «esa es la pregunta», «lo mismo ocurre», «es la idea central», «la razón es la misma», «ya lo dijimos»;
- (e) se usa un término técnico del curso definido en otra lección como si el lector lo tuviera presente, sin una aposición que lo recuerde («parte propia», «familia ortogonal», «matriz de copias», «lectura por componentes», «Pitágoras anidado»…), **solo** cuando la frase depende de ese término para entenderse. No hace falta señalar cada aparición de un término técnico: solo las que dejan la frase en el aire.

Patrones orientativos para la búsqueda (no exhaustivos; el criterio es el de arriba, y hay que leer el contexto): «esto», «eso», «ello», «esa es», «ese es», «lo mismo», «así.», «tal cual», «es el resultado», «la razón», «el motivo», «el último punto», «lo anterior», «lo dicho», «como se ha visto», «ya lo», «de nuevo», «otra vez», «también aquí», «en ese caso», «con ello», «por eso», «de ahí», sujetos elididos al empezar un párrafo («Es una …», «Son …», «Vuelve …»), y frases de una sola oración corta tras un bloque de fórmulas o una tabla.

## Ejemplos (los dieciséis de la lección 15, antes → después)

1. «La tabla de la transparencia es el resultado.» → «La tabla de la transparencia recoge las cuatro estimaciones.»
2. «Es lo único que mínimos cuadrados y la inferencia necesitan» → «Esa linealidad en las columnas es lo único que mínimos cuadrados y la inferencia necesitan»
3. «La tabla de la transparencia aplica esto a las cuatro combinaciones.» → «… aplica esa aproximación a las cuatro combinaciones de niveles y logaritmos.»
4. «La transparencia “…” vuelve sobre esto.» → «… vuelve sobre esa idea: la forma funcional se impone, no se descubre.»
5. «El rendimiento de la educación se enuncia así.» → «El rendimiento de la educación se enuncia en porcentaje, con esta forma.»
6. «El último punto de la transparencia es un aviso que vale para toda la lección.» → «El último punto de la transparencia, que los dos R² no se pueden comparar, es un aviso …»
7. «Se lee tal cual.» → «El coeficiente se lee tal cual, sin dividir ni multiplicar por 100.»
8. «La transparencia termina cobrando una promesa de la lección 12.» → «… una promesa de la lección 12: contrastar un coeficiente contra un valor distinto de cero.»
9. «y esa es la pregunta poco informativa» → «y ese rechazo es el poco informativo»
10. «Esta es la idea central de la lección.» → «Que la forma de la relación se impone y no se descubre es la idea central de la lección.»
11. «La lección 14 ya dijo esto al comparar nox y lnox» → «La lección 14 ya dijo, al comparar nox y lnox …, que las dos descripciones ajustan casi igual y se separan fuera de lo habitual.»
12. «Esta es la razón por la que la distinción … importa» → «Cobb–Douglas muestra por qué importa la distinción …»
13. «Lo inmediato es tomar e^{9,846} = 18879 dólares.» → «Lo inmediato es deshacer el logaritmo y tomar … como previsión del precio.»
14. «Los tres números son previsiones razonables» → «Las tres cifras, 18879, 19667 y 20065, son previsiones razonables del precio de ese barrio»
15. «Con estos datos ese factor es casi el mismo.» → «Con estos datos ese factor vale 1,043, frente al 1,042 de la fórmula con normalidad.»
16. «dejan a cada uno muy poca parte propia» → «comparten casi toda su variación, así que la parte propia de cada uno, lo que no comparte con el otro, es muy corta»

Observe en el 16 el caso (e): el término se recuerda con una aposición breve, sin redefinirlo.

## Calibración: una muestra de las lecciones 13 y 14

Antes de redactar este encargo se pasaron los patrones de arriba por las lecciones 13 y 14 (`S19-Lecc13.org`, `S20-Lecc14.org`). De unas cuarenta coincidencias, casi todas son falsos positivos: la frecuencia real del problema en esas dos lecciones es de cero a dos casos por lección, mucho menor que en la 15. Espere pocos candidatos y no fuerce la lista.

Falsos positivos típicos (NO señalar):

- «Es el efecto parcial: el significado del coeficiente cambia porque se mantiene fija otra variable. **Eso no es colinealidad.**» (lección 14): «eso» es la frase anterior y no hay otro candidato.
- «ante dos regresores con t pequeños, eliminar los dos ``porque no son significativos''. **El contraste conjunto dice que eso es un error**» (lección 13): mismo caso.
- «En los dos casos falta longitud, **y por eso** el remedio ``más información'' de la transparencia siguiente es ese: más datos, o mejores datos.» (lección 14): la causa está en la misma frase.
- «El F de excluir ambas **mide eso**: cuánto se alarga el residuo si se suprime el plano entero.» (lección 13): el referente se explica tras los dos puntos.

Caso límite, para anotar con confianza `baja`:

- «**Este es el punto de llegada** de una idea que el curso repite desde la lección 11. Allí, la fórmula de la varianza decía …» (lección 14, apuntes de ``Qué es y qué no es''): «este» remite a la conclusión del párrafo anterior (falta de variación propia) y las frases siguientes desarrollan la idea; se entiende, pero podría nombrarse el referente: «La falta de variación propia es el punto de llegada de una idea…». Es el tipo de caso en que quien aplique decidirá.

## Alcance y orden

1. Lecciones, en este orden: `org-lessons/S20-Lecc14.org`, `S19-Lecc13.org`, `S17-Lecc12.org`, `S15-Lecc11.org`, `S13-Lecc10.org`, `S12-Lecc09.org`, `S10-Lecc08.org`, `S09-Lecc07.org`, `S08-Lecc06.org`, `S06-Lecc05.org`, `S05-Lecc04.org`, `S03-Lecc03.org`, `S02-Lecc02.org`, `S01-Lecc01.org` (la lección 1 también, aunque las pasadas de estilo la dejaron fuera: aquí sí entra). La lección 15 ya está hecha.
2. En cada lección: transparencias (secciones `*`), apuntes desarrollados (subsecciones `***` con `slide_type . skip`), la sección visible `* Preguntas de repaso` con su `*** Comentario`, y `* Respuestas`. Quedan fuera los bancos bajo `* COMMENT`, los bloques `#+begin_src`, las fórmulas y los pies de figura (`#+CAPTION`) salvo que el pie entero quede en el aire.
3. El apéndice `org-lessons/Apendice-geometria.org`, al final, si queda tiempo; es prosa más densa y el criterio (e) no se aplica, porque allí los términos se definen.
4. Las prácticas (`org-pract/S*.org`) NO entran en este encargo.

## Formato del informe

Fichero nuevo `doc/prompts/Revision-2026-10-05-referentes-lecciones.org`. Una sección `*` por lección, en el orden anterior, con una tabla Org de cinco columnas:

| línea | frase (literal, recortada si es larga) | qué falta (el referente, en pocas palabras) | propuesta | confianza |

- *línea*: número de línea del `.org` actual (el fichero no se va a mover mientras usted trabaja; compruebe con `grep -n` antes de anotarla).
- *frase*: copia literal, con el marcado org tal cual, de la frase problemática (no del párrafo).
- *qué falta*: el referente que el lector tiene que adivinar, nombrado; si el caso es (e), el término y la lección donde se define.
- *propuesta*: la frase reescrita, respetando las reglas de §4.1 del Plan (`doc/prompts/PlanDeEscritura.org`): forma de usted, frases cortas, sin incisos entre rayas, sin coloquialismos, sin «exactamente», comillas LaTeX ``así''. **No cambie matemáticas ni cifras**: si la reescritura exigiera tocar una fórmula o un número, deje la propuesta en blanco y explíquelo en «qué falta».
- *confianza*: `alta` (el referente es inequívoco y la reescritura es mecánica), `media` (la reescritura exige elegir entre dos lecturas; diga cuáles) o `baja` (no está seguro de que sea un problema, o la frase es deliberadamente elíptica por estar en una transparencia y repetirse en los apuntes).

Debajo de cada tabla, dos líneas: el número de candidatos y un comentario de una frase sobre el estado general de la lección (por ejemplo, «los apuntes de la transparencia 6 encadenan cuatro “esto” seguidos»).

En las transparencias, tenga en cuenta la restricción de espacio (una transparencia cabe en 700 px): si la propuesta alarga una línea de transparencia, dígalo en «confianza» («alarga la transparencia; quizá mejor en apuntes») para que quien aplique decida.

## Reglas

1. No edite ninguna lección, práctica ni el Plan. Solo el informe nuevo. No haga `git add` ni commits.
2. Forma de usted en todo lo que escriba; sin coloquialismos.
3. Lea cada lección entera antes de anotar: el criterio depende del contexto, y un pronombre que parece suelto puede estar resuelto en la frase anterior.
4. No señale como problema las remisiones por título («la transparencia ``El estadístico F''») ni los enlaces a prácticas o al apéndice: esas remisiones nombran su referente.
5. Prefiera pocos candidatos bien justificados a muchos dudosos. Si una lección está limpia, dígalo.

## Informe final

Termine con un resumen de diez líneas como máximo: candidatos por lección, cuántos de confianza alta, y las dos o tres lecciones donde el problema es más frecuente.
