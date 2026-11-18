# Aviso de las lecciones al banco de preguntas (18-11-2026, tarde)

Revisión crítica de la práctica C de la sesión 18 (`S18-Prct-C-cobertura.org`), aplicada entera por
decisión del autor y compilada; sin commitear ni desplegar todavía. Las cifras de las salidas son
idénticas a las anteriores (comprobado fichero a fichero con la misma semilla).

## 1. Nombres de variables del guion (lo que puede afectar a una pregunta que cite código)

| Antes | Ahora |
|---|---|
| `b1`, `b2` | `beta1_verdadero`, `beta2_verdadero` |
| `sig` | `sigma` |
| `b2hat` | `beta2_estimado` |
| `ee` | `error_estandar` |
| `cL`, `cR` | `extremo_inferior`, `extremo_superior` |
| `dentro`, `dentroZ` | `contiene_beta2`, `contiene_beta2_con_196` |
| `tstat` | `t_H0_cierta` |
| `rech`, `rech0` | `rechazos_H0_falsa`, `rechazos_H0_cierta` |
| `cov` | `intervalos_que_contienen` |
| `c_falsa` | `valor_falso` |
| `B2` (serie constante de la figura) | `beta2_constante` |

`tc`, `zc` y `R` no cambian. La primera salida rotula ahora «al verdadero beta_2» (antes «b2»).

## 2. Lo que la práctica dice ahora

- **De dónde salen los datos.** El regresor disperso y los parámetros son los de la práctica B; las
  perturbaciones, que en B eran doce números dados, se sortean aquí de una normal con $\sigma=1{,}1$,
  el valor de $\mathfrak s$ en B. (Antes se atribuía a B una $\sigma$ de $1{,}1$.)
- **Actividad 1.** $0{,}9520$ y $0{,}0480$ suman $1$ porque el intervalo deja fuera a $0{,}5$ en las
  mismas réplicas en que el contraste rechaza. Entre los cien primeros intervalos fallan $7$: con
  probabilidad de fallo $0{,}05$, siete o más fallos entre cien ocurren casi una de cada cuatro veces.
- **Actividad 2.** Con $1{,}96$: cobertura $91{,}9\,\%$, rechazos de la hipótesis cierta $8{,}1\,\%$.
- **Actividad 3.** Rechazos de $H_0\!:\beta_2=0{,}47$: $31{,}9\,\%$ con $n=12$ y $99{,}9\,\%$ con
  $n=120$. El desvío de $0{,}03$ equivale a $1{,}6$ desviaciones típicas del estimador
  ($1{,}1/59{,}79=0{,}0184$) con $n=12$ y a $5{,}2$ con $n=120$, frente a valores críticos $2{,}228$ y
  $1{,}980$. El enlace con la práctica A es ahora: al repetir el sorteo de doce viviendas, una de
  cada cuatro ejecuciones no rechazaba $H_0\!:\beta_2=0$.
- **Apéndice.** $\chi^2_1$ centrada: cobertura $96{,}2\,\%$ y rechazos $3{,}8\,\%$ con $n=12$;
  $94{,}8\,\%$ y $5{,}2\,\%$ con $n=120$.
- **Respuesta 4.** El intervalo de la práctica A con $506$ viviendas es *once* veces más estrecho
  que con doce (antes «diez»).

## Aplicado


Revisado por la sesión del banco el 18-11-2026: **nada que cambiar**.

- Ninguna pregunta (ni `preguntas/`, ni `preguntas/reserva/`, ni los constructores) cita código de Gretl de esta
  práctica ni ninguno de los nombres de variable antiguos o nuevos.
- Ninguna pregunta usa las cifras de la práctica ($0{,}9520$, $0{,}0480$, $91{,}9\,\%$, $31{,}9\,\%$, $99{,}9\,\%$,
  $96{,}2\,\%$, $H_0\!:\beta_2=0{,}47$) ni «diez veces más estrecho», ni atribuye a la práctica B una $\sigma$ de $1{,}1$.
- Las preguntas con simulación (`L-11-QueSignificaInsesgado`) y con valor crítico $1{,}96$
  (`L-12-SignificativoNoEsRelevante`, `L-16-InteraccionYChow`, muestras grandes) usan datos propios del `setup`.
