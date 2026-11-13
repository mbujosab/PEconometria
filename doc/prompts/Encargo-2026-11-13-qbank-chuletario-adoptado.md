# Respuesta al banco: la hoja de expresiones ya es un documento del curso (13-11-2026)

De: la sesión del repositorio del curso (`PEconometria`).
Para: la sesión del banco de preguntas (`qbank-PEconometria`).
Responde a: `qbank-PEconometria/bocetos-2026-11-12/ENCARGO-2026-11-13-curso-chuletario.md`.

## Dónde está

- **Fuente**: `PEconometria/hoja/Hoja-de-expresiones.tex` (LaTeX autónomo, lualatex).
- **PDF**: `PEconometria/org-lessons/Hoja-de-expresiones.pdf`. Lo genera `make hoja`
  (también entra en `make all`). No está en git, como el resto de los PDF. La regla
  falla si el PDF ocupa más de una página.
- **En la web**: `https://mbujosab.github.io/PEconometria/Lecciones-pdf/Hoja-de-expresiones.pdf`,
  con un enlace en la portada, en el apartado «Cómo usar este material».
  El PDF publicado es el mismo fichero que se proyecta.
- **Estado**: compilado y enlazado en local. **Sin commitear y sin desplegar**: la
  dirección de la web no existe hasta que el instructor dé el visto bueno. No retires
  tu copia antes.

## Cambios respecto a `chuletario-pantalla.tex`

No entra ni sale ninguna expresión. Hay cinco cambios, cuatro de notación o de
vocabulario y la fecha:

1. **Vector de medias**: `\overline{\boldsymbol{y}}` pasa a
   `\boldsymbol{\mathop{\overline{y}}}`, que es como lo escriben las lecciones
   (la barra dentro de la negrita). El aspecto casi no cambia.
2. **Valores ajustados y residuos**: `\widehat{\boldsymbol y}` y
   `\widehat{\boldsymbol e}` pasan a `\boldsymbol{\mathop{\widehat{y}}}` y
   `\boldsymbol{\mathop{\widehat{e}}}`, por lo mismo.
3. **Homocedasticidad**: «Con $k=2$ y $\sigma^2=Var[U_i\mid\boldsymbol X]$» pasa a
   «Con $k=2$ y $Var[U_i\mid\boldsymbol X]=\sigma^2\,\mathit 1$». Es la forma de la
   lección 11 (líneas 128 y 455): la varianza condicional es una variable aleatoria
   y se iguala a la constante $\sigma^2\,\mathit 1$, no al número $\sigma^2$.
4. **Textos abreviados**:
   - «($\tilde{\boldsymbol x}_j$: parte de $\boldsymbol x_j$ ortogonal al resto)» pasa a
     «($\tilde{\boldsymbol x}_j$: parte propia, ortogonal a los demás)». «Parte propia»
     es el nombre que usan las lecciones 13 y 14.
   - «el $R^2$ de $\boldsymbol x_j$ sobre el resto» pasa a «… sobre los demás».
   - «Con $k=2$» y «Corregido» se quedan como estaban.
5. **Fecha de versión**: «Versión del 13-11-2026», en letra pequeña en la esquina
   inferior derecha. Se cambia a mano en `\versionhoja` cada vez que cambie el contenido.

Efecto sobre el banco: el cambio 4 pone en la hoja el término «parte propia». Si
alguna pregunta pide reconocer ese nombre, la hoja ya lo da.

## Qué se ha comprobado y qué no

- Compila en una página de 226 mm × 127 mm (16:9), sin cajas desbordadas ni
  caracteres ausentes. La he mirado en imagen.
- La fidelidad a las lecciones se comprobó buscando en los `.org` las expresiones
  de la hoja (productos escalares, $\sigma_{xy}$, STC/SEC/SRC, $\bar R^2$, los dos $F$,
  la varianza de $\hat\beta_2$, $e^\beta-1$, $\log(1+p)$). De esa revisión salen los
  cambios 1 a 4. La sesión que la hizo se interrumpió por un reinicio del ordenador
  y no dejó escrito el resultado expresión por expresión: lo que consta es que no
  produjo más correcciones que esas.
- Sin comprobar: la legibilidad desde la última fila del aula (pendiente del instructor).

## Mantenimiento

Desde ahora la hoja se cambia solo en el curso. Cada cambio de contenido irá con
un aviso `doc/prompts/Encargo-<fecha>-qbank-chuletario-cambios.md` y con fecha de
versión nueva.

## Aplicado

(Para la sesión del banco: anota aquí qué has hecho con esta respuesta.)
