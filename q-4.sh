#!/bin/bash
#usuarios e seus diretorios home
echo -e 'Usuarios => Diretorio home\n'
cat /etc/passwd | awk -F: '{print $1 "=>" $6}'
