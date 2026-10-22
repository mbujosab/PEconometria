# Encargo: barrido de la regla de la constante en lecciones, apéndice y prácticas

Repositorio: este mismo (`PEconometria`). Encargo para una sesión nueva (Opus). Antes de empezar, lee `doc/prompts/GuiaDeEstilo.org` entero, y con atención §6, la viñeta «La constante es el coeficiente del regresor $\boldsymbol 1$…», que es la regla que hay que aplicar. Lee también el Plan §4.1 (`doc/prompts/PlanDeEscritura.org`), donde está la misma regla.

**Requisito previo:** el profesor commitea el trabajo pendiente del 22-10 (prácticas de S25 y S26, L9, Plan, Guía, `index.org`) antes de que empiece este barrido. Si `git status` muestra esos ficheros sin commitear, no empieces: avisa.

## La regla (resumen; manda el texto de la Guía §6)

- La constante es el coeficiente del regresor $\boldsymbol 1$ y mide el **valor ajustado en el origen de los regresores no constantes**, el punto en que todos ellos valen cero. La constante vale $1$ en todas las filas, nunca $0$: por eso es falso «cuando todos los regresores valen cero».
- Como cualquier valor ajustado, **solo se lee si ese punto está dentro de la región que ocupan los datos**; fuera de ella es una extrapolación.
- Si solo hay indicadoras, el origen es la categoría base, tiene observaciones, y la constante es su media.
- Si hay un regresor cuantitativo cuyo rango no contiene el cero o apenas lo toca, el número existe y el ajuste lo necesita, pero no se lee como cantidad económica. El texto lo dice sin rodeos («no debe interpretarse») y señala el absurdo al que llevaría (el precio negativo de un barrio con cero habitaciones de media).
- El remedio es elegir el origen: centrar los regresores (lección 7). Entonces la constante es el valor ajustado en las medias (lección 16, `educc`).
- Se nombran los regresores o se dice «los regresores no constantes»; nunca «todos los regresores» ni «todas las variables».

## Alcance

- `org-lessons/S*-Lecc*.org` (L1 a L15) y `org-lessons/Apendice-geometria.org`.
- `org-pract/S*-Prct-*.org` (S04 a S22).
- **Fuera del alcance:** `S24-Lecc16.org` (auditada entera el 22-10 con la regla ya reformulada), las cinco prácticas de S25 y S26 (revisadas el 22-10 con esta regla), `org-pract/CursoAntiguo/`, `doc/` y `ZZnotaS17.org`.

## Método: medir antes de tocar

**Fase 1, inventario (no edites nada).** Busca con `grep -n -i` en los ficheros del alcance como mínimo: `constante`, `intercepto`, `ordenada en el origen`, `término independiente`, `todos los regresores`, `todas las variables`, `valen cero`, `vale cero`, `no tiene interpretación`, `carece de interpretación`, `no se interpreta`, `no debe interpretarse`, `sentido económico`. Descarta las apariciones que no hablan de leer la constante (la constante como regresor $\boldsymbol 1$, la columna de unos, «una constante positiva», etc.). Con las que quedan, escribe el informe `doc/prompts/Informe-AAAA-MM-DD-barrido-constante.org` con una tabla: fichero:línea, cita literal breve, diagnóstico (cumple / infringe, y qué parte de la regla), y el texto de sustitución propuesto. Al final, el recuento: cuántas apariciones revisadas, cuántas cumplen y cuántas infringen.

Referencia: un sondeo del 22-10 encontró la formulación antigua explícita en un solo sitio, `org-pract/S11-Prct-B-hprice2-ajuste.org:149` («Es el precio ajustado cuando todos los regresores valen cero» y «en torno al punto en que todos los regresores valen cero»). 43 ficheros mencionan «constante». Lo más probable es que haya pocas infracciones. Si el recuento es pequeño, dilo, y no fuerces cambios donde el texto ya cumple.

**Fase 2, aplicación.** Aplica directamente solo lo que infringe la regla de forma categórica: «todos los regresores / todas las variables valen cero», o una lectura de la constante como cantidad económica cuando el origen está fuera de los datos. Lo demás (matices, lugares donde convendría añadir el remedio de centrar, redacciones mejorables) va al informe como PROPUESTA con el texto exacto, sin aplicar. **No reescribas matemáticas ni argumentos**: si un cambio toca un argumento, propónlo.

## Reglas de edición

1. Forma de usted; sin coloquialismos ni metáforas; sin «exactamente» salvo frente a «aproximadamente»; nada de «compatible» en contrastes e intervalos (Guía §2, §3 y §6).
2. El profesor puede estar editando en Emacs: antes de escribir un fichero, comprueba que no existe el lock `.#<fichero>` en su carpeta. Haz las sustituciones con un script que verifique con `assert` que cada cadena aparece una sola vez en el fichero recién leído, y lanza todos los `assert` antes de escribir ningún fichero.
3. Compila lo que edites, con objetivos concretos: lecciones, `timeout 900 make org-lessons/<nombre>.pdf org-lessons/<nombre>.html < /dev/null` (y la diapositiva y el cuaderno si el makefile los tiene como objetivos para esa lección); prácticas, `timeout 900 make org-pract/<nombre>.pdf org-pract/<nombre>.html < /dev/null`.
4. Si un cambio cae dentro de una transparencia (no en los apuntes), mide con `python3 doc/tools/medir-transparencias.py` y anota la altura en el informe; el límite es 700 px. Si se pasa, no recortes: propón en el informe.
5. Al final, `python3 doc/tools/comprobar-paginas.py` sobre todos los ficheros editados y sobre los que enlazan a ellos (`grep -l` del nombre del fichero), porque las páginas pueden moverse.
6. Si una cifra que cites no está en la salida de Gretl o en la lección, no la escribas: anótalo.
7. No hagas commits ni `git add`. El profesor commitea.

## Entrega

El informe con la tabla, el recuento, lo aplicado (fichero:línea, antes → después) y lo propuesto. Si el barrido sugiere alguna precisión de la regla en la Guía §6, propónla en el informe, sin editar la Guía.
