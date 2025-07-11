#!/bin/bash

read -p "Entre com a operacao desejada: 'COMPACTAR' ou 'DESCOMPACTAR': " operacao
case "$operacao" in
    "compactar"|"COMPACTAR")
        read -p "Nome do arquivo final (.tar.gz): " arquivo_saida
        read -p "Lista de arquivos separados por espaco: " arquivos
        tar -czf "$arquivo_saida" $arquivos
        echo "Compactados com sucesso em $arquivo_saida"
        ;;
    "descompactar"|"DESCOMPACTAR")
        read -p "Nome do arquivo a descompactar (.tar.gz): " arquivo
        read -p "Diretorio de destino: " diretorio
        tar -xzf "$arquivo" -C "$diretorio"
        echo "Descompactado com sucesso no diretório $diretorio"
        ;;
    *)
        echo "Operacao invalida"
        echo "Selecione COMPACTAR ou DESCOMPACTAR"
        exit 1
        ;;
esac
