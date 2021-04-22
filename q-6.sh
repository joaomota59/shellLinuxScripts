#!/bin/bash
k=`echo $2 | grep $1` #verifica se a primeira palavra esta contida na segunda

if [ ! -z $k ] #se nao for vazio
then
    echo -e 'Sucesso!\nA primeira palavra esta contida na segunda!'
fi
    
    
