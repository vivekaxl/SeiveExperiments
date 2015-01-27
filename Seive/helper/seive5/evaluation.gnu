set terminal png
set key horizontal
set output "evaluation.png"
set title "Number of evaluation"
set xlabel "Models"
set ylabel "Evaluations"
set boxwidth 0.1
set logscale y 10
set xrange [-0.75:7]
#set yrange [-6:3]
plot 'evaluation.dat'  using ($0-.40):4:5:xtic(1) with boxerrorbars title col, \
'' using ($0-0.30):2:3 with boxerrorbars title col,\
'' using ($0-0.20):6:7 with boxerrorbars title col,\
'' using ($0-0.10):8:9 with boxerrorbars title col,\
'' using ($0):10:11 with boxerrorbars title col,\
'' using ($0+0.10):12:13 with boxerrorbars title col,\
'' using ($0+0.20):14:15 with boxerrorbars title col
