#! /bin/bash

diretorio_backup="/home/guiggs17/devops"
nome_arquivo="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

if [ -d "$diretorio_backup" ]; then
	tar -czf "$nome_arquivo" "$diretorio_backup"
	echo "Backup Finalizado em $nome_arquivo"
else

	echo "Diretório $diretorio_backup não existe"
fi
