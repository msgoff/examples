while read f;do echo $f >> MOOV;echo $f;./trt $f;done < <(ls|grep ^x|sort|head -n 100)
