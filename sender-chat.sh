#!/bin/bash
trap '' 2
echo
read -p "Informe o IP que está escutando: " IPlistening
read -p "Informe a porta que está escutando: " PORTA
echo -e "Enviando comunicação com a porta \033[01;31m$PORTA\033[01;00m do \033[01;31m$IPlistening\033[01;00m"
echo
trap 2
nc $IPlistening $PORTA
./execute.sh
exit
