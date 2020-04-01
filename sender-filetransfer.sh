#!/bin/bash
trap '' 2
echo
read -p "Informe o IP que vai receber o arquivo: " IPreceber
read -p "Informe a porta que está escutando: " PORTA
echo
echo "Informe o destino do arquivo que deseja enviar"
echo "Exemplo: '/root/arquivo.txt'" 
echo
read -p "Informe o destino do arquivo: " DESTINO
echo
echo "Enviando \033[01;33m$DESTINO\033[01;00m na porta \033[01;31m$PORTA\033[01;00m do \033[01;31m$IPreceber\033[01;00m"
echo
trap 2
nc $IPreceber $PORTA -w2 < $DESTINO
./execute.sh
exit
