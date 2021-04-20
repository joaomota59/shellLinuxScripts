#!/bin/bash
if [ -z "$1" ]
then
   echo 'Entre com um parametro!'
   exit 0 #finaliza o programa, programa executado com sucesso
fi
busca=`find -name $1`
if [ -z "$busca" ]
then
    echo 'Arquivo nao encontrado!'
else
    tamanho=`du -b $1 | cut -f1` #cut pega somente a primeira coluna
    echo 'O tamanho do arquivo '$1' eh '$tamanho' bytes!'
fi
