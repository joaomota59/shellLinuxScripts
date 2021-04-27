#!/bin/bash
#Apagar ou comprimir arquivos maiores que 100KB

rm arquivosRemovidos >& /dev/null #caso tenha sido criado antes, direciona o erro para o "buraco negro" do linux
vet=(`find /home -size +100k`) #guarda todos arquivos maiores que 100KB no vetor'
echo "Arquivo deletado | Horario de remocao " >> arquivosRemovidos
for i in ${vet[@]}
do
	echo -e '\n\nArquivo:' $i
	read -p '1-Apagar 2-Comprimir: ' entrada
	if [ 1 -eq $entrada ] #se for apagar o arquivo..
	then
	    echo $i" "`date` >> arquivosRemovidos #salva em um txt tds arquivos que foram removidos
   	    rm $i
	    echo 'Arquivo apagado!'
	else
	    tar -zcvf $i.tar.gz $i >& /dev/null #direciona qualquer tipo de mensagem no log para o "buraco negro"
	    echo 'Arquivo comprimido'
	fi

done

echo -e "\n\nArquivo de log criado no diretorio corrente!"
