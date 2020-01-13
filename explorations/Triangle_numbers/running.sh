head -n $1 TEST |tail -n 1000  > t_0
./trt t_0
