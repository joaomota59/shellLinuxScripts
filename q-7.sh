#!/bin/bash
#script que informa quais processos tem mais de 5 processos filhos


echo 'Aperte crtl + c para parar o script, apos iniciar!'
read -p '1-Iniciar 2-Sair: ' entrada
if [ $entrada == 1 ]
then

	while true
	do
		salvaProcesso=`ps -eo pid,ppid,comm | tail -n +2 > processos` #salva as informacoes do processo em um txt, desconsiderando a primeira linha(cabecalho)


		cat processos | sort -k2 -n | awk '{print $2}' | uniq -c | 
		awk '{

		if ($1>5){
		print "Processo de PID "$2" criou "$1" processos filhos: "
		system("pgrep -P" $2)

		}   
		}'
		sleep 5 #time sleep em segundos
		clear #limpa a tela
	done

else
    echo 'Algoritmo finalizado!'
fi
