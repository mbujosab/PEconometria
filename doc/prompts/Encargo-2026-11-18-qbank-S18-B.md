# Aviso de las lecciones al banco de preguntas (18-11-2026, tarde)

Revisión crítica de la práctica B de la sesión 18 (`S18-Prct-B-regresor-disperso.org`), aplicada entera
por decisión del autor y compilada; sin commitear ni desplegar todavía. Ninguna cifra de las salidas
cambia.

## 1. Lo que puede afectar a una pregunta

- **Las doce perturbaciones no tienen $\sigma$ declarada.** La figura de la lección 12 las fija a mano
  (suman cero; $\mathfrak s=1{,}1001$ en los dos ajustes). La práctica ya no dice «doce perturbaciones
  normales de desviación típica en torno a $1{,}1$», sino «doce perturbaciones dadas, las mismas en los
  dos ajustes». Si alguna pregunta atribuye a este ejemplo una $\sigma$ verdadera de $1{,}1$, corregirla:
  $1{,}10$ es la estimación $\mathfrak s$.
- **La práctica rehace los dos ajustes de la figura, no la figura** (no dibuja nada).
- **«Grados de libertad del residuo»** (antes «del modelo») en la actividad 1.

## 2. Lo que la práctica dice ahora y antes no decía

- Actividad 2: el $R^2$ sube de $0{,}42$ a $0{,}99$ con el mismo residuo, porque el regresando varía
  más (su desviación típica pasa de $1{,}37$ a $9{,}06$).
- Actividad 3: los dos estadísticos $t$ de la hipótesis cierta coinciden ($-0{,}04$) porque el error de
  estimación y el error estándar se dividen los dos por diez ($-0{,}0069/0{,}184$ y
  $-0{,}00069/0{,}0184$).
- Actividad 4: comparación con la actividad 2. Allí el regresor en desviaciones se multiplica por diez
  y cambia también el regresando (la pendiente sigue siendo $0{,}5$ por unidad): el $t$ pasa de $2{,}68$
  a $27{,}14$. En el cambio de unidades el regresando es el mismo, y coeficiente y error estándar se
  dividen los dos por cien: el $t$ no cambia. «Un cambio de unidades no añade variación al regresor».
- $t$ y $p$ sirven para comparar *la precisión relativa con que se han estimado dos coeficientes*.

Anclas nuevas en el HTML: `#concentrado` (actividad 1) y `#hipotesis-cierta` (actividad 3).

## Aplicado


Revisado por la sesión del banco el 18-11-2026: **nada que cambiar**.

- Ninguna pregunta (ni `preguntas/`, ni `preguntas/reserva/`, ni los constructores de L-12 a L-14) usa el ejemplo de
  las doce perturbaciones ni le atribuye una $\sigma$ de $1{,}1$; tampoco aparecen $1{,}1001$, $0{,}42$/$0{,}99$ como
  $R^2$ de ese ejemplo, $2{,}68$ ni $27{,}14$.
- «Grados de libertad del modelo» no aparece en el banco (ya se comprobó con el aviso del 17-11).
- Ninguna pregunta dice que la práctica dibuje la figura de la lección 12. La única pregunta con figura es
  `L-14-SubespacioEstableCoordenadasNo`, que es otra.
- Lo del apartado 2 es contenido nuevo de la práctica: no contradice ninguna pregunta existente
  (`L-12-QueCambiaConLasUnidades` y `L-12-CambioDeUnidadesEnLaTabla` ya dicen que el $t$ no cambia con las unidades). No se han escrito preguntas nuevas con él.
