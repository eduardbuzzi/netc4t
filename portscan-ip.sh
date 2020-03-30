#!/bin/bash
echo
read -p "Informe o IP: " IPinformado
IP=$(ping -c 1 $IPinformado | grep "64 bytes" | cut -d' ' -f4 | sed 's/.$//')
if [ -z $IP ]
then
echo
echo "O IP $IPinformado aparentemente está fora do ar!"
echo "Verifique o IP novamente ou coloque um válido!!"
./portscan.sh
exit
fi
echo
echo "Informe o delimitador de portas quer fazer o scan (ex: 21 443)"
echo "Se quiser fazer scan de apenas uma porta só coloca ela sozinha (ex: 80)"
read -p "Informe a(s) porta(s) para fazer scan: " PORTAinicial PORTAfinal
echo
if [ -z $PORTAinicial ] && [ -z $PORTAfinal ]
then
echo "Por que você não informou nenhuma porta?"
echo "Tudo bem, vou fingir que quis escolher fazer scan de todas que existem! ;)"
echo "Pode levar um tempo para fazer o scan, mas vai descobrir todas portas abertas!"
echo
PORTAinicial=1
PORTAfinal=65535
fi
nc -vz -w1 $IP $PORTAinicial-$PORTAfinal
./execute.sh
exit
