#!/bin/bash
#Encontra todos subdiretorios/diretorios da pasta /etc
#em seguida conta todos que foram encontrados
resultado=`sudo ls -lR /etc | grep "^d" | wc -l`

echo 'O numero de subdiretorios no diretorio /etc eh:' $resultado

