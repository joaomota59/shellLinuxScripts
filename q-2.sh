#!/bin/bash
if [ -z "$1" ]
then
   echo 'Entre com um parametro!'
   exit 0 #finaliza o programa, programa executado com sucesso
fi
busca=`find -name $1`
if [ -z "$busca" ]
then
    ls /usr/bin > $1
else
    echo 'Nada foi feito porque o arquivo ja existe!'
fi
