#! /bin/bash

echo "QUAL DIRETORIO DESEJA CRIAR, COLOQUE O CAMINHO ABAIXO"
read dir

if [ -d $dir ]; then

echo "Esse diretório JÁ EXISTE IDIOTA"

else

mkdir $dir

echo "PARABENS SEU DIRETÓRIO $dir FOI CRIADO COM SUCESSO"

fi
