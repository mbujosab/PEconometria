# Aviso de las lecciones al banco de preguntas (20-11-2026, tarde)

Tras dos auditorías externas de comprensión de la lección 13
(`Informe-2026-11-20-auditoria-comprension-L13.org` y
`Informe-2026-11-20-auditoria-comprension-L13-sin-contexto.org`) se han aplicado, por decisión del
autor, sus cuatro hallazgos medios y sus leves en `org-lessons/S19-Lecc13.org`. Ninguna cifra de las
salidas de Gretl cambia y el apéndice no se ha tocado. Lo que sigue es lo que puede afectar a una
pregunta; lo demás es redacción.

## Vocabulario

- **«Significación global» desaparece de la lección.** El contraste del pie de la tabla se llama
  siempre «significación conjunta» (de todos los regresores no constantes). Revisar las preguntas y
  los nombres de fichero que digan «significación global».
- **«Parte propia»** de un regresor, no «dirección propia».
- **«Las $q$ direcciones que la restricción suprime»** es también el rótulo del eje del triángulo
  anidado en la figura (antes «$q$ direcciones ortogonales al subespacio restringido»).
- **«Supuesto de normalidad de la lección 12»**, no «normalidad conjunta» ni «conjuntamente
  normales».

## Lectura de los contrastes

- **Un $F$ del pie de la tabla que no rechaza.** La lección ya no dice «no hay nada que interpretar
  en la tabla». Dice: «si no se rechaza, los datos no permiten afirmar que alguno de esos
  coeficientes sea distinto de cero».
- **Decisiones en términos de rechazo y sobre coeficientes.** En el ejemplo de `nox` y `lnox`: «su
  hipótesis $\beta_{\text{nox}}=0$ no se rechaza»; «aunque no se rechace que el coeficiente de cada
  uno sea cero en presencia del otro»; «el coeficiente de cada uno, sin el otro en el modelo, es muy
  significativo». Ya no se dice que «los datos no permiten afirmar que ese regresor aporte algo».
- **Tercera fila de las tres restricciones** ($\beta_{\text{nox}}=\beta_{\text{stratio}}$). Lectura:
  «no se rechaza al $5\,\%$ la igualdad de los dos coeficientes, por poco ($p=0{,}060$)». Ya no se
  dice «los datos no separan los dos efectos», que es la expresión reservada a la colinealidad.
  Además: la igualdad depende de las unidades (`nox` en partes por cien millones, `stratio` en
  alumnos por profesor); sirve para mostrar cómo se contrasta una igualdad, no como hipótesis
  económica.
- **`nox` y `lnox`.** Lo que alarga mucho el residuo es quitar las dos medidas a la vez (no «en
  cualquiera de sus dos formas»). El $F$ de excluir ambas mide cuánto se alarga el residuo «si se
  suprimen las dos direcciones que `nox` y `lnox` añaden a la constante y `rooms`» (no «el plano
  entero»).
- **Transparencia «La hipótesis conjunta».** «Cada $t$ mide una sola dirección» (sin «la de su
  regresor»: con varios regresores es la de la parte propia).

## Enunciados con su condición

- **$\bar R^2_r>\bar R^2\iff F<1$** vale para las hipótesis lineales que no cambian el regresando
  (exclusión, igualdad entre coeficientes). En las que fijan un valor, el modelo restringido tiene
  otro regresando y otra $\mathrm{STC}$; lo que se compara entonces es la suma de cuadrados del
  residuo por grado de libertad, menor en el restringido cuando, y solo cuando, $F<1$.
- **Hipótesis lineal:** sistema de $q$ ecuaciones lineales «ninguna de las cuales se deduce de las
  demás».
- **$\mathrm E(R^2)=(k-1)/(n-1)$ bajo $H_0$.** El argumento ya no divide dos promedios. Las $n-1$
  coordenadas son independientes y tienen la misma distribución; cada cuadrado es una fracción de
  $\mathrm{STC}$, las $n-1$ fracciones suman $1$ y valen en promedio lo mismo, $1/(n-1)$.
- **Transparencia «Lectura geométrica».** «Bajo $H_0$, $R^2$ vale en promedio $(k-1)/(n-1)$ por
  azar: con ese $R^2$, $F=1$ y $\bar R^2=0$» (no «ahí $F=1$», que podía leerse como «$F$ vale $1$ en
  promedio»).
- **Si $H_0$ es falsa,** las coordenadas en $\mathcal E$ llevan sumadas las coordenadas de la parte
  sistemática, el vector de componentes $\beta_2(X_{i2}-\overline X_2)+\cdots$.

## Cifras

- **Valores críticos con una cifra más,** para que los cuadrados salgan: $F_c(1,3)=10{,}13=3{,}182^2$
  y $F_c(1,502)=3{,}86$, el cuadrado del $t_c=1{,}965$ de la $t_{502}$ (antes $3{,}18$ y $1{,}96$).
- **$\mathrm{SRC}$ del modelo con `rooms`, `nox` y `stratio`:** Gretl la imprime redondeada,
  $1{,}71\cdot10^{10}$; con una cifra más es $1{,}711\cdot10^{10}$, que es la que usa la lección.
- **Tabla de la apertura:** el valor $p$ de `rooms` es $1{,}65\cdot10^{-63}$ (antes $10^{-63}$).
- **Bloque de resumen de Gretl:** la «D.T. de la regresión», el $R^2$ y el $F$ están en tres líneas;
  el $F$ está debajo del $R^2$ (antes «dos líneas de resumen» y «a su lado»).

## Preguntas de repaso de la lección

- **Pregunta 2, respuesta:** la opción 4 acierta en $k-1$, que es también el número de restricciones
  de $H_0$, y falla en $n-k$, que no es el número de coeficientes.
- **Pregunta 5, respuesta:** la opción 1 es falsa; la distribución $F$ tiene cola izquierda, la de
  los valores cercanos a cero.
- **Pregunta 11, respuesta:** «si las restricciones no cambian el regresando, el $R^2$ ajustado del
  modelo restringido es mayor».

## Aplicado

