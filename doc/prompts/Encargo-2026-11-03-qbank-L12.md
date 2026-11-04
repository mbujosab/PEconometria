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

Sesión del banco, 2026-11-04 (Fable). Comprobación independiente de lo que dice
el apartado «Qué se ha comprobado ya»: barrido mecánico de las 70 preguntas
(`preguntas/L-*.json`) con las palabras de los once puntos; sin cambios en las
preguntas, sin commit ni Moodle.

1. **Nada que corregir en el banco**, como dice el aviso. «Ruido» solo en el
   nombre interno `L-12-RuidoEnElPieDeLaTabla` (las otras dos coincidencias son
   «construidos»). «La probabilidad de que $H_0$ sea cierta» aparece dos veces,
   ambas como distractor falso (L-12-IntervaloYContraste y
   L-13-QueContrastaElFDelPie), con el `exp` que la corrige en el sentido del
   punto 1. No hay «centroide» (L-07 ya dice «punto de las medias»),
   «derivadas», «no añaden información», «error de tipo I», «muy negativas o
   muy positivas», ni los valores $p$ del contraste de normalidad ($0{,}13$ /
   $0{,}000$); los «0,000» del banco son valores $p$ de tablas simuladas. El
   nivel como convención ya está en L-12-ElNivelLoEligeQuienContrasta y en
   L-12-UnaSalidaFilaAFila-x3 («el $5$\,\% es el nivel …», «solo por
   costumbre»). Ninguna pregunta remite «a la lección 12» ni a ninguna otra.
2. **Reglas añadidas al checklist** de `PROMPT-generar-preguntas.org`
   (entrada «Reglas de la lección 12, 3 de noviembre de 2026»): valor $p$ como
   probabilidad; columnas $t$ y valor $p$ «se reconstruyen … y añaden su
   lectura»; nivel como convención (una de cada veinte / cien / mil) sin «error
   de tipo I»; región crítica en sus dos formas; «punto de las medias»;
   $\mathfrak s$ y sus dos comparaciones; «razón de catetos» solo para $k=2$;
   $H_1$ de dos colas «por debajo y por encima de cero»; atribución de los
   valores $p$ de normalidad (A: $0{,}13$; C, actividad 2: $0{,}000$); y el lema
   del error estándar del aviso del 30-10.
3. **Renombrado opcional**: no aplicado. Se mantiene la decisión del
   instructor del 29-10 (renombrar obliga a rehacer la categoría de Moodle y la
   selección); el alumno no ve el nombre.
4. **Para decisión del instructor** (no tocado): tres `exp` describen
   $\mathfrak s$ como «longitud estimada de la perturbación por unidad de
   longitud del regresor en desviaciones» (L-12-IntervaloYContraste y
   L-12-RuidoEnElPieDeLaTabla) o «por unidad de longitud propia del regresor»
   (L-13-TIndividualesPequenosFGrande). Es la sustitución de «ruido estimado»
   del 29-10 y es coherente con el punto 7 ($\mathfrak s$ estima $\sigma$),
   pero no es literalmente el lema nuevo «longitud del residuo por unidad de
   longitud del regresor en desviaciones». Si se quiere el lema literal, son
   tres ficheros y tres categorías de Moodle.
