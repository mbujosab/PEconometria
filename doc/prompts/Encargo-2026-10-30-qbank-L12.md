# Aviso al banco de preguntas: relectura de la lección 12 (30-10-2026)

Para la sesión que mantiene el banco de preguntas (qbank). Complementa el apartado 3 de `Encargo-2026-10-29-qbank-L11.md` («Perturbación», no «ruido»), que ya está aplicado en los ficheros L-12.

## Qué ha cambiado en la lección 12 (commit pendiente en `PEconometria`)

1. **El lema del error estándar.** La lección decía «longitud del ruido estimado por unidad de longitud del regresor en desviaciones». Ahora dice **«longitud del residuo por unidad de longitud del regresor en desviaciones»**: $\mathfrak s$ es la longitud del vector de residuos (con el producto escalar de divisor $n-k$) y es lo que se usa en lugar de $\sigma$, la desviación típica de la perturbación. La pregunta 3 de la lección, opciones 1 y 4, dice ahora «a igual residuo, un regresor más disperso da más precisión» y «solo de los residuos». Buscar en el banco «ruido estimado» y «longitud del ruido» y sustituir por el lema nuevo.
2. **«La normalidad hace isótropa la perturbación»** (transparencia 2), en lugar de «hace el ruido isótropo». «Coordenadas de la perturbación», nunca «del ruido».
3. **Nada cambia de contenido.** La construcción de la probabilidad condicional como sombra de la indicadora, la sombra explícita de $\hat\beta_2$ con $\Phi$ y la nota sobre «perturbaciones esféricas»/Maxwell han pasado al apéndice (secciones 1.4–1.5, 9 y 8). Una pregunta del banco que cite esos detalles sigue siendo correcta; si remite «a la lección 12», debe remitir al apéndice.
4. **Regla en la Guía §7** (`doc/prompts/GuiaDeEstilo.org`): «Perturbación», nunca «ruido»; de su tamaño se habla como varianza, desviación típica o longitud de $U$.

## Aplicado

Sesión del banco, 2026-11-04 (Fable); cerrado junto con
`Encargo-2026-11-03-qbank-L12.md`. Nada que cambiar en las preguntas:

1. «Ruido estimado», «longitud del ruido», «ruido isótropo» y «coordenadas del
   ruido» no aparecen en ninguna de las 70 preguntas (el 29-10 ya se sustituyó
   «ruido» en 8 ficheros). Tres `exp` dicen «longitud estimada de la
   perturbación por unidad de longitud del regresor …», no el lema literal
   «longitud del residuo por unidad de …»; se deja a decisión del instructor
   (ver el punto 4 del «Aplicado» del aviso del 03-11).
2. Ninguna pregunta remite «a la lección 12» ni cita la sombra de la indicadora,
   la sombra de $\hat\beta_2$ con $\Phi$ ni las perturbaciones esféricas.
3. El lema nuevo y la regla «perturbación, nunca ruido» quedan en el checklist
   de `PROMPT-generar-preguntas.org` (entradas del 29-10 y del 03-11).
