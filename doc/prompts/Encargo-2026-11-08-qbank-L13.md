# Aviso al banco de preguntas: lección 13 tras la relectura del autor (06/07-11) y la auditoría (08-11)

Para la sesión del repositorio `qbank-PEconometria` (preguntas `L-13-*.json`). Léase entero y rellénese el apartado «Aplicado» al final.

## Qué ha cambiado en la lección 13 que pueda afectar a preguntas

1. **Lo que un $F$ concluye.** La lección ya no dice que un $F$ significativo pruebe que unos regresores «mejoran el ajuste» ni que quitarlos «empeora el ajuste»: todo regresor acorta el residuo, haya o no relación. Lo que el $F$ dice es que lo acortan **más de lo que cabe esperar por azar**. Regla nueva en `doc/prompts/GuiaDeEstilo.org` §6 («Mejora el ajuste» no es la conclusión de un contraste). Textos de referencia:
   - Transparencia «Tres restricciones sobre hprice2», fila 1: «se rechaza: juntas, contaminación y ratio alumnos/profesor acortan el residuo más de lo esperable por azar».
   - Transparencia «Qué dice y qué no dice el $F$»: «El $F$ dice que los tres regresores en conjunto acortan el residuo más de lo esperable por azar; no dice cuáles ni de qué tamaño es su efecto».
   - Apuntes: «El rechazo de $H_0$ dice que alguna combinación de los regresores acerca el ajuste al precio más de lo que cabe esperar por azar; no dice cuál, ni cuánto, ni con qué precisión».
   Revísese cualquier pregunta u opción de la 13 (y de la 12 o la 14 si las hubiera) que presente «mejora el ajuste» / «empeora el ajuste» como lo que un contraste demuestra. Como opción incorrecta («el $F$ demuestra que los regresores mejoran el ajuste») sigue valiendo.
2. **Conclusión del caso nox/lnox.** «La conclusión correcta no es ``sobran los dos'', sino ``no se puede separar el efecto de uno del efecto del otro''» (antes «no se puede separar cuál de los dos»). Y en los apuntes: «aunque los datos no permitan afirmar que uno añada algo que el otro no aportara ya» (no «aunque ninguno de los dos añada nada al otro»: no rechazar no es aceptar).
3. **Qué se rechaza, dicho siempre.** Cada fila de la tabla de hprice2 nombra la $H_0$ rechazada o no rechazada («Se rechaza $H_0\!:\beta_{\text{nox}}=\beta_{\text{stratio}}=0$: un $F$ tan grande sería muy raro si los dos coeficientes fuesen cero»).
4. **Significación global** = significación conjunta de todos los regresores no constantes; la lección lo declara así la primera vez y usa los dos nombres.
5. **La esperanza de la $F$** es próxima a $1$ *cuando $n-k$ es grande* ($m/(m-2)$); con $n-k=2$ no existe. Si alguna pregunta dice «esperanza $1$» sin condición, matizarla.
6. **Coordenadas de la perturbación.** Su ortogonalidad e igual longitud $\sigma$ no dependen de $H_0$; lo que exige $H_0$ es que $\mathrm{SEC}$ sea una suma de cuadrados de coordenadas *de la perturbación*. (Transparencia «El estadístico $F$».)
7. **Doce viviendas con tres regresores.** Las cifras $F(3,8)=9{,}55$, $F_c=4{,}07$, $p=0{,}005$, $t_{\text{nox}}=-2{,}63$, $t_{\text{stratio}}=-0{,}10$, $t_c=2{,}31$ se calculan ahora en S18-A, actividad 5 (salida `doceViviendasTres.txt`).
8. **Menores**: «no rechazar» explicado («con pocas observaciones el efecto de las restricciones incumplidas alarga poco el cateto y el valor crítico es mayor»); $F<1$ si y solo si el $R^2$ corregido del restringido supera al del completo (pregunta 11 de la lección lo dice ahora); nota 3: con $k-1$ contrastes $t$ al $5\,\%$ la probabilidad de rechazar una $H_0$ cierta «no sería menor que el $5\,\%$, y en la práctica es mayor».

Nada cambia en las cifras de la tabla de resultados ni en las tres $\mathrm{SRC}_r$.

## Aplicado

(rellena la sesión del banco: preguntas revisadas, cambios hechos o «nada que cambiar»)
