#!/bin/bash

read -p "Insira o diretório onde estão as imagens em jpg: " diretorio

if [ ! -d "$diretorio"]; then

	echo "Diretorio '$diretorio' inexistente"
	exit 1
fi

for imagem_jpg in "$diretorio"/*.jpg; do
	convert "$imagem_jpg" "${imagem_jpg%.jpg}.png" && echo "Imagem convertida: ${imagem_jpg%.jpg}.png" || echo "Falha na conversão: $imagem_jpg"
done

echo "conversao concluída"

