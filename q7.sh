#!bin/bash
echo 'Observando os arquivos mais recentes que tem o mesmo nome'
#procura p arquivos que tem o mesmo nome e classifica por ordem de criacao
find . -name 'relatorio' -exec ls -l '{}' \;
echo -e '\nConferindo se os arquivos sao iguais'
#confere se os dois arquivos que tem o mesmo nome sao iguais
find . -name 'relatorio' -exec ls -l '{}' \;awk '{print $9}'|xargs diff

