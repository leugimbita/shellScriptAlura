#! /bin/bash

read -p "Insira o processo que deseja averiguar a performance: " processo

ps -fp $(pgrep $processo)

#ps aux | grep -v grep | grep $processo
