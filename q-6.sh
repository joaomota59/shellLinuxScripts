#!/bin/bash

if [ -z "$1" ] #se o usuario nao entrar com nenhum parametro..
then
   echo 'Entre com dois parametros!'
   exit 0 #finaliza o programa, programa executado com sucesso
fi

if [ -z "$2" ] #se o usuario nao entrar com o segundo parametro..
then
   echo 'Entre com o segundo parametro!'
   exit 0 #finaliza o programa, programa executado com sucesso
fi

k=`echo $2 | grep $1` #verifica se a primeira palavra esta contida na segunda

if [ ! -z $k ] #se nao for vazio
then
    echo -e 'Sucesso!\nA primeira palavra esta contida na segunda!'
fi
    
    
