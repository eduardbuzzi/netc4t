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
echo "Digite o nome que o arquivo vai receber"
echo "Exemplo: 'arquivo.txt'"
read -p "Digite o nome do arquivo: " ARQUIVO
if [ $ARQUIVO -eq '' ]
then
$ARQUIVO='arquivo'
fi
echo "O arquivo vai ser armazenado em '$PWD/$ARQUIVO'"
read -p "Informe a porta para escutar (entre 1-65535): " PORTA
trap 2
nc -lvp $PORTA >> $PWD/$ARQUIVO
./execute.sh
exit
