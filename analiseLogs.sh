#! /bin/bash

grep -i -E 'error|fail|fatal' /var/log/syslog | sort | awk '{print $1,$2,$3, $0}' | tail -5 > errosOrdenados.txt

