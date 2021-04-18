#!/bin/bash
#Script que Lista todos processos do usuario joao
ps -aux | awk '$1=='joao''
