#! /bin/bash

echo "Digite o diretório que deseja fazer a cópia de segurança"
read dir

if [ -d "$dir" ]; then
nome_dir=$(basename "$dir")
dir_backup="copia_$dir_$(date +%Y%m%d_%H%M%S).tar.gz"
tar -czf $dir_backup  $dir
echo "Cópia de Segurança feita com sucesso"
else
echo "DIRETÓRIO INEXISTENTE $dir"
fi
