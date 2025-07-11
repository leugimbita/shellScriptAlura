#! /bin/bash

echo "ESCREVA O NOME DO ARQUIVO QUE DESEJA CRIAR"
read arquivo

if [ -f $arquivo ]; then

echo "ESTE ARQUIVO JÁ EXISTE"

else 

touch $arquivo
echo "ARQUIVO $arquivos CRIADO COM SUCESSO"

fi
