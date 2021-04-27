#!/bin/bash
#Script que alerta quando tiver algum usuario ocupando mais de 100MB do disco

a=(`cat /etc/passwd | awk -F: '{print $6}'`) #pega o diretorio inicial de cada usuario no /etc/passwd


while true
echo 'Script em andamento...'
echo 'Aguardando algum usuario ocupar mais de 100MB no disco...'
echo 'Aperte crtl+c para encerrar!'
do
	cont=1 #contador
	for user in ${a[@]}
	do
		userName=`cat /etc/passwd | awk -F : '{print $1}' | sed -n $cont'p'` #nome do usuario
		userDirectory=`sudo du -shm $user 2> /dev/null | cut -f1` #espaco do disco do usuario especifico em MB
		if [ ! -z "$userDirectory" ] #pega o espaco em disco de cada usuario do sistema e alerta somente se ocupar mais de 100MB do disco
		then
			
			if [ $userDirectory -gt 100 ] #se for maior que 100MB
				then
				echo -e "Usuario: "$userName
				echo -e "Espaco de disco "$userDirectory" MB\n\n"
			fi
		fi
		cont=`expr $cont + 1` #contador++
	done

echo 'O sistema de avisos se atualizara em 5 segundos...'
sleep 1
echo 'O sistema de avisos se atualizara em 4 segundos...'
sleep 1
echo 'O sistema de avisos se atualizara em 3 segundos...'
sleep 1
echo 'O sistema de avisos se atualizara em 2 segundos...'
sleep 1
echo 'O sistema de avisos se atualizara em 1 segundos...'
sleep 1
clear
done
