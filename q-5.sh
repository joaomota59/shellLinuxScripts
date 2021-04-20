#!/bin/bash
#pega os usuarios do diretorio /etc/passwd
#depois pega somente a coluna 7
#em seguida conta a repeticao de cada elemento da coluna 7
#organiza os valores numeros em ordem aritmetica -n e dps em ordem decrescente
#em seguida pega somente a primeira linha do arquivo
info=`cat /etc/passwd | awk -F: '{print $7}' | uniq -c | sort -nr | head -n1`

echo 'O shell mais usado tem o numero de usuarios:'$info' eh o shell mais utilizado no sistema!'

