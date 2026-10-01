# Encargo: cada salida de Gretl justo debajo del bloque de código que la produce

Repositorio: este mismo (`PEconometria`), prácticas de Gretl en org-mode (`org-pract/`). Es la continuación del encargo `Encargo-2026-10-01-noweb-practicas.md` (ya ejecutado): ahora todos los bloques visibles llevan `#+NAME:` y los ocultos solo contienen `outfile … <<Nombre>> … end outfile`. Léelo primero: sus criterios siguen vigentes (en especial los 4, 6 y 7 y el procedimiento de compilar y verificar).

## Lo que quiere el profesor

En el documento, **cada bloque de código visible debe ir seguido inmediatamente de la salida de Gretl que produce**. Hoy, en algunas actividades, hay dos o más bloques visibles seguidos (p. ej. `Abrir` + `Completo`, o `OmitirCaracteristicas` + `SinTasacion`, o `Simular` + `Resultados`) y después una sola salida, o varias salidas seguidas. Hay que reordenar para que quede: código → su salida → código → su salida.

## Reglas

1. **Un bloque visible que no imprime nada** (`open … --quiet`, definiciones de escalares o series, `set seed`, un `loop` que solo acumula, `restrict --quiet` que guarda `$test`) no lleva salida debajo. Puede ir seguido directamente del siguiente bloque visible; en ese caso se cierra y se vuelve a abrir el envoltorio gris (ver abajo), o se dejan los dos dentro del mismo envoltorio si entre ellos no hay salida. Lo que no puede haber es una salida que corresponda a un bloque anterior al que la precede.
2. **Si un `outfile` envolvía dos bloques visibles que imprimen los dos**, se divide en dos `outfile` con dos ficheros distintos (nombres en camelCase, como los existentes: `completo.txt`, `sinTasacion.txt`…), y cada `#+include:` va justo detrás de su bloque visible.
3. Estructura preferida en el `.org`, por cada bloque visible que produce salida:

   ```org
   #+latex: {\vspace{1pt} \footnotesize \color{gray!70!black}
   /en línea de comandos/:
   #+NAME: Completo
   #+begin_src gretl :eval no
   …
   #+end_src
   #+latex: }

   #+begin_src gretl :tangle guiones/<fichero>.inp :eval no :exports none :noweb yes
   outfile --quiet completo.txt
       <<Completo>>
   end outfile
   #+end_src

   #+latex: {\vspace{0pt} \color{gray!70!black} \footnotesize
   #+include: ./<fichero>/completo.txt example
   #+latex: }
   ```

   Es decir: visible → oculto → include, y luego el siguiente visible. El orden de los bloques ocultos en el fichero es el orden en que se *tanglan* al guion, así que al reordenar hay que conservar el orden de ejecución original (lo que estaba antes sigue antes).
4. El texto en gris que precede al primer bloque de una actividad (`/en línea de comandos/:` u `/o bien teclee en línea de comandos/:`) se mantiene solo en el primero; los bloques siguientes de la misma actividad abren el envoltorio sin esa línea.
5. Las figuras (`#+CAPTION` + `[[file:…png]]`) van detrás del bloque que las genera, como ya están.
6. **No cambiar el código** de ningún bloque visible ni la prosa, salvo que una frase describa explícitamente el orden antiguo («las dos salidas que siguen», «después de los dos bloques»); en ese caso, ajuste mínimo y anotarlo en el informe.
7. Nombres de fichero de salida nuevos: nunca repetir uno existente en la misma práctica.

## Procedimiento

Por práctica, el mismo del encargo anterior: copia de seguridad de `org-pract/<nombre>/` y del guion en `/tmp/orden/`, editar, compilar con `timeout 900 make org-pract/<nombre>.pdf org-pract/<nombre>.html < /dev/null` (`timeout 1800` en las de Monte Carlo: S16-A, S18-C, S21-C, S22-A), y verificar: (i) sin `<<` en el guion; (ii) sin `&lt;&lt;` en el HTML; (iii) el **contenido** de las salidas es el mismo que antes (si un fichero se ha dividido en dos, la concatenación de los dos debe coincidir con el antiguo, salvo líneas en blanco); (iv) `grep -Pzo '#\+end_src\n\n\n\s+#\+latex: \}' fichero.org` vacío; (v) mirar el PDF (`pdftotext -layout`) en las actividades reordenadas para comprobar que cada salida sigue a su código.

Recorrer **las 26 prácticas** (`org-pract/S*-Prct-*.org`), en orden. En muchas no habrá nada que hacer: anotarlo y seguir.

No hacer commits ni `git add`. No tocar el makefile ni `org-pract/.stamps`.

## Informe final

En español y conciso: por práctica, actividades reordenadas (o «sin cambios»), ficheros de salida divididos, frases de prosa ajustadas, problemas y lo que requiera decisión del profesor.
