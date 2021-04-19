#!/bin/bash
echo -e 'Lista de usuarios do sistema\nfoi salva no diretorio pessoal!'
cut -d: -f1 /etc/passwd > /home/aluno/lista_usuarios
