screen -d -m -S j1 while read f;do echo $f >> MOOV;echo $f;./trt $f;done < <(ls|grep ^x|sort|head -n 100)
screen -d -m -S j2 while read f;do echo $f >> MOOV;echo $f;./trt $f;done < <(ls|grep ^x|sort|head -n 200|tail -n 100)
screen -d -m -S j3 while read f;do echo $f >> MOOV;echo $f;./trt $f;done < <(ls|grep ^x|sort|head -n 300|tail -n 100)
screen -d -m -S j4 while read f;do echo $f >> MOOV;echo $f;./trt $f;done < <(ls|grep ^x|sort|head -n 400|tail -n 100)
