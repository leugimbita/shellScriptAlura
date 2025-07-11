#! /bin/bash

read -p "Insira o nome do novo USER: " newuser

sudo useradd -m $newuser
sudo passwd $newuser
