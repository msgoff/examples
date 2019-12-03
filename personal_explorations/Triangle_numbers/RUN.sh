while read f;do echo $f;./trt $f ;done < <(ls|sort|grep ^x|head -n 1000|tail -n 250)
