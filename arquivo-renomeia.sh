#! /bin/bash

read -p "Inisira o prefixo do arquivo que deseja renomear" prefixo
read -p "Insira o diretório onde os arquivos serão renomeados" diretorio
for arquivo in $diretorio/*; do
	if [ -f "$arquivo" ]; then
	nome=$(basename "$arquivo")
	mv "$arquivo" "$diretorio/$prefixo$nome"
fi
done
