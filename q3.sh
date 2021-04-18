#!/bin/bash
#Script que procura pelo arquivo e.sh que esta em exucacao em seguida mata ele
pid=`ps -aux|grep e.sh$|awk '{print $2}'|tr -d "[]+"` #retorna o pid do processo e que deve ser morto
kill -9 $pid
