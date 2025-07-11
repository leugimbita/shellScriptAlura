#! /bin/bash

read -p "Insira a pasta que deseja ver o espaço total disponível: " totalspace

du -lh $totalspace
