# Encargo: inventario del curso previo de Estadística (material de otra profesora)

Repositorio: este mismo (`PEconometria`). Encargo para una sesión nueva (Opus). No es una tarea de estilo ni de edición del curso: **no se toca ningún fichero del curso**. El único producto es un informe nuevo en `doc/prompts/` y un guion de extracción en `doc/tools/`.

## Para qué

El autor del curso ha concluido (25-10-2026) que «Principios de Econometría» excede la formación previa de sus alumnos y estudia escribir para 2027-28 una versión aligerada. Para diseñarla hace falta saber con qué vocabulario, notación y ejemplos llegan los alumnos del curso de Estadística del primer curso del grado de PPE. El material de ese curso está en `doc/CursoEstadisticaPrevio/`: siete `.pptx` y un `.pdf` (Tema 6).

**Confidencialidad:** es material de otra profesora. La carpeta está en `.gitignore` y no se publica. El informe que escribas sí se commitea (el repositorio es público): no reproduzcas diapositivas, limita las citas literales a una línea, no incluyas el nombre de la profesora ni imágenes.

## Fase 1: extracción del texto (mecánica)

No hay `python-pptx`. Escribe `doc/tools/extraer-pptx.py`, sin dependencias fuera de la biblioteca estándar, que:

1. Abra cada `.pptx` como zip, recorra `ppt/slides/slideN.xml` en orden numérico y extraiga el texto de los elementos `a:t` (texto) **y** `m:t` (fórmulas OMML), respetando el orden del documento. Si existe `ppt/notesSlides/notesSlideN.xml`, añade sus notas bajo el rótulo `Notas:`.
2. Cuente por diapositiva las imágenes (`p:pic`) y marque las diapositivas que tienen imágenes y menos de 20 caracteres de texto: ahí las fórmulas o los contenidos están en imagen y el texto no basta.
3. Escriba un `.txt` por fichero en `doc/CursoEstadisticaPrevio/txt/` (carpeta ignorada por git junto con el resto), con separadores `=== Diapositiva N ===`.

Para el PDF: `pdftotext -layout`. Ejecuta el guion con `python3 -I doc/tools/extraer-pptx.py <ficheros>` pasando los ficheros como argumentos, no desde dentro de la carpeta.

Anota en el informe el recuento por fichero: diapositivas, diapositivas con texto, diapositivas solo con imagen, caracteres extraídos.

## Fase 2: el inventario

Lee los `.txt` enteros y escribe `doc/prompts/Inventario-2026-10-25-estadistica-previa.org` con estas secciones, en este orden:

1. **Fichero por fichero.** Tema, número de diapositivas, lista de conceptos en el orden en que aparecen (una línea por concepto, con el número de diapositiva), ejemplos y datos usados, software o herramienta (Excel, calculadora, tablas, R, ninguno), tipo de ejercicios.

2. **Notación.** Tabla símbolo → significado → fichero y diapositiva. Interesan los símbolos tal cual se escriben: media (x̄, m, μ), varianza (con n o con n−1; S², s², σ²), desviación típica, covarianza, correlación (r, ρ), recta de regresión (cómo se escribe, con qué letras los coeficientes), probabilidad, variable aleatoria (mayúscula/minúscula), esperanza (E(X), E[X], μ), normal (N(μ,σ) o N(μ,σ²)), estadístico de contraste, intervalo. Si las fórmulas están en imagen, dilo y lista las diapositivas afectadas: no inventes la notación.

3. **Descriptiva de dos variables (Temas 3 y 4).** Qué hay exactamente: tabla de doble entrada, covarianza, correlación, recta de regresión por mínimos cuadrados (¿con fórmula de la pendiente? ¿deducida o dada?), residuos, coeficiente de determinación, predicción, varianza residual. Qué interpretación se da a la pendiente.

4. **Probabilidad y variable aleatoria (Temas 5 y 6).** Qué distribuciones aparecen (binomial, Poisson, normal, t, chi-cuadrado, F), si se habla de independencia, de distribución conjunta, de esperanza de una suma, de varianza de una suma, de tipificación, del teorema central del límite.

5. **Inferencia (los dos ficheros de inferencia).** Qué hay exactamente: población y muestra, muestreo aleatorio, distribución de la media muestral, intervalo de confianza para la media (¿varianza conocida, desconocida, o ambas?), contraste sobre la media (¿hipótesis nula y alternativa, nivel de significación, valor p, errores de tipo I y II, t de Student?). Si solo hay inferencia sobre la media poblacional, dilo así. Señala si la palabra «estimador» aparece y si se distingue de «estimación».

6. **Lista de comprobación: qué NO aparece.** Responde sí / no / parcial (con diapositiva) para cada ítem: vectores o flechas; sumatorios con índice; esperanza condicional; independencia de variables aleatorias; muestra como lista de variables aleatorias; insesgadez; varianza de un estimador; t de Student; chi-cuadrado; F; logaritmos; matrices; alguna demostración o «por qué» de una fórmula (busca «demostración», «demostrar», «¿por qué?», «se deduce»); interpretación económica de algún resultado.

7. **Correspondencia con el curso actual (borrador).** Lee `doc/prompts/PlanDeEscritura.org` §3, §7.0 y §11, y la primera página de cada `org-lessons/S*-Lecc*.org`. Tabla con una fila por lección (L1 a L16): qué da por sabido esa lección del curso previo, y si el inventario lo confirma (sí / no / parcial, con referencia). Márcala como borrador: la revisa el autor.

8. **Recuento final** y, en diez líneas como máximo, lo que a tu juicio más importa para una versión aligerada. Separa lo que has visto de lo que opinas.

## Reglas

1. No edites nada fuera de `doc/tools/extraer-pptx.py`, `doc/CursoEstadisticaPrevio/txt/` y el informe. No toques lecciones, prácticas, Plan, Guía ni `index.org`.
2. Hay otra sesión de Claude trabajando en este repositorio y el profesor puede estar editando en Emacs. No hagas `git add`, commits ni `make`.
3. Informe en org-mode, en español, directo, sin adornos. Citas literales de una línea como máximo.
4. Si algo no se puede extraer (fórmulas en imagen, texto en cuadros agrupados, un pptx que no abre), dilo en el informe con el fichero y la diapositiva. No rellenes huecos con lo que «suele verse» en un curso de estadística.

## Entrega

- `doc/tools/extraer-pptx.py`
- `doc/CursoEstadisticaPrevio/txt/*.txt` (no se commitea)
- `doc/prompts/Inventario-2026-10-25-estadistica-previa.org`
- Un apartado final «Aplicado» en este mismo fichero con la fecha, los recuentos y las limitaciones encontradas.

## Aplicado (2026-10-25)

- `doc/tools/extraer-pptx.py` escrito y ejecutado sobre los siete `.pptx`; `pdftotext -layout` sobre el PDF. Salida en `doc/CursoEstadisticaPrevio/txt/` (ignorada por git). Además de lo pedido, el guion cuenta las fórmulas OLE (MathType) y lee el texto de los SmartArt, y comprueba que el orden numérico de las diapositivas coincide con el de presentación (coincide en los siete).
- Informe: `doc/prompts/Inventario-2026-10-25-estadistica-previa.org`, secciones 1–8 en el orden pedido.
- Recuentos (diapositivas / con texto / solo imagen / caracteres / fórmulas OLE): Tema 0-1 59/59/1/18 390/0; Tema 2 25/25/0/8 219/13; Tema 3 48/48/0/16 434/41; Tema 4 igual que Tema 3; Tema 5 50/5/42/1 491/0; Inferencia 44/42/3/16 984/117; «la mia» 10/1/3/70/0; Tema 6 (PDF) 47 páginas, todas con texto, 37 423 caracteres.
- Limitaciones:
  - Las fórmulas de los Temas 2, 3 y de inferencia son objetos MathType sin texto, y el Tema 5 es casi entero capturas de pantalla. Para no inventar la notación, convertí los `.pptx` a PDF con LibreOffice en el scratchpad (fuera del repositorio) y leí visualmente esas diapositivas; la notación del informe sale de esa lectura.
  - En el PDF del Tema 6, `pdftotext` rompe las letras griegas; leí visualmente las páginas 12, 33, 34 y 38.
  - Los ficheros «Tema 3» y «Tema 4» tienen el mismo texto (solo cambia el título); el Tema 6 es una versión ampliada del Tema 5.
  - En la carpeta falta el material de la descripción de una variable y del cálculo de probabilidades, que el programa (Tema 0-1, D10) sí anuncia. Lo que el informe da por ausente se refiere a la carpeta.
  - El umbral de «solo imagen» (< 20 caracteres) no marca las imágenes que llevan pie de página de la facultad.
- Sin `git add`, commits ni `make`. No se ha tocado ningún otro fichero.
