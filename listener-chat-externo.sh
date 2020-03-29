#!/bin/bash

chmod +x ./listener-chat-externo-padrao.sh
chmod +x ./listener-chat-externo-personalizado.sh

curl -s -C - -o IP http://meuip.net.br
IPexterno=$(grep "<title>" IP | cut -d ' ' -f9 | cut -d '<' -f1)

echo
echo "Quer utilizar o IP Externo $IPexterno?"
echo "ou deseja utilizar um IP Externo diferente?"
echo "(1) Utilizar o IP $IPexterno"
echo "(2) Utilizar um IP diferente"
echo "(0) Voltar"
echo
read -p "Qual sua escolha? " ESCOLHA
case $ESCOLHA in
0)
./listener-chat.sh
;;
1)
./listener-chat-externo-padrao.sh
;;
2)
./listener-chat-externo-personalizado.sh
;;
