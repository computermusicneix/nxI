
t = rrand(0,10000);
f = File("osc"++t++".pd", "w");

(
f.write("
#N canvas 635 349 450 300 10;
#X obj 131 100 osc~ " );
)

(
f.write(rrand(100,300).asString++";"
)
)

(
f.write("
#X obj 131 160 dac~;
#X connect 0 0 1 0;
#X connect 0 0 1 1;
")
)

f.close;