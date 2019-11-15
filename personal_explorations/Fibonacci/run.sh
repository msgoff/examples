#!/bin/bash

rm *.cmi 
rm *.cmx
rm *.o$
rm *.o
rm *.out

bash build.sh fib.ml fib.out
bash build.sh even.ml even.out
bash build.sh sum.ml sum.out

./sum.out < <(for i in `seq 1 32` ;do ./fib.out $i|xargs -i ./even.out "{}" ;done)
