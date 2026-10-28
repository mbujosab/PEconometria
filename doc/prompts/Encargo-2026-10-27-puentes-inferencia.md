# Encargo: puentes con el curso previo de Estadística en las lecciones 11, 12 y 13 (27-10-2026)

Repositorio: este mismo (`PEconometria`). Encargo para una sesión nueva (Opus).

## Origen y prioridad

El inventario del curso previo de Estadística (`doc/prompts/Inventario-2026-10-25-estadistica-previa.org`) muestra que los alumnos llegan sin contraste de hipótesis, sin tipificación, sin esperanza ni varianza de una suma, sin definición de independencia y sin la $t$ ni la $\chi^2$, y con la $F$ vista solo como rótulo al pie de una salida de Excel. Sí traen: la muestra como lista de variables aleatorias, la tabla parámetro / estimador / estimación, $\mathrm E(\bar x)=\mu$ y $\sigma_{\bar x}=\sigma/\sqrt n$ enunciados, el intervalo $\bar x\pm1{,}96\,\sigma/\sqrt n$ con la lectura sobre el procedimiento, la sustitución de $\sigma$ por $S$ si $n>30$, la varianza con divisor $n-1$, y una salida de regresión de Excel vista sin explicar (F3 D41). El autor ha aprobado (27-10-2026) los refuerzos que siguen. Los textos nuevos están redactados aquí; tu trabajo es insertarlos, compilar, medir y anotar.

**Prioridad 1: la lección 11 (`org-lessons/S15-Lecc11.org`), que se imparte el jueves 29-10.** Hazla entera y compílala antes de empezar con las otras dos. Prioridad 2: lección 12 (`S17-Lecc12.org`). Prioridad 3: lección 13 (`S19-Lecc13.org`).

## Reglas de trabajo

- Lee antes `doc/prompts/GuiaDeEstilo.org` (única fuente de reglas de redacción). Forma usted; sin lenguaje coloquial; las decisiones de un contraste nunca tajantes («datos como estos serían demasiado raros si…»); nunca «compatible»; hipótesis sobre coeficientes, no sobre regresores.
- Notación: esperanza y varianza no condicionales en redonda con paréntesis, $\mathrm{E}(\cdot)$, $\mathrm{Var}(\cdot)$, $\mathrm{Cov}(\cdot,\cdot)$; condicionales en cursiva con corchetes, $E[\cdot\mid\boldsymbol X]$. Vector constante $\mathit1$; un escalar que se suma a variables aleatorias va multiplicado por $\mathit1$; los argumentos de $N(\cdot,\cdot)$ son números y no llevan $\mathit1$. Media muestral $\overline X$; varianza muestral $S^2=\frac1n\sum_i(X_i-\overline X)^2$; cuasivarianza de los residuos $\mathfrak s^2$; error estándar $\mathrm{ee}(\hat\beta_2)$; norma euclídea $\Vert\cdot\Vert_e$; producto escalar de variables aleatorias $\langle\cdot,\cdot\rangle_P$.
- El autor puede tener los `.org` abiertos en Emacs: comprueba que no exista `org-lessons/.#S15-Lecc11.org` (ni el de las otras dos) antes de escribir; si existe, para y avísalo.
- Haz las sustituciones con un guion de Python que lea el fichero, compruebe con `assert` que cada cadena antigua aparece exactamente una vez, y solo después escriba. Todos los `assert` antes de la primera escritura.
- `S19-Lecc13.org` tiene cambios sin commitear de otra sesión (un párrafo sobre el $R^2$ corregido en «Tres restricciones sobre =hprice2=»). No los reviertas ni los toques.
- No commitees ni empujes. El autor revisará el diff.
- Compila con el makefile cada lección tocada (PDF, HTML y slides). Mide las transparencias modificadas o nuevas con `doc/tools/medir-transparencias.py` y anota las medidas en «Aplicado». Si una transparencia nueva desborda, pasa su último bloque a una `subslide` antes de recortar texto.
- Al terminar, rellena el apartado «Aplicado» al final de este fichero: un punto por ítem, con lo hecho o lo que no pudiste hacer y por qué.

---

## Lección 11 (prioridad 1)

### L11-1. Nota al pie de «El marco: muestra aleatoria» (apuntes): atribución falsa

Cadena antigua (dentro de la nota al pie larga que empieza «Ese ``sin supuesto adicional'' merece hoy una precisión»):

> Es el hecho, conocido del curso de probabilidad, de que variables independientes están incorreladas, aplicado aquí a $U_i\,a(X_i)$ y a $b(X_{-i})$:

Sustituir por:

> Es el hecho de que variables independientes están incorreladas, aplicado aquí a $U_i\,a(X_i)$ y a $b(X_{-i})$. En el [[https://mbujosab.github.io/PEconometria/Lecciones-pdf/Apendice-geometria.pdf#page=6][apéndice, sección 1.5]] ([[https://mbujosab.github.io/PEconometria/Lecciones-html/Apendice-geometria.html#sec-1-5][html]]), la independencia se caracteriza como la ortogonalidad de toda función centrada de una variable a toda función de la otra; la incorrelación es el caso en que las dos funciones son la identidad:

(Comprueba que la página 6 del PDF del apéndice es la de la sección 1.5; si no, corrige el `#page=`.)

### L11-2. Apuntes de «El marco»: quitar «seguramente»

Cadena antigua:

> (lo que su curso de estadística del cuatrimestre anterior llamaba, seguramente, /muestreo aleatorio simple/)

Nueva:

> (lo que su curso de Estadística del cuatrimestre anterior llamaba /muestreo aleatorio simple/)

### L11-3. Apuntes de «$\hat\beta_2$: la misma fórmula, aplicada a variables aleatorias»: la tabla parámetro / estimador / estimación

Añadir, como párrafo nuevo, inmediatamente después del párrafo que termina en «…el /estimador/ $\hat\beta_2$ de $\beta_2$.[fn::En la literatura estadística y econométrica es costumbre usar la misma notación para ambos objetos …]» (es el primer párrafo del apartado `***`):

> Su curso de Estadística ya hizo esta distinción con la media: sus tablas tenían tres columnas, parámetro, estimador y estimación, con $\mu$, la media muestral y el número calculado con los datos. Hoy es la misma tabla con $\beta_2$, $\hat\beta_2(\boldsymbol X,\boldsymbol Y)$ y $\hat\beta_2(\boldsymbol x,\boldsymbol y)$. Una diferencia de escritura: allí la media muestral se escribía casi siempre $\bar x$, también cuando era una variable aleatoria; aquí la mayúscula, $\overline X$, reserva la minúscula para los números.

### L11-4. Apuntes de «Varianza: cuán dispersas están las estimaciones»: la media muestral como caso $k=1$

Añadir, como párrafo nuevo, entre el párrafo que termina «…una muestra donde $X$ apenas varía impide medir la pendiente con precisión.[fn::/Un apunte geométrico, antes de seguir/. …]» (párrafo de los tres ingredientes, con su nota al pie larga) y el que empieza «Nótese, por último, que este resultado es /condicional/ a $\boldsymbol X$»:

> Su curso de Estadística enunció sin demostrar dos propiedades de la media muestral: $\mathrm{E}(\bar x)=\mu$ y $\sigma_{\bar x}=\sigma/\sqrt n$, el «error de muestreo». El argumento de hoy las demuestra. Tome el modelo con un único regresor, la constante: $Y_i=\beta_1\,\mathit1+U_i$. Su ajuste es el vector de medias (lección 4), así que el estimador de $\beta_1$ es la media muestral $\overline Y=\sum_i\frac1nY_i$: una suma ponderada con pesos $1/n$, que son números y no variables aleatorias. Sustituyendo el modelo, $\overline Y=\beta_1\,\mathit1+\sum_i\frac1nU_i$. Su esperanza es $\beta_1$, porque cada $U_i$ tiene esperanza cero; y su varianza, por la misma cuenta de esta transparencia con $W_i=1/n$ y sin necesidad de condicionar, es $\sum_i\frac1{n^2}\sigma^2=\sigma^2/n$. Son las dos propiedades de su curso con $\beta_1$ en el papel de $\mu$. Compare ahora los dos denominadores: $n=\Vert\boldsymbol 1\Vert_e^2$ en la media muestral y $\sum_i(X_i-\overline X)^2$, la longitud al cuadrado del regresor en desviaciones, en la pendiente. En los dos casos la varianza del estimador es $\sigma^2$ dividido por la longitud euclídea al cuadrado del regresor que lo produce.

### L11-5. Apuntes de «MCO es BLUE; estimando $\sigma^2$»: el divisor $n-1$ de su curso

Añadir, como párrafo nuevo, inmediatamente después del párrafo que termina «…Volveremos sobre los grados de libertad, con más detalle, en la próxima sesión teórica.»:

> El divisor $n-1$ con el que su curso de Estadística definía la varianza de la muestra es el caso $k=1$ de esta regla. En el modelo con la constante como único regresor, el residuo es el vector en desviaciones, que vive en $\mathcal L(\boldsymbol 1)^\perp$, de dimensión $n-1$; dividir por esa dimensión es lo que hace insesgado al estimador de $\sigma^2$. Allí se dio sin motivo; el motivo es este.

### L11-6. Apéndice nuevo: cuatro reglas de la esperanza y la varianza

Insertar una sección nueva de nivel `*` inmediatamente antes de «* Apéndice: lanzar una moneda infinitas veces», con este contenido íntegro:

```org
* Apéndice: cuatro reglas de la esperanza y la varianza
:PROPERTIES:
:CUSTOM_ID: apendice-reglas
:metadata: (slideshow . ((slide_type . skip)))
:END:

#+attr_ipynb: (slideshow . ((slide_type . skip)))
/Material complementario/. Su curso de Estadística definió la esperanza y la varianza de una variable aleatoria y dio, sin deducirlas, las de la binomial, la Poisson y la normal, pero no enunció las reglas para operar con sumas de variables aleatorias, que esta lección y las dos siguientes usan continuamente. Las cuatro salen de una sola cosa: que $\langle Z,W\rangle_P=\mathrm{E}(ZW)$ es un producto escalar (lección 9), con $\mathrm{E}(Z)=\langle Z,\mathit1\rangle_P$, $\mathrm{Var}(Z)=\Vert Z-\mathrm{E}(Z)\,\mathit1\Vert_P^2$ y $\mathrm{Cov}(Z,W)=\langle Z-\mathrm{E}(Z)\,\mathit1,\;W-\mathrm{E}(W)\,\mathit1\rangle_P$.

1. /Linealidad de la esperanza/: $\mathrm{E}(aZ+bW)=a\,\mathrm{E}(Z)+b\,\mathrm{E}(W)$, porque el producto escalar es lineal en cada argumento. Con la definición de su curso, $\mathrm{E}(Z)=\sum_z z\,\mathrm P(Z=z)$, es sacar factor común en una suma.
2. /Cambio de escala/: $\mathrm{Var}(aZ+b\,\mathit1)=a^2\,\mathrm{Var}(Z)$. Sumar una constante no cambia la variable centrada, y multiplicar por $a$ multiplica su longitud por $|a|$.
3. /Varianza de una suma/: $\mathrm{Var}(Z+W)=\mathrm{Var}(Z)+\mathrm{Var}(W)+2\,\mathrm{Cov}(Z,W)$. Es desarrollar la longitud al cuadrado de una suma de dos vectores, $\Vert\boldsymbol v+\boldsymbol w\Vert^2=\Vert\boldsymbol v\Vert^2+\Vert\boldsymbol w\Vert^2+2\langle\boldsymbol v,\boldsymbol w\rangle$, con las variables centradas en el papel de los vectores. Con $n$ sumandos, $\mathrm{Var}\big(\sum_iZ_i\big)=\sum_i\mathrm{Var}(Z_i)+\sum_{i\neq j}\mathrm{Cov}(Z_i,Z_j)$: la cuenta de la transparencia ``Varianza'', hecha allí con la esperanza condicional.
4. /Independencia/: si $Z$ y $W$ son independientes, $\mathrm{Cov}(Z,W)=0$ ([[https://mbujosab.github.io/PEconometria/Lecciones-pdf/Apendice-geometria.pdf#page=6][apéndice, sección 1.5]] ([[https://mbujosab.github.io/PEconometria/Lecciones-html/Apendice-geometria.html#sec-1-5][html]])), y el término cruzado desaparece: $\mathrm{Var}(Z+W)=\mathrm{Var}(Z)+\mathrm{Var}(W)$. El recíproco es falso: covarianza nula no implica independencia, como su curso advertía para la correlación de los datos.

Con las cuatro reglas, para $n$ copias independientes de una variable de esperanza $\mu$ y varianza $\sigma^2$, $\mathrm{E}(\overline X)=\mu$ por la regla 1, y $\mathrm{Var}(\overline X)=\sum_i\frac1{n^2}\sigma^2=\sigma^2/n$ por las reglas 2 y 4. Es lo que su curso enunció con ``puede demostrarse''.
```

Y dos remisiones a este apéndice en los apuntes:

- En «Insesgadez», en la frase «…dos propiedades que usaremos continuamente sin volver a citarlas: $E[\,\cdot\mid\boldsymbol X]$ es /lineal/, …», añadir al final de esa frase (tras «$E[\beta_2\,\mathit1\mid\boldsymbol X]=\beta_2\,\mathit1$»), antes del punto y seguido «Y con esta misma caracterización…»: « (la versión no condicional de estas reglas está en el [[#apendice-reglas][apéndice de las cuatro reglas]], al final de la lección)». Usa el mismo tipo de enlace interno que use ya la lección para sus anclas; si la lección no usa enlaces internos, escribe «(apéndice ``Cuatro reglas de la esperanza y la varianza'', al final de esta lección)».
- En «Varianza», tras «Nos queda, por tanto, desarrollar la varianza de una suma de $n$ sumandos.», añadir: «Si nunca ha visto la varianza de una suma, lea antes la regla 3 del apéndice de las cuatro reglas, al final de la lección: aquí se hace la misma cuenta con la esperanza condicional.»

### L11-7. Compilar y medir

Compila la lección 11 (PDF, HTML, slides). Ninguna transparencia cambia en la 11; comprueba solo que el HTML muestra el apéndice nuevo y que las remisiones enlazan.

---

## Lección 12 (prioridad 2)

### L12-1. Apuntes de «El supuesto nuevo: normalidad»: atribución falsa

Cadena antigua:

> lo que queda es un resultado de su curso de probabilidad, que no demostraremos: una combinación lineal de normales independientes con coeficientes numéricos es normal

Nueva:

> lo que queda es un resultado de probabilidad que no demostraremos: una combinación lineal de normales independientes con coeficientes numéricos es normal

### L12-2. Apuntes de «El error estándar, y el precio de estimar $\sigma$»: tipificación y origen del 1,96

Cadena antigua:

> porque restar la esperanza y dividir por la desviación típica convierte cualquier normal en la normal estándar.

Nueva:

> porque restar la esperanza y dividir por la desviación típica (/tipificar/) convierte cualquier normal en la normal estándar. De ahí salía el $1{,}96$ de los intervalos de su curso de Estadística: es el valor que deja $0{,}025$ en cada cola de la normal estándar.

### L12-3. Mismos apuntes: la sustitución de $\sigma$ por $S$ con $n>30$

Añadir, como párrafo nuevo, inmediatamente después del párrafo que termina «…veremos su significado geométrico: es la dimensión del subespacio donde vive el residuo.»:

> Su curso de Estadística hizo esta misma sustitución, $S$ en lugar de $\sigma$, y siguió usando el $1{,}96$ de la normal con la condición $n>30$. Esa condición es la aproximación de la $t_{n-k}$ por la normal en muestras grandes: la regla de allí es la de hoy cuando $n-k$ es grande, y la $t_{n-k}$ es lo que hay que usar cuando no lo es.

### L12-4. Transparencia nueva: «Un contraste que ya puede hacer: la media»

Insertar entre la sección «* El error estándar, y el precio de estimar $\sigma$» (con su `***`) y «* El contraste $t$», esta sección completa (transparencia más apuntes):

```org
* Un contraste que ya puede hacer: la media
:PROPERTIES:
:metadata: (slideshow . ((slide_type . slide)))
:END:

Su curso de Estadística dejó la media muestral con distribución conocida, $\overline X\sim N(\mu,\sigma^2/n)$ (allí escrita $N(\mu,\sigma/\sqrt n)$), y con ella el intervalo $\overline X\pm1{,}96\,\sigma/\sqrt n$. Le faltó el paso siguiente.

#+attr_ipynb: (slideshow . ((slide_type . fragment)))
/Pregunta/: si $\mu$ valiese $\mu_0$, ¿serían datos como estos demasiado raros? /Hipótesis nula/: $H_0\!:\mu=\mu_0$.

#+attr_ipynb: (slideshow . ((slide_type . fragment)))
/Suponemos provisionalmente $H_0$/. Entonces
\[
\frac{\overline X-\mu_0}{\sigma/\sqrt n}\;\sim\;N(0,1):
\]
la distancia de $\overline X$ a $\mu_0$, medida en desviaciones típicas de $\overline X$. Bajo $H_0$, el $95\,\%$ de las muestras dan un cociente entre $-1{,}96$ y $1{,}96$.

#+attr_ipynb: (slideshow . ((slide_type . fragment)))
/Decisión/: si el cociente observado queda fuera, datos como estos serían raros bajo $H_0$ (ocurren el $5\,\%$ de las veces): se rechaza $H_0$. Si queda dentro, no se rechaza.

#+attr_ipynb: (slideshow . ((slide_type . fragment)))
#+begin_center
Con $\hat\beta_2$ en lugar de $\overline X$, $\mathrm{ee}(\hat\beta_2)$ en lugar de $\sigma/\sqrt n$ y $t_c$ en lugar de $1{,}96$: el contraste $t$ de la transparencia siguiente.
#+end_center


*** Un contraste que ya puede hacer: la media
:PROPERTIES:
:metadata: (slideshow . ((slide_type . skip)))
:UNNUMBERED: notoc
:END:

#+attr_ipynb: (slideshow . ((slide_type . skip)))
Antes de construir el contraste sobre $\beta_2$ conviene ver la lógica entera en el único caso que su curso de Estadística dejó preparado. Allí quedó enunciado que, con $n$ copias independientes de una variable de esperanza $\mu$ y varianza $\sigma^2$, la media muestral tiene esperanza $\mu$ y varianza $\sigma^2/n$ (la lección 11 lo demostró como caso $k=1$), y que es normal si la variable lo es o si $n$ es grande. Con eso se construyó el intervalo $\overline X\pm1{,}96\,\sigma/\sqrt n$. El contraste de hipótesis se nombró y no se desarrolló; es lo que hacemos ahora, con esas mismas piezas.

La pregunta de un contraste no es ``¿cuánto vale $\mu$?'' sino ``si $\mu$ valiese un número concreto $\mu_0$, ¿serían datos como estos demasiado raros?''. Ese número es la /hipótesis nula/, $H_0\!:\mu=\mu_0$, y el razonamiento tiene tres pasos. Primero, suponemos provisionalmente que $H_0$ es cierta. Segundo, bajo ese supuesto conocemos la distribución de un estadístico: $(\overline X-\mu_0)/(\sigma/\sqrt n)$ es una normal estándar, porque restar la esperanza y dividir por la desviación típica tipifica cualquier normal; ese cociente dice a cuántas desviaciones típicas de $\overline X$ está la media observada del valor $\mu_0$. Tercero, comparamos el cociente observado con lo que esa distribución produce habitualmente: el $95\,\%$ de las veces cae entre $-1{,}96$ y $1{,}96$. Si el observado queda fuera, o hemos tenido una muestra muy rara, de las que salen una vez de cada veinte, o el supuesto provisional era falso; el contraste opta por lo segundo y /rechaza/ $H_0$. Si queda dentro, datos como estos no serían raros bajo $H_0$ y /no se rechaza/; lo que no quiere decir que $H_0$ sea cierta, como veremos en la sección ``Significación estadística $\neq$ relevancia económica''.

Los nombres, que reaparecen en la transparencia siguiente: el $1{,}96$ es el /valor crítico/, el $5\,\%$ es el /nivel de significación/ $\alpha$, la probabilidad de rechazar $H_0$ cuando es cierta, y el conjunto de valores del cociente que llevan a rechazar, $|{\cdot}|>1{,}96$, es la /región crítica/. Su curso de Estadística usaba la letra $\alpha$ solo como complemento del nivel de confianza; aquí tiene además este significado, y los dos coinciden: $\mu_0$ no se rechaza al nivel $\alpha$ exactamente cuando $\mu_0$ está dentro del intervalo de confianza al $1-\alpha$, porque la desigualdad $|\overline X-\mu_0|\le1{,}96\,\sigma/\sqrt n$ es la misma escrita de dos maneras. El intervalo es el conjunto de las hipótesis que no se rechazan; volveremos sobre esto en la transparencia del intervalo de confianza.

Queda una objeción que su curso ya resolvió a medias: $\sigma$ no se conoce. Allí se sustituía por $S$ y se seguía usando $1{,}96$ a condición de que $n>30$. Al sustituir $\sigma$ por una estimación el cociente se dispersa más que una normal, y su distribución exacta es la $t$ de Student de la transparencia anterior; con muchas observaciones la diferencia desaparece, y esa es la condición $n>30$. En la transparencia siguiente el contraste es este mismo, con $\hat\beta_2$ en el papel de $\overline X$, el error estándar en el de $\sigma/\sqrt n$ y el valor crítico de la $t_{n-k}$ en el del $1{,}96$.

/Para profundizar/: Wooldridge, J. M. (2020), apéndice C, sección C.6 (contraste de hipótesis sobre la media de una población normal).
```

Comprueba la referencia a Wooldridge: si en la edición de 2020 el contraste sobre la media no está en C.6, pon la sección correcta del apéndice C; si no lo localizas, deja «apéndice C (contrastes de hipótesis sobre la media)».

Mide la transparencia nueva. Si desborda, convierte el último fragmento (el `begin_center`) en `subslide`.

### L12-5. Transparencia «El contraste $t$»: enlazar con la anterior

Cadena antigua (primera línea de la transparencia):

> /Hipótesis nula/: $H_0\!:\beta_2=0$ (``el regresor no aporta nada''), frente a $H_1\!:\beta_2\neq0$.

Nueva:

> La misma lógica de la transparencia anterior, con $\hat\beta_2$. /Hipótesis nula/: $H_0\!:\beta_2=0$ (``el regresor no aporta nada''), frente a $H_1\!:\beta_2\neq0$.

Vuelve a medir esta transparencia.

### L12-6. Apuntes de «El intervalo de confianza»: el intervalo que ya conocen

Añadir, como párrafo nuevo, inmediatamente antes del párrafo que empieza «Queda la cuestión de la interpretación, donde es fácil equivocarse.»:

> Su curso de Estadística construyó el intervalo $\bar x\pm1{,}96\,\sigma/\sqrt n$ para la media y dio de él la lectura que sigue: el nivel de confianza es del procedimiento, y la probabilidad es anterior a tomar la muestra. El de hoy es ese intervalo con $\hat\beta_2$, $\mathrm{ee}(\hat\beta_2)$ y $t_c$ en lugar de $\bar x$, $\sigma/\sqrt n$ y $1{,}96$.

### L12-7. Tabla de equivalencias en los apuntes de «De dónde venimos: nos falta la forma»

Añadir, inmediatamente antes de la línea «/Para profundizar/: Wooldridge, J. M. (2020), cap. 4, introducción y sección 4.1 …» de ese apartado `***`, el párrafo y la tabla:

```org
Para quien venga del curso de Estadística del primer curso, esta tabla pone en correspondencia lo que allí se vio con lo que estas tres lecciones hacen. Las dos primeras filas son de la lección 11; las demás, de esta y de la siguiente.

#+ATTR_LATEX: :align |p{5.2cm}|p{6.4cm}|p{2.4cm}|
| En su curso de Estadística                                   | En este curso                                                                                                      | Dónde          |
|--------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+----------------|
| $\bar x$, también cuando es una variable aleatoria           | $\overline X$ para la variable aleatoria, $\mu_{\boldsymbol x}$ para el número                                     | L11            |
| parámetro / estimador / estimación, con $\mu$                | $\beta_2$ / $\hat\beta_2(\boldsymbol X,\boldsymbol Y)$ / $\hat\beta_2(\boldsymbol x,\boldsymbol y)$               | L11            |
| $\sigma_{\bar x}=\sigma/\sqrt n$, el ``error de muestreo''   | $\mathrm{ee}(\hat\beta_2)=\mathfrak s/\Vert\boldsymbol x-\boldsymbol{\mathop{\overline x}}\Vert_e$, el error estándar | L12            |
| $N(\mu,\sigma)$                                              | $N(\mu,\sigma^2)$                                                                                                  | L12            |
| $z_{\alpha/2}=1{,}96$, leído en una tabla                    | $t_c$ de la $t_{n-k}$; vale $1{,}96$ cuando $n-k$ es grande                                                       | L12            |
| $\sigma$ sustituida por $S$ si $n>30$                        | $\sigma$ sustituida por $\mathfrak s$, y la $t_{n-k}$ en lugar de la normal, para todo $n$                         | L12            |
| $\alpha$: el complemento del nivel de confianza              | $\alpha$: probabilidad de rechazar $H_0$ siendo cierta; el intervalo al $1-\alpha$ es el conjunto de valores que el contraste al nivel $\alpha$ no rechaza | L12 |
| $\bar x\pm1{,}96\,\sigma/\sqrt n$                            | $\hat\beta_2\pm t_c\,\mathrm{ee}(\hat\beta_2)$                                                                     | L12            |
| contraste de hipótesis: solo nombrado                        | $H_0$, estadístico, valor crítico, valor $p$                                                                       | L12            |
| SCR (de regresión) y SCE (del error)                         | $\mathrm{SEC}$ y $\mathrm{SRC}$                                                                                    | L8, L12, L13   |
| ``F'' y ``Valor crítico de F'' al pie de la salida de Excel  | el $F$ de significación conjunta y su valor crítico $F_c$                                                          | L13            |
```

Comprueba que la tabla compila en LaTeX (anchos de columna) y que la fila larga de $\alpha$ no rompe la página; si hace falta, acorta esa celda a «probabilidad de rechazar $H_0$ siendo cierta; el intervalo al $1-\alpha$ reúne los valores que el contraste al $\alpha$ no rechaza».

### L12-8. Lo que ya vieron en Excel: comprobación previa

Antes de L12-9 y de L13-3, comprueba qué contiene la diapositiva 41 del Tema 3 (`doc/CursoEstadisticaPrevio/`, fichero F3 del inventario; el texto extraído está en `doc/CursoEstadisticaPrevio/txt/` si lo conservó la sesión anterior; si no, vuelve a extraerlo con `doc/tools/extraer-pptx.py`, o convierte el `.pptx` a PDF con LibreOffice en el /scratchpad/, fuera del repositorio, y mira la imagen). Interesa saber si la salida de Excel muestra: (a) para cada regresor, las columnas «Coeficientes», «Error típico», «Estadístico t», «Probabilidad» y los límites «Inferior 95 %» / «Superior 95 %»; (b) la tabla ANOVA con filas «Regresión» / «Residuos» / «Total» y columnas «Grados de libertad», «Suma de cuadrados», «Promedio de los cuadrados», «F», «Valor crítico de F». Anota en «Aplicado» exactamente qué rótulos aparecen. Redacta L12-9 y L13-3 solo con lo que aparezca; no afirmes nada que la diapositiva no muestre. Material de otra profesora: no reproduzcas la diapositiva ni la cites más allá de los rótulos.

### L12-9. Apuntes de «Cómo se lee una tabla de resultados»: la tabla de Excel que ya vieron

Si (a) se confirma, añadir inmediatamente después del primer párrafo del apartado `***` (el que termina «…cuya estimación completa es esta:» y la tabla y la línea de $n$, $k$, STC… que la siguen), es decir, antes de «La /primera columna/ es el tamaño del efecto estimado»:

> La tabla no es nueva para usted. La herramienta ``Análisis de datos'' de Excel, con la que su curso de Estadística ajustó la recta, imprime para cada regresor las columnas ``Coeficientes'', ``Error típico'', ``Estadístico t'' y ``Probabilidad'': son estas cuatro, con ``Error típico'' por error estándar y ``Probabilidad'' por valor $p$, seguidas de los dos extremos del intervalo de confianza al $95\,\%$. Allí no se explicaron; hoy sí.

Adapta la lista de rótulos a lo que muestre la diapositiva. Además, en la transparencia «Cómo se lee una tabla de resultados», en el /Aviso terminológico/, sustituir:

> En inglés solo la primera es /standard deviation/; las otras dos son /standard error/.

por:

> En inglés solo la primera es /standard deviation/; las otras dos son /standard error/ (``Error típico'' en el Excel de su curso de Estadística).

Solo si (a) se confirma. Mide la transparencia después.

### L12-10. Compilar y medir

Compila la lección 12 y mide las transparencias «Un contraste que ya puede hacer: la media», «El contraste $t$» y «Cómo se lee una tabla de resultados». La lección 12 tiene ahora once transparencias; comprueba que ninguna remisión numérica a transparencias (dentro de la lección o desde las prácticas de la sesión 18) deje de ser válida; las remisiones del curso son por título, así que normalmente no habrá nada que tocar.

---

## Lección 13 (prioridad 3)

### L13-1. Nota al pie de los apuntes de «El estadístico $F$»: atribución falsa

Cadena antigua:

> La versión más elemental de este resultado ya la conoce: la suma de los cuadrados de $n$ variables aleatorias independientes de esperanza cero y varianza $\sigma^2$ tiene esperanza $n\sigma^2$, porque cada una aporta $\sigma^2$.

Nueva:

> La versión más elemental de este resultado: la suma de los cuadrados de $n$ variables aleatorias independientes de esperanza cero y varianza $\sigma^2$ tiene esperanza $n\sigma^2$, porque cada una aporta $\sigma^2$ y la esperanza de una suma es la suma de las esperanzas (regla 1 del apéndice de las cuatro reglas de la lección 11).

### L13-2. Apuntes de «El estadístico $F$»: recordatorio de las siglas

Añadir al final del primer párrafo del apartado `***` (el que termina «…y el párrafo siguiente dice por qué, bajo $H_0$, deben parecerse.[fn::Los dos divisores cuentan dimensiones …]»), tras la nota al pie, la frase:

> Recuerde el aviso de la lección 8 sobre las siglas: en su curso de Estadística, SCR era la suma /de regresión/, nuestra $\mathrm{SEC}$, y SCE la suma /del error/, nuestra $\mathrm{SRC}$.

### L13-3. Apuntes de «El $F$ en una tabla de resultados»: la tabla ANOVA de Excel

Si (b) de L12-8 se confirma, añadir como párrafo nuevo inmediatamente después del primer párrafo del apartado `***` (el que termina «…son las dimensiones de los subespacios donde viven los catetos del triángulo.»):

> Ese $F$ también lo vio en Estadística, al pie de la salida de Excel, en una tabla rotulada ANOVA con tres filas, ``Regresión'', ``Residuos'' y ``Total'', y las columnas ``Grados de libertad'', ``Suma de cuadrados'', ``Promedio de los cuadrados'' y ``F''. Es el triángulo de esta lección puesto en filas: las sumas de cuadrados son $\mathrm{SEC}$, $\mathrm{SRC}$ y $\mathrm{STC}$; los grados de libertad, $k-1$, $n-k$ y $n-1$; el ``promedio de los cuadrados'' es cada suma dividida por su dimensión, $\mathrm{SEC}/(k-1)$ y $\mathrm{SRC}/(n-k)$; y la ``F'' es su cociente. Lo que allí era una tabla sin explicación es la fórmula de la transparencia ``El estadístico $F$''.

Adapta los rótulos a lo que muestre la diapositiva.

### L13-4. Compilar

Compila la lección 13. No cambia ninguna transparencia.

---

## Anotaciones finales

- En `doc/prompts/PlanDeEscritura-fichas.org`, en las fichas §7.11, §7.12 y §7.13, añade una línea: «Puentes con el curso previo de Estadística aplicados el 27-10-2026 (`Encargo-2026-10-27-puentes-inferencia.md`): …» con la lista breve de ítems de esa lección. Si las fichas tienen un apartado de historial o decisiones, ponla ahí; si no, al final de la ficha.
- Aviso al banco de preguntas: escribe `doc/prompts/Encargo-2026-10-27-qbank-puentes.md` (breve, con apartado «Aplicado» vacío para que lo rellene la sesión del banco) diciendo que la lección 12 tiene una transparencia nueva, «Un contraste que ya puede hacer: la media», con el contraste $H_0\!:\mu=\mu_0$ sobre la media con $\sigma$ conocida y su equivalencia con el intervalo, y que la lección 11 tiene un apéndice con las cuatro reglas de la esperanza y la varianza; ambas cosas son evaluables en el sentido de que la lección las enuncia.
- No commitees. Rellena «Aplicado» y termina.

## Aplicado

Aplicado el 27-10-2026 por una sesión de Opus. Sin commitear. Sustituciones con guiones de Python con todos los `assert` antes de escribir; ningún fichero `.#…` presente. El cambio previo de otra sesión en `S19-Lecc13.org` (párrafo del $R^2$ corregido) no se ha tocado.

**Lección 11** (compilada: PDF, HTML y slides, sin errores).

- L11-1. Hecho. Comprobado que la página 6 del PDF del apéndice es la de la sección 1.5 (y que el ancla HTML es `#sec-1-5`).
- L11-2. Hecho.
- L11-3. Hecho, tras la nota al pie de «En la literatura estadística y econométrica…».
- L11-4. Hecho, entre el párrafo de los tres ingredientes (con su nota larga) y «Nótese, por último…». Única desviación: «error de muestreo» va entre comillas ``…'' (como el resto de la lección) y no entre comillas españolas.
- L11-5. Hecho.
- L11-6. Apéndice insertado antes de «Apéndice: lanzar una moneda infinitas veces», con `CUSTOM_ID: apendice-reglas`. La lección no usa enlaces internos `[[#…]]`, así que la primera remisión dice: «(la versión no condicional de estas reglas está en el apéndice ``Cuatro reglas de la esperanza y la varianza'', al final de esta lección)»; la segunda, en «Varianza», con el texto del encargo.
- L11-7. Ninguna transparencia cambia: comprobado que ninguno de los textos nuevos aparece en `S15-Lecc11.slides.html`. El HTML y el PDF muestran el apéndice (en el índice del PDF como sección 11) y los dos enlaces a la sección 1.5 del apéndice de geometría.

**Lección 12** (compilada: PDF, HTML y slides, sin errores).

- L12-1. Hecho.
- L12-2. Hecho.
- L12-3. Hecho.
- L12-4. Hecho. Wooldridge (2020), apéndice C: la sección C.6 es «Hypothesis Testing» y contiene el contraste sobre la media de una población normal; se deja C.6. Medida: la transparencia desbordaba (715 px). El `#+attr_ipynb` no actúa sobre un bloque `#+begin_center` (ox-ipynb lo funde con la celda anterior), así que para pasar la última frase a `subslide` hubo que quitarle el envoltorio `center`: ahora es un párrafo normal con `slide_type . subslide`. Medidas: t4 = 626 px, t4.2 (la frase) = 99 px. Probado también como fragmento sin `center` en la misma pantalla: 725 px, desborda; por eso queda en `subslide`.
- L12-5. Hecho. «El contraste $t$»: 636 px.
- L12-6. Hecho.
- L12-7. Tabla insertada; compila en LaTeX con los anchos dados y cabe entera en la página 4 del PDF, con la fila de $\alpha$ sin acortar. **Una fila corregida**: la última decía «el $F$ de significación conjunta y su valor crítico $F_c$», pero en la salida de Excel (D41) la columna «Valor crítico de F» vale 0,007 para $F=14{,}296$ con (1, 7) grados de libertad: es el valor $p$, no el valor crítico. Queda: «el $F$ de significación conjunta y su valor $p$ (lo que Excel rotula ``Valor crítico de F'' es el valor $p$, no $F_c$)». Pendiente de que el autor lo confirme.
- L12-8. Rótulos encontrados (F3, convertido a PDF con LibreOffice en el /scratchpad/ y mirado como imagen). D41: bloque «Resumen» con «Estadísticas de la regresión»: «Coeficiente de correlación múltiple», «Coeficiente de determinación R^2», «R^2 ajustado», «Error típico» (aquí es la $\mathfrak s$ de la regresión, 2,184, no un error estándar de coeficiente), «Observaciones»; y bloque «ANÁLISIS DE VARIANZA» con filas «Regresión», «Residuos», «Total» y columnas «Grados de libertad», «Suma de cuadrados», «Promedio de los cuadrados», «F», «Valor crítico de F». **(a) no se confirma**: la tabla de coeficientes no está en D41; está recortada en D38 con una sola columna, «Coeficientes» (filas «Intercepción» y «PIB billones de euros (X)»), sin «Error típico», «Estadístico t», «Probabilidad» ni límites del intervalo. **(b) se confirma**, con la columna adicional «Valor crítico de F» (que es el valor $p$).
- L12-9. **No aplicado**, porque (a) no se confirma: ni el párrafo ni el cambio del /Aviso terminológico/. Además, en la salida de Excel que vieron, «Error típico» rotula la $\mathfrak s$ de la regresión, no el error estándar de un coeficiente, así que el paréntesis propuesto para el aviso sería inexacto. «Cómo se lee una tabla de resultados» no cambia: 649 px.
- L12-10. Medidas: «Un contraste que ya puede hacer: la media» 626 + 99 px (subslide); «El contraste $t$» 636 px; «Cómo se lee una tabla de resultados» 649 px; ninguna pantalla de la lección supera los 700 px (máximo: 682 px, «El intervalo de confianza»). No hay remisiones numéricas a transparencias de la lección 12 ni en la propia lección ni en las prácticas de la sesión 18 ni en la lección 13.

**Lección 13** (compilada: PDF, HTML y slides, sin errores).

- L13-1. Hecho.
- L13-2. Hecho, tras la nota al pie «Los dos divisores cuentan dimensiones…».
- L13-3. Hecho, adaptado a D41: la tabla se rotula «Análisis de varianza» (así aparece en la diapositiva, no «ANOVA»), la lista de columnas incluye «Valor crítico de F», y se añade una frase: «La última columna, pese a su rótulo, no es el valor crítico $F_c$: es el valor $p$ del contraste.»
- L13-4. Ninguna transparencia cambia (comprobado en `S19-Lecc13.slides.html`).

**Anotaciones finales**

- Fichas: las §7.11–§7.13 del encargo son las de las sesiones 10–12; las de las lecciones 11, 12 y 13 son §7.16 (sesión 15), §7.18 (sesión 17) y §7.20 (sesión 19). La línea «/Puentes con el curso previo de Estadística aplicados el 27-10-2026/» se ha añadido al final de esas tres fichas (no tienen apartado de historial; las líneas de revisión anteriores también van al final).
- Aviso al banco: escrito en `doc/prompts/Encargo-2026-10-27-qbank-puentes.md`, con «Aplicado» vacío. Incluye también la advertencia sobre «Valor crítico de F».
