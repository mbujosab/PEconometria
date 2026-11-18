# Aviso de las lecciones al banco de preguntas (18-11-2026)

Decisión del autor del 18-11 al releer la práctica A de la sesión 18, aplicada y compilada en
`S18-Prct-A-hprice2-inferencia.org` y en la lección 13 (`S19-Lecc13.org`); sin commitear ni desplegar
todavía. Deja sin efecto el punto 7 de `Encargo-2026-11-08-qbank-L13.md`.

## 1. Se retira el ejemplo de las doce viviendas con tres regresores

El modelo `price` sobre `rooms`, `nox` y `stratio` estimado con doce viviendas ($F(3,8)=9{,}55$,
$F_c=4{,}07$, $p=0{,}005$, $t_{\text{nox}}=-2{,}63$, $t_{\text{stratio}}=-0{,}10$, $t_c=2{,}31$) ya no
está en ningún sitio del curso:

- S18-A, actividad 5: desaparecen el bloque, su salida (`doceViviendasTres.txt`) y su comentario.
- Lección 13, transparencia «Qué dice y qué no dice el $F$» y sus apuntes: desaparece el ejemplo.

Motivo: era un mal ejemplo de «el $F$ conjunto no dice cuáles». Dos de los tres coeficientes (`rooms`
y `nox`) rechazan al $5\,\%$ por separado, de modo que el rechazo del $F$ no sorprende; y en S18-A el
alumno aún no ha visto el contraste $F$ de significación conjunta.

Lo que queda en la lección 13:

- Transparencia: «Un $F$ de significación conjunta que rechaza $H_0$ dice que los regresores en
  conjunto acortan el residuo más de lo esperable por azar; no dice cuáles ni de qué tamaño es su
  efecto: eso lo dicen los coeficientes y sus intervalos. Y nada de esto establece causalidad.»
- Apuntes: «El rechazo de $H_0$ dice que alguna combinación de los regresores acerca el ajuste al
  regresando más de lo que cabe esperar por azar; no dice cuál, ni cuánto, ni con qué precisión»
  (antes «al precio»).
- El ejemplo de «conjunto $\neq$ individual» es el par `nox`/`lnox`, sin cambios.

**Qué revisar en el banco**: cualquier pregunta de la lección 13 o de la sesión 18 que use esas cifras
o ese modelo con doce viviendas. Si alguna existe, retirarla o rehacerla con el par `nox`/`lnox`.

## 2. S18-A: lo que cambia sin afectar a cifras ya publicadas

- En S18-A el estadístico $F$ aparece solo como $t^2$ del modelo lineal simple (actividad 3:
  $F(1,504)=472{,}952=21{,}7475^2$, por la fórmula, por `$Fstat` y por `restrict` con `b[2] = 0`).
- Actividad 5, regresión simple con doce viviendas: las cifras no cambian ($\hat\beta_2=10\,927{,}6$,
  $\mathrm{ee}=4\,056{,}9$, $t=2{,}69$, $t_c=2{,}228$, IC $[1\,888{,}3;\,19\,966{,}8]$). El intervalo es
  *once* veces más ancho que el de la muestra completa (el texto decía diez), y el error estándar,
  $9{,}7$ veces mayor.
- Actividad 5, nuevo: la semilla se fija para reproducir la salida del documento; el alumno repite
  después el sorteo sin ella. En $2\,000$ sorteos de doce viviendas, una de cada cuatro ejecuciones da
  $\vert t\vert<2{,}23$ y nueve de cada diez intervalos son entre $4$ y $15$ veces más anchos que el
  de la muestra completa.
- Actividad 1: las tres «desviaciones típicas» de la salida son «tres cantidades distintas» (el texto
  decía «que no tienen nada que ver entre sí», falso: $\mathrm{ee}=\mathfrak s/\Vert\boldsymbol
  x-\boldsymbol{\overline x}\Vert_e$). La columna «Desv. típica» es la «estimación de la desviación
  típica del estimador $\hat\beta_2$».

## Aplicado


Revisado por la sesión del banco el 18-11-2026: **nada que cambiar**.

- Doce viviendas con tres regresores: ninguna pregunta (ni de `preguntas/`, ni de `preguntas/reserva/`, ni los
  constructores de L-12, L-13 y L-14) usa ese modelo, `stratio`, ni las cifras $9{,}55$, $4{,}07$, $-2{,}63$, $-0{,}10$
  o $2{,}31$. Ya constaba así en la respuesta al punto 7 del aviso del 08-11.
- `rooms`, `nox` y `dist` aparecen como nombres de variable en `L-12-UnaSalidaFilaAFila-x3` y
  `L-13-DosSalidasDeGretl-x3`, con tablas simuladas en el `setup` (otras cifras en cada variante); no reproducen
  ninguna salida de la práctica.
- S18-A: ninguna pregunta cita $F(1,504)=472{,}952$, las cifras de la regresión simple con doce viviendas, ni «diez
  veces más ancho». `L-12-LeerUnaTablaDeGretl` ya dice que «desviación típica» rotula «tres cantidades distintas»,
  que es la redacción nueva.
