#!/bin/bash
info=`cat /etc/passwd` #pega todas informacoes referentes aos usuarios
echo -e 'Usuarios => Diretorio home\n'
for i in $info
do
    cat /etc/passwd | awk -F: '{print $1 "=>" $6}'
done
