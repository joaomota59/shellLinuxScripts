#!/bin/bash
read -p 'Nome de usuario: ' name
resultado=`cut -d: -f1 /etc/passwd | grep ^$name`
if [ -z "$resultado" ]
then
    echo 'Usuario invalido'
else
    echo 'Usuario eh valido'
fi
