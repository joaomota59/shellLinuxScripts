#!/bin/bash

if [ -z "$1" ]
then
    echo 'Entre com o nome do arquivo como parametro!'
    exit 0
fi
echo 'Nome do arquivo passado como parametro:'

buscaCompactado=`find . -name $1.tar.bzip2`

sudo mkdir /home/TRASH >& /dev/null #cria o diretorio TRASH e descosidera a mensagem de erro caso ja tenha sido criado

if [ -z "$buscaCompactado" ] #se n tiver criado o arquivo compactado entao cria
then
sudo tar -jcvf $1.tar.bzip2 $1 #compacta arquivo
sudo mv $1.tar.bzip2 /home/TRASH/. #move arquivo
else #se ja tiver o arquivo compactado so move ele para o /home/TRASH/.
sudo mv $1.tar.bzip2 /home/TRASH/.
fi
echo 'Arquivo passado como parametro foi compactado e movido para /home/TRASH'


sudo find /home/TRASH -mmin +1440 -delete >& /dev/null #deleta arquivos mais velhos que 1440 minutos = 24horas
echo 'Arquivos mais velhos que 24h do /home/TRASH foram deletados'
#verificar arquivos mais velhos que 24 no trash
