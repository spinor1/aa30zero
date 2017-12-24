# Gnuplot script for AA-30.ZERO

reset
set terminal aqua enhanced title 'AA-30.ZERO' size 1200 900
set multiplot layout 2,2 title 'My Antenna'
set grid
unset key

fname = 'mydata.txt'

set title 'Impedance (R, X, and Z)'
plot   fname using 1:2 with line linewidth 3, \
       ''    using 1:3 with line linewidth 3, \
       ''    using 1:4 with line linewidth 3, \
       0.0             with line linewidth 3 lc "#80000000"

stats '' using 1:5 nooutput
set title sprintf("Retrun Loss (max = %6.2fdB at %6.3fMHz)", STATS_max_y, STATS_pos_max_y)
plot '' using 1:5 with line linewidth 3 linetype 4


stats fname using 1:6 nooutput
set title sprintf("VSWR (min = %6.2f at %6.3fMHz)", STATS_min_y, STATS_pos_min_y)
set yrange [1:10]
plot '' using 1: 6 with line linewidth 3 linetype 7, \
     1.0           with line linewidth 3 lc "#80000000"

set title 'Smith Chart'
set polar
set grid polar
set size square
set xrange [-1:+1]
set yrange [-1:+1]
plot '' using 7:8 with line linewidth 3 linetype 6

unset multiplot
reset
