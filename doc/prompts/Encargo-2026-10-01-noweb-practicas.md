# Encargo: código visible = código que produce la salida (noweb en las prácticas)

Repositorio: este mismo (`PEconometria`), curso de Econometría con prácticas de Gretl en org-mode (`org-pract/`).

## El problema y la solución decidida

En cada práctica, el alumno ve un bloque de código y, debajo, la salida de Gretl. Hasta ahora cada bloque visible tenía un «gemelo» oculto (el que se *tangle* al guion `.inp` y produce la salida), casi igual pero no idéntico: `printf` que no se veían, `--quiet` distintos, a veces otro cálculo. **El profesor quiere que el código visible sea literalmente el que produce la salida que se muestra.** Solución: noweb. El bloque visible lleva `#+NAME:` y el código completo; el oculto solo envuelve la referencia `<<Nombre>>` dentro de `outfile`.

## Modelo a copiar

`org-pract/S21-Prct-A-hprice2-restricciones.org` ya está convertida. Léela entera antes de empezar. Patrón:

```org
#+latex: {\vspace{1pt} \footnotesize \color{gray!70!black}
/o bien teclee en línea de comandos/:
#+NAME: Abrir
#+begin_src gretl :eval no
open hprice2.gdt --quiet
#+end_src
#+NAME: Completo
#+begin_src gretl :eval no
ols price const rooms nox stratio
scalar SRC = $ess
printf "SRC = %.4e\n", SRC
#+end_src
#+latex: }

#+begin_src gretl :tangle guiones/S21-Prct-A-hprice2-restricciones.inp :eval no :exports none :noweb yes
<<Abrir>>
outfile --quiet completo.txt
    <<Completo>>
end outfile
#+end_src

#+latex: {\vspace{0pt} \color{gray!70!black} \footnotesize
#+include: ./S21-Prct-A-hprice2-restricciones/completo.txt example
#+latex: }
```

- La referencia va indentada dentro de `outfile`; org replica la indentación en todas las líneas al expandir.
- Lo que en el oculto iba **fuera** de `outfile` (`open … --quiet`, `set seed`, `nulldata`, un `loop` de Monte Carlo) va en un bloque visible aparte con su propio nombre (`Abrir`, `Simular`), y el oculto es `<<Abrir>>` seguido del `outfile` con la otra referencia. El alumno ve dos bloques consecutivos. **Ojo:** un `open` dentro de `outfile` mete la línea «Leer fichero de datos …» en la salida; por eso va fuera.
- Gráficos: el visible muestra lo que teclearía el alumno (`gnuplot y x`, `freq x`) y el oculto necesita `--output="@workdir/fichero.png"` o `--plot=…`. Excepción admitida: si el oculto SOLO difiere del visible en esas opciones gráficas (y en el `outfile`), se deja sin noweb y se anota en el informe. Si difiere en algo más, se convierte la parte no gráfica y la orden gráfica se queda en el oculto.
- Monte Carlo con `loop`: el visible es el bucle completo tal como se ejecuta (con su `set seed`), y los `printf` de resumen que el oculto hacía después pasan al visible.

## Criterios (decididos por el profesor; no cambiarlos)

1. **El bloque visible es el canónico.** Si el oculto tenía `printf` u otras órdenes que el visible no mostraba, pasan al visible, para que la salida del documento no cambie.
2. Si el oculto hacía un cálculo **distinto** (otra regresión, `--quiet` donde el visible imprime la tabla…), manda el visible: el oculto queda como envoltorio noweb y la salida cambia a lo que produce el código visible. Si con ello un fichero de salida deja de generarse, se quita su `#+include:`.
3. Tras convertir, comprobar que **todas las cifras citadas en la prosa** («Lo que debe observar», «Respuestas», texto junto al bloque) siguen apareciendo en la salida nueva. Si una ya no se imprime, añadir al bloque **visible** un `printf` que la imprima con el mismo formato de decimales. No reescribir la prosa; lo que no cuadre, al informe.
4. Nombres de bloque en CamelCase sin acentos ni espacios. **Prohibido** que un `#+NAME` coincida (ignorando mayúsculas) con un `:CUSTOM_ID:` de la misma práctica: org resolvería `<<Nombre>>` con la sección entera y el guion dejaría de funcionar. Mirar los `CUSTOM_ID` antes de nombrar.
5. Los visibles sin `#+NAME` reciben uno.
6. Regla de org del proyecto: entre `#+end_src` y el `#+latex: }` de cierre, **una sola** línea en blanco (dos seguidas cierran una lista y rompen LaTeX). Comprobación: `grep -Pzo '#\+end_src\n\n\n\s+#\+latex: \}' fichero.org` debe dar vacío.
7. No tocar nada más: ni prosa, ni títulos, ni anclas, ni cabeceras, ni los bloques elisp/sh iniciales, ni «Código completo de la práctica», ni las semillas.

## Procedimiento por práctica

a. Copia de seguridad de las salidas actuales y del guion, en una carpeta temporal: `cp -r org-pract/<nombre>/ /tmp/noweb/before-<nombre>/` y `cp org-pract/guiones/<nombre>.inp /tmp/noweb/`.
b. Leer el `.org` entero, listar las parejas visible/oculto y convertir con Edit (no con sed).
c. Compilar: `timeout 900 make org-pract/<nombre>.pdf org-pract/<nombre>.html < /dev/null > /tmp/noweb/make-<nombre>.log 2>&1; echo EXIT $?`. **Siempre con `< /dev/null` y `timeout`**: si LaTeX da avisos, Emacs se queda esperando una tecla. Si falla, mirar `org-pract/<nombre>.log` y el make-log, arreglar y repetir. Los «Error loading autoloads» del log son ruido. Las simulaciones (S22-A) pueden tardar varios minutos: `timeout 1800`.
d. Verificar: (i) `grep -c '<<' org-pract/guiones/<nombre>.inp` da 0 (expandido); (ii) `diff -r /tmp/noweb/before-<nombre> org-pract/<nombre>` y anotar qué salidas cambian y por qué (con las mismas semillas, los Monte Carlo deben dar lo mismo; si cambian, se ha alterado el orden de llamadas al generador: revisar); (iii) `grep -c '&lt;&lt;' org-pract/<nombre>.html` da 0; (iv) criterio 3.
e. Siguiente práctica.

**No hacer commits ni `git add`**; el profesor commitea. No tocar el makefile ni `org-pract/.stamps` a mano.

## Estado a 1-10-2026 (tarde) y lo que queda

Ya convertidas y verificadas (no tocar): S04-A/B, S07-A/B/C, S11-A/B/C/D (ya nacieron con noweb), S14-A/B/C/D, S16-A/B/C, S18-A/B/C, S21-A, S21-B.

Pendiente:

1. **S21-Prct-C-distribucion-F.org** — convertida, pero en la Actividad 3 (bloque `Deteccion`) el `open hprice2.gdt --quiet` quedó dentro del `outfile` y la salida `deteccion.txt` empieza por «Leer fichero de datos …». Sacar el `open` a un bloque visible `AbrirDeteccion` (o reutilizar uno existente si el nombre `Abrir` ya está en la práctica) referenciado fuera del `outfile`, recompilar y comprobar que la línea desaparece. Comprobar de paso que `bajoH0.txt` y `n20.txt` siguen conteniendo las fracciones que cita la prosa (0,0555; 0,0505; 0,0875).
2. **S22-Prct-A-colinealidad-montecarlo.org** (Monte Carlo; `timeout 1800`).
3. **S22-Prct-B-hprice2-vif.org**.
4. **S22-Prct-C-ramanathan-coches.org** — en la Actividad 6 el oculto tiene un `loop foreach` que calcula las predicciones de dos coches y el visible `PrediccionDosModelos` solo uno; aquí excepcionalmente manda el oculto, porque el texto cita los dos coches: el visible pasa a ser ese bucle completo con sus `printf`, y el oculto solo el `outfile` con la referencia.
5. **S22-Prct-D-hprice1-tasacion.org** — práctica nueva; sus ocultos usan una lista `caract` (`list caract = bdrms lotsize sqrft colonial`) que los visibles no definen: o el visible define también la lista, o se escriben los regresores en claro en ambos; elegir lo segundo salvo que alargue mucho.

## Informe final

En español y conciso: por práctica, parejas convertidas, bloques dejados sin noweb (gráficos) y por qué, salidas que cambiaron (y confirmación de que las cifras citadas siguen), problemas y cómo se resolvieron, y lo que requiera decisión del profesor.
