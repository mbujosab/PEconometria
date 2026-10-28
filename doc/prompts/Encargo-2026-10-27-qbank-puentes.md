# Aviso al banco: puentes con el curso previo de Estadística en las lecciones 11, 12 y 13 (27-10-2026)

Origen: `Encargo-2026-10-27-puentes-inferencia.md`, aplicado el 27-10-2026
en este repositorio (sin commitear todavía; el autor revisará el diff). Las
lecciones enuncian ahora material nuevo que es evaluable, en el sentido de
que la lección lo enuncia.

## Qué ha cambiado

1. **Lección 12, transparencia nueva «Un contraste que ya puede hacer: la
   media»** (entre «El error estándar, y el precio de estimar $\sigma$» y
   «El contraste $t$»). Contraste de $H_0\!:\mu=\mu_0$ sobre la media con
   $\sigma$ conocida: el estadístico $(\overline X-\mu_0)/(\sigma/\sqrt n)\sim N(0,1)$
   bajo $H_0$, el valor crítico $1{,}96$ al $5\,\%$, la región crítica, el
   nivel de significación $\alpha$ como probabilidad de rechazar $H_0$
   siendo cierta, y la equivalencia con el intervalo: $\mu_0$ no se rechaza
   al nivel $\alpha$ cuando, y solo cuando, está dentro del intervalo al
   $1-\alpha$. Los apuntes explican también la condición $n>30$ del curso
   previo como la aproximación de la $t$ por la normal.
2. **Apéndice de geometría, sección 1.6 nueva «Cuatro reglas de la esperanza y la
   varianza»** (ancla `sec-1-6`; el 28-10 se trasladó allí desde la lección 11, que la remite desde «Insesgadez» y «Varianza»): linealidad de la esperanza,
   $\mathrm{Var}(aZ+b\,\mathit1)=a^2\mathrm{Var}(Z)$, varianza de una suma con
   la covarianza, y covarianza nula bajo independencia (el recíproco es
   falso); como consecuencia, $\mathrm E(\overline X)=\mu$ y
   $\mathrm{Var}(\overline X)=\sigma^2/n$. Los apuntes de «Varianza» añaden la
   media muestral como caso $k=1$ (modelo con la constante como único
   regresor) y los de «MCO es BLUE» el divisor $n-1$ como el mismo caso.
3. **Lección 13**, apuntes de «El $F$ en una tabla de resultados»: la tabla
   «Análisis de varianza» de Excel leída como el triángulo, con la
   advertencia de que la columna que Excel rotula «Valor crítico de F» es el
   valor $p$ del contraste, no $F_c$.

## Qué hacer en el banco

Revisar si alguna pregunta existente contradice lo anterior (en particular,
cualquier uso de «valor crítico de F» en el sentido de Excel) y decidir si
conviene añadir preguntas sobre el contraste de la media y sus equivalencias
con el intervalo, o sobre las cuatro reglas.

## Aplicado

(Rellenar desde la sesión del banco.)
