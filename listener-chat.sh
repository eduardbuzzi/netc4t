#!/bin/bash

trap '' 2

curl -s -C - -o IP http://meuip.net.br
IPexterno=$(grep "<title>" IP | cut -d ' ' -f9 | cut -d '<' -f1)
IPinterno=$(hostname -I | cut -d " " -f1)
rm IP

echo
echo "Seu IP Interno é: $IPinterno"
echo "Seu IP Externo é: $IPexterno"
echo
read -p "Informe a porta para escutar (entre 1-65535): " PORTA
nc -lvp $PORTA
./execute.sh
exit
