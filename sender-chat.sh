#!/bin/bash

trap '' 2

echo
read -p "Informe o IP que está escutando: " IPlistening
read -p "Informe a porta para escutar (entre 1-65535): " PORTA
echo "Tentando se comunicar com a porta $PORTA do $IPlistening"
echo
trap 2
nc $IPlistening $PORTA
./execute.sh
exit
