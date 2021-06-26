set key at 250,5e6 box lw 1 height 0.75 spacing 0.75
set key font "Times,25"
set tics font "Times,30"
set ytics nomirror
set y2tics nomirror

set xrange[0:250]
set xtics 25 offset 0,-2,0

set yrange[2.5e6:5e6]
set ytics 5e5 # = 5 tics

set y2range[6e-19:1.6e-18]
set y2tics 2e-19 # = 5 tics

set lmargin at screen 0.15
set rmargin at screen 0.85
set bmargin at screen 0.15
set tmargin at screen 0.85

set xlabel "Timestep" font "Times,33" offset 0,-4,0
set ylabel "Number of DSMC Particles" font "Times,33" offset -25,0,0
set y2label "Average Linear Kinetic Energy (J)" font "Times,33" offset 25,0,0

plot \
"< cat log.dsmcFoam | grep 'Number of DSMC particles' | cut -d '=' -f 2"  w l axis x1y1 t "Number of DSMC Particles" lw 4 lc rgb "#0000ff", \
"< cat log.dsmcFoam | grep 'Average linear kinetic energy' | cut -d '=' -f 2"  w l axis x1y2 t "Average Linear Kinetic Energy" lw 4 lc rgb "#FF0000"