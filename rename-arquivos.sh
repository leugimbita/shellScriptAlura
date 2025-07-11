#! /bin/bash

read -p "Digite o diretório onde estão os arquivos que deseja alterar: " diretorio
read -p "Digite o nome que deseja para os arquivos:" prefixo

for arquivo in "$diretorio"/*; do

if [ -f "$arquivo" ]; then
nome=$(basename "$arquivo")

novo_nome="${prefixo}${#nome}"

mv "$arquivo" "$diretorio/$novo_nome"
echo "arquivo(s) renomeado(s) de $nome -> $novo_nome"

fi
done
