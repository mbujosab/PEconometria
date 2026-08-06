set linetype 1 lc rgb "#D95F02"
set linetype 2 lc rgb "#7570B3"
set decimalsign ','
set title "Precio ($)"
set nokey
set datafile missing "?"
set xrange [0:2]
set yrange [3199.96:51801]
set ytics nomirror
set border 2
set noxtics
set boxwidth 0.3 relative
plot \
'-' using 1:3:2:5:4 w candlesticks lw 2 notitle, \
'-' using 1:2:2:2:2 w candlesticks lt 1 notitle, \
'-' using 1:2 w points lt 2 pt 1 notitle, \
'-' using 1:2 w points lt 0 pt 7 ps 0.25 notitle
1 5000 16800 24999 37201 506
e
1 21200
e
1 22511.5
e
# auxdata 36 2
1 37298
1 37602
1 37900
1 38700
1 39799
1 41299
1 41702
1 42302
1 42800
1 43101
1 43499
1 43800
1 43998
1 44802
1 45401
1 46000
1 46700
1 48301
1 48499
1 48801
1 50001
1 50001
1 50001
1 50001
1 50001
1 50001
1 50001
1 50001
1 50001
1 50001
1 50001
1 50001
1 50001
1 50001
1 50001
1 50001
e
