#!/bin/bash
echo
read -p "Informe o dominio: " DOMINIO
IP=$(host $DOMINIO | cut -d ' ' -f4 | head -n1)
if [ -z $IP ]
then
echo "O domínio $DOMINIO aparentemente está fora do ar!"
echo "Tente novamente!!"
./portscan-dominio.sh
exit
fi
echo "Informe o delimitador de portas quer fazer o scan (ex: 21-443)"
echo "Se quiser fazer scan de apenas uma porta só coloca ela sozinha (ex: 80)"
read -p "Informe a(s) porta(s) para fazer scan: " PORTA
if [ -z $PORTA ]
then
$PORTA="1-1000"
fi
