# Encargo del banco de preguntas a las lecciones (25-11-2026)

Origen: sesión de `qbank-PEconometria`, tras las dos revisiones independientes del bloque básico
de L-15 (`qbank-PEconometria/bocetos-2026-11-22/REVISION-2026-11-24b-L15-basico.md`, duda D4). Lo
pide el instructor. Valorar y proponer; no es una orden de redacción.

## El cálculo exacto en el modelo log-log

**Qué hay hoy.** La lección 15 hace el cálculo exacto en dos de las tres formas con logaritmos:

- log-nivel, en la transparencia de los salarios (`S23-Lecc15.org`, l. 188): «cuatro años,
  $e^{4\cdot0{,}0827}-1=0{,}392$, un $39{,}2$ %. La aproximación solo sirve para cambios pequeños»;
- nivel-log, en los apuntes de la superficie (l. 255): «el cambio exacto del precio predicho es
  $297{,}9\,\log(1+p)$ mil dólares, y el aproximado, $297{,}9\,p$».

En el log-log (l. 160) solo se lee un 1 %: «si $x$ varía en la fracción $p$, $\log x$ sube
aproximadamente en $p$, $\log y$ en $\beta_2\,p$, e $y$ en la fracción $\beta_2\,p$,
aproximadamente». No hay ningún ejemplo con un cambio grande.

**Qué necesita el banco.** El instructor fijó el 23 y el 24-11 que ninguna pregunta trate un modelo
con logaritmos como si fuera lineal en las variables, «y eso incluye al modelo log-log»: la lectura
aproximada solo para una unidad o un 1 %, y los cambios grandes con la cifra de la aproximación y la
del cálculo exacto en la misma frase. `L-15-LeerElCoeficienteSegunLaForma` lo pregunta en las tres
formas. En log-log la cuenta es

$$\log(1+p)\ \longrightarrow\ \hat\beta_2\,\log(1+p)\ \longrightarrow\ e^{\hat\beta_2\log(1+p)}-1=(1+p)^{\hat\beta_2}-1,$$

tres pasos que el alumno tiene que encadenar por su cuenta con dos piezas de la hoja
($\log(1+p)\approx p$ y «si $\log y$ sube $\beta$, $y$ se multiplica por $e^{\beta}$»). De momento
el banco da hecho el primer paso en la propia opción («un $80$ % más de gasto en publicidad
($\log 1{,}8=0{,}5878$) se acompaña de …»), para que la variante log-log no sea más difícil que las
otras dos.

**Qué se pide.**

1. Un ejemplo de cálculo exacto en log-log con un cambio grande, junto al de la aproximación, al
   estilo del de los salarios. Con los datos que la lección ya usa (elasticidad del precio respecto
   de `nox`, $-0{,}72$ con `rooms`): un 50 % más de `nox` da $-0{,}72\cdot50=-36$ % con la
   aproximación y $1{,}5^{-0{,}72}-1=-25{,}3$ % con el cálculo exacto.
2. Valorar si la hoja de expresiones debe llevar la cuenta del log-log
   ($(1+p)^{\beta}-1$) junto a la del log-nivel.

El banco no depende de ello: aunque la lección lo incorpore, la opción de log-log seguirá dando el logaritmo del cambio, para que las tres formas pidan los mismos pasos (decisión del instructor, 25-11).

## Aplicado

Sesión del curso, 25-11-2026, con el visto bueno del autor. Lección compilada (PDF, HTML y transparencias); sin commit ni despliegue.

- **Punto 1, apuntes.** En «Cuatro formas, cuatro lecturas del coeficiente», el párrafo «Log-log» lleva ahora el ejemplo pedido, con `nox` y $-0{,}718$: un 50 % más da un $36$ % menos con la aproximación; el cálculo exacto va en tres pasos ($\log(1{,}5)=0{,}405$; $-0{,}718\cdot0{,}405=-0{,}291$; $e^{-0{,}291}=0{,}7475$, un $25{,}3$ % menos) y se resume en «si $x$ se multiplica por $1+p$, $y$ se multiplica por $(1+p)^{\beta_2}$».
- **Punto 1, transparencia.** En la pantalla de las cuatro lecturas la línea no cabe (715 px de 700). Va en la segunda pantalla de «Log-log: modelo con elasticidad constante», con la elasticidad de esa pantalla, $-0{,}954$: un 50 % más de contaminación, un $47{,}7$ % menos con la aproximación y un $32{,}1$ % menos con el cálculo exacto, $1{,}5^{-0{,}954}-1=-0{,}321$ (545 px).
- **Punto 2, hoja de expresiones.** No se añade. La línea ocupa dos renglones en la tercera columna y la tabla de las cuatro formas queda pegada al pie «Versión del…»; el autor la condicionó a que no afectase a la legibilidad. La hoja sigue en la versión del 13-11-2026.
