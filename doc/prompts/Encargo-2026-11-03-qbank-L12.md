# Aviso al banco de preguntas: relectura y auditoría de la lección 12 (03-11-2026)

Para la sesión que mantiene el banco de preguntas (`qbank-PEconometria`). Cierra también el aviso anterior, `Encargo-2026-10-30-qbank-L12.md`, cuyo apartado «Aplicado» sigue en blanco.

Estado de la lección: `PEconometria`, `main` en `dada9d0` (relectura del autor del 30-10 al 03-11 e informe de auditoría `doc/prompts/Informe-2026-11-03-auditoria-L12.org`, aplicado entero). Se imparte el viernes 06-11-2026.

## Qué se ha comprobado ya en el banco

El 03-11 se han leído las siete preguntas de L12 (`preguntas/L-12-*.json`: `CambioDeUnidadesEnLaTabla`, `ElNivelLoEligeQuienContrasta`, `IntervaloYContraste`, `LeerUnaTablaDeGretl`, `RuidoEnElPieDeLaTabla`, `SignificativoNoEsRelevante`, `UnaSalidaFilaAFila-x3`). **Ninguna contradice lo que la lección dice ahora**: el valor $p$ se define como probabilidad; «D.T. de la regresión» es el rótulo de $\mathfrak s$; la semiamplitud es $t_c\cdot\mathrm{ee}(\hat\beta_2)$; «la probabilidad de que $H_0$ sea cierta» aparece solo como distractor falso. «Ruido» no aparece en ningún enunciado ni explicación; solo en el nombre interno `L-12-RuidoEnElPieDeLaTabla`, que el alumno no ve. No hay nada que corregir.

Del aviso del 30-10 («perturbación», nunca «ruido»; lema del error estándar «longitud del residuo por unidad de longitud del regresor en desviaciones»): tampoco afecta a ninguna pregunta. Basta rellenar su «Aplicado» con «nada que cambiar».

## Lo que una pregunta nueva de L12 debe respetar (cambios del 30-10 al 03-11)

1. **El valor $p$ es una probabilidad**: la de que la distribución $t_{n-k}$ produzca un valor tan alejado de cero, o más, que el $t$ obtenido, si $H_0$ fuese cierta. Informa de la rareza de los datos bajo $H_0$; no «presenta la misma decisión» que el contraste, aunque con él la decisión sea inmediata (rechazar al nivel $\alpha$ si $p<\alpha$). Nunca «la probabilidad de que $H_0$ sea cierta» (salvo como distractor).
2. **Las columnas $t$ y valor $p$ «se reconstruyen a partir de las dos primeras y añaden su lectura»**. La lección ya no dice que sean «derivadas» ni que «no añadan información». La pregunta de repaso 10 de la lección se titula ahora «Qué columnas de una tabla de resultados cambian con las unidades».
3. **El coeficiente es el efecto del regresor $x_j$ sobre el regresando $y$**, en las unidades del problema; la tabla de la lección dice que los rótulos de las columnas son los de Gretl en español.
4. **El nivel de significación es una convención**: una de cada veinte; $2{,}58$ con una de cada cien, $3{,}29$ con una de cada mil; depende de cuánto preocupe cada uno de los dos errores; el $5\,\%$ es la costumbre en economía. «Error de tipo I» no se nombra en el curso: «rechazar $H_0$ siendo cierta, el nivel $\alpha$». $\alpha$ se fija de antemano; la ventaja del valor $p$ es que cada lector puede aplicar el suyo.
5. **Región crítica**, en sus dos formas: «$t$ fuera de $[-t_c,t_c]$, es decir, $\vert t\vert>t_c$» y, geométricamente, un cono alrededor de la dirección del regresor en desviaciones.
6. **«Punto de las medias»** $(\mu_{\boldsymbol x},\mu_{\boldsymbol y})$, nunca «centroide»; la recta de regresión es la bisectriz del haz de rectas del intervalo. La semiamplitud es «la mitad de la anchura del intervalo (el margen de error del curso de Estadística)» y una diferencia de pendientes.
7. **El número $\mathfrak s$ del pie** («D.T. de la regresión», «S.E. of regression»): $\mathfrak s=\sqrt{\mathrm{SRC}/(n-k)}$, estima la desviación típica $\sigma$ de la perturbación, está en las unidades de $y$ y es el numerador de todos los errores estándar. «Perturbación típica» = una del tamaño de $\mathfrak s$. Sus dos comparaciones: con $\sqrt{\mathrm{STC}/n}$ (misma información que $1-R^2$) y con el efecto estimado, $\mathfrak s/\hat\beta_2$ en unidades de $x$ frente a la desviación típica de $x$ en la muestra.
8. **Toda la sección «Lectura geométrica: la razón de catetos» es para $k=2$**; con más regresores entra la parte propia del regresor (lección 14, apéndice 5.4), y la escritura con $R^2$ pasa al $F$ de la lección 13.
9. **Hecho corregido en la lección**: en la práctica A de la sesión 16 (perturbaciones normales) el contraste de normalidad del histograma dio valor $p$ $0{,}13$; el $0{,}000$ es de la práctica C, actividad 2 ($n=12$, perturbación $\chi^2$). Si alguna pregunta cita esos valores, que sea con esta atribución.
10. **Hipótesis alternativa** $H_1\!:\beta_2\neq0$ «de dos colas»: desviaciones «por debajo y por encima de cero», no «muy negativas o muy positivas».
11. Regla de redacción vigente en la Guía §4 (`doc/prompts/GuiaDeEstilo.org`): **nada se presupone**: nombrar los objetos enteros («la distribución $t_{n-k}$», «la hipótesis alternativa») y explicar cada término técnico en su primera aparición.

Opcional: renombrar `L-12-RuidoEnElPieDeLaTabla` (por ejemplo, `L-12-LaPerturbacionEnElPieDeLaTabla`) si el banco quiere que sus nombres sigan la regla «perturbación, nunca ruido». No afecta al alumno.

## Aplicado

(Pendiente: lo rellena la sesión del banco.)
