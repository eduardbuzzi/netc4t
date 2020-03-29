#!/bin/bash

IPinterno=$(hostname -I | cut -d " " -f1)

echo
echo "Seu IP Interno é: $IPinterno"
echo
read -p "Informe a porta para escutar (entre 1-65535): " PORTA
nc -lvp $PORTA
./execute.sh
exit
