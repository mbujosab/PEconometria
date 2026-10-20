set xlabel 'sqft'
set ylabel 'bedrms'
set zlabel 'price' rotate
set view 62,300
set samples 12
set isosamples 12
set key off
set xyplane 0
set xrange [1000:3100]
set yrange [2.8:4.2]
set ytics 1
set border 4095 lc rgb '#888888'
set style arrow 1 nohead lw 1.5 lc rgb 'red'
f(x,y) = 121.1786827 + 0.1483138251*x + -23.91061413*y
splot f(x,y) with lines lc rgb '#bbbbbb', '-' using 1:2:3 with points pt 7 lc rgb 'blue', '-' using 1:2:3:(0):(0):4 with vectors arrowstyle 1
1065 3 199.9
1254 3 228
1300 3 235
1577 4 285
1600 3 239
1750 4 293
1800 4 285
1870 4 365
1935 4 295
1948 4 290
2254 4 385
2600 3 505
2800 4 425
3000 4 415
e
1065 3 207.401 -7.50106
1254 3 235.432 -7.43238
1300 3 242.255 -7.25481
1577 4 259.427 25.5729
1600 3 286.749 -47.749
1750 4 285.085 7.91458
1800 4 292.501 -7.50111
1870 4 302.883 62.1169
1935 4 312.523 -17.5235
1948 4 314.452 -24.4516
2254 4 359.836 25.1644
2600 3 435.063 69.9372
2800 4 440.815 -15.8149
3000 4 470.478 -55.4777
e
