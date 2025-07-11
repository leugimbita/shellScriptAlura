#! /bin/bash

if pgrep nginx &> /dev/null
then
	echo "O NGINX está operando $(date +"%Y-%m-%d_%H:%M:%S")"
else
	echo "NGINX não está operando, inicie seu serviço $(date +"%Y-%m-%d_%H:%M:%S")"
fi
