# Encargo de la sesión del banco a la lección 13: cuándo sube el R² corregido al quitar regresores (26-10-2026)

Origen: la pregunta multiparte `L-13-DosSalidasDeGretl` de qbank-PEconometria
(dos salidas de Gretl, modelo completo y restringido) evalúa, en una
opción, qué modelo prefiere el R² corregido. Su explicación usa un hecho
que la lección 13 solo enuncia para la significación conjunta («bajo $H_0$,
$R^2$ vale en promedio $(k-1)/(n-1)$: ahí $F=1$ y $\bar R^2=0$»): que al
imponer $q$ restricciones, $\bar R^2$ sube si y solo si el $F$ del contraste
es menor que $1$. El revisor independiente pidió que, si se evalúa, la
lección lo enuncie, y el instructor ha aprobado incluirlo (26-10-2026).

## Qué añadir

En `org-lessons/S19-Lecc13.org`, sección «Restricciones lineales: modelos
anidados» (o en «Tres restricciones sobre =hprice2=», junto a la tercera
fila, la que «no cuesta nada»), un párrafo en las notas (nivel `***`), no
en la transparencia:

> El $R^2$ corregido de la práctica del $R^2$ ajustado se puede escribir
> $\bar R^2=1-\frac{\mathrm{SRC}/(n-k)}{\mathrm{STC}/(n-1)}$: a igual
> $\mathrm{STC}$, es mayor en el modelo cuyo residuo tiene menor longitud al
> cuadrado por dimensión, $\mathfrak s^2=\mathrm{SRC}/(n-k)$. En el modelo
> restringido el residuo vive en $n-k+q$ dimensiones y, por el Pitágoras
> anidado, su suma de cuadrados es $\mathrm{SRC}+(\mathrm{SRC}_r-\mathrm{SRC})$.
> Así que
> $$\bar R^2_r>\bar R^2 \iff \frac{\mathrm{SRC}_r}{n-k+q}<\frac{\mathrm{SRC}}{n-k}
> \iff (\mathrm{SRC}_r-\mathrm{SRC})(n-k)<q\,\mathrm{SRC}
> \iff F=\frac{(\mathrm{SRC}_r-\mathrm{SRC})/q}{\mathrm{SRC}/(n-k)}<1.$$
> Imponer las restricciones mejora el $R^2$ corregido exactamente cuando el
> $F$ que las contrasta es menor que $1$: el cateto que las $q$
> restricciones devuelven al residuo mide, por dimensión, menos que el
> residuo por dimensión, y al fundirlo con él la media baja. Es la misma
> referencia que la significación conjunta ($\bar R^2=0$ donde $F=1$),
> ahora para cualquier hipótesis lineal. En la tabla de =hprice2=, la
> tercera fila tiene $F=3{,}56>1$: el modelo con la suma =nox= $+$ =stratio=
> tiene un $R^2$ corregido menor que el completo aunque no se rechace $H_0$;
> «no se rechaza» y «el ajuste corregido prefiere el restringido» son cosas
> distintas, con umbrales distintos ($F_c$ y $1$).

Con la notación de la lección (vectores en negrita, $\mathfrak s^2$,
$\mathrm{SRC}_r$). Si se añade a la transparencia, basta la última frase
del recuadro («sube si y solo si $F<1$») como fragmento.

## Qué no cambiar

Nada más de la lección. La pregunta del banco ya lleva esta explicación
en sus `exp`; cuando la lección la tenga, nada que actualizar en el banco.

## Aplicado (26-10-2026, Fable)

Párrafo añadido en `org-lessons/S19-Lecc13.org`, notas de «Tres
restricciones sobre =hprice2=», al final de «Tercera fila: una igualdad»
(antes del párrafo sobre el menú de Gretl). Solo en las notas; la
transparencia no cambia. Tres retoques al texto propuesto, sin tocar la
matemática: la práctica del $R^2$ ajustado va con hiperenlace pdf+html a
la actividad 5 de S14-B (ancla `r2-ajustado`), «exactamente cuando» pasa
a «cuando, y solo cuando» (Guía: sin intensificadores vacíos) y «al
fundirlo con él la media baja» pasa a «al juntarlos el cociente por
dimensión baja»; el cateto se nombra con su vector,
$\boldsymbol{\widehat y}-\boldsymbol{\widehat y}_r$. Compilados PDF,
HTML, ipynb y slides. Nada que actualizar en el banco.
