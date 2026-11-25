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

(Lo rellena la sesión del curso.)
