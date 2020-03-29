#!/bin/bash

chmod +x ./listener-chat-interno.sh
chmod +x ./listener-chat-externo.sh

curl -s -C - -o IP http://meuip.net.br
IPexterno=$(grep "<title>" IP | cut -d ' ' -f9 | cut -d '<' -f1)
IPinterno=$(hostname -I | cut -d " " -f1)
rm IP

echo
echo "Seu IP Interno é: $IPinterno"
echo "Seu IP Externo é: $IPexterno"
echo
echo "(1) Utilizar IP Interno"
echo "(2) Utilizar IP Externo"
echo "(0) Voltar"
echo
read -p "Qual sua escolha? " ESCOLHA
case $ESCOLHA in
0)
./chat.sh
;;
1)
./listener-chat-interno.sh
;;
2)
./listener-chat-externo.sh
;;
*)
echo 'curl -s -C - -o IP http://meuip.net.br' > .listener-chat-again.sh
echo 'IPexterno=$(grep "<title>" IP | cut -d " " -f9 | cut -d "<" -f1)' >> .listener-chat-again.sh
echo 'IPinterno=$(hostname -I | cut -d " " -f1)' >> .listener-chat-again.sh
echo 'rm IP' >> .listener-chat-again.sh
echo 'echo' >> .listener-chat-again.sh
echo 'echo "Seu IP Interno é: $IPinterno"' >> .listener-chat-again.sh
echo 'echo "Seu IP Externo é: $IPexterno"' >> .listener-chat-again.sh
echo 'echo' >> .listener-chat-again.sh
echo 'echo "(1) Utilizar IP Interno"' >> .listener-chat-again.sh
echo 'echo "(2) Utilizar IP Externo"' >> .listener-chat-again.sh
echo 'echo "(0) Voltar"' >> .listener-chat-again.sh
echo 'echo' >> .listener-chat-again.sh
echo 'read -p "Qual sua escolha? " ESCOLHA' >> .listener-chat-again.sh
echo 'case $ESCOLHA in' >> .listener-chat-again.sh
echo '0)' >> .listener-chat-again.sh
echo './chat.sh' >> .listener-chat-again.sh
echo ';;' >> .listener-chat-again.sh
echo '1)' >> .listener-chat-again.sh
echo './listener-chat-interno.sh' >> .listener-chat-again.sh
echo ';;' >> .listener-chat-again.sh
echo '2)' >> .listener-chat-again.sh
echo './listener-chat-externo.sh' >> .listener-chat-again.sh
echo ';;' >> .listener-chat-again.sh
echo '*)' >> .listener-chat-again.sh
echo "./.listener-chat-again.sh" >> .listener-chat-again.sh
echo ";;" >> .listener-chat-again.sh
echo 'esac' >> .listener-chat-again.sh
chmod +x .listener-chat-again.sh
./.listener-chat-again.sh
;;
esac
