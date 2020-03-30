#!/bin/bash
echo
read -p "Informe o dominio: " DOMINIO
IP=$(host $DOMINIO | cut -d ' ' -f4 | head -n1)
if [ $IP = 'found:' ]
then
echo
echo "O dominio $DOMINIO aparentemente está fora do ar!"
echo "Verifique o dominio novamente ou coloque um válido!!"
./portscan-dominio.sh
exit
fi
echo
echo "Informe o delimitador de portas quer fazer o scan (ex: 21 443)"
echo "Se quiser fazer scan de apenas uma porta só coloca ela sozinha (ex: 80)"
read -p "Informe a(s) porta(s) para fazer scan: " PORTAinicial PORTAfinal
echo
if [ -z $PORTAinicial ] && [ -z $PORTAfinal ]
then
echo
echo "Por que você não informou nenhuma porta?"
echo "Tudo bem, vou fingir que informou a porta 80 ;)"
echo
$PORTAinicial='80'
fi
nc -vz -w1 $IP $PORTAinicial-$PORTAfinal
./execute.sh
exit
