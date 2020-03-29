#!/bin/bash

chmod +x ./listener-chat-interno-tcp.sh
chmod +x ./listener-chat-externo-tcp.sh

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
./chat-tcp.sh
;;
1)
./listener-chat-interno-tcp.sh
;;
2)
./listener-chat-externo-tcp.sh
;;
*)
echo 'curl -s -C - -o IP http://meuip.net.br' > .listener-chat-tcp-again.sh
echo 'IPexterno=$(grep "<title>" IP | cut -d " " -f9 | cut -d "<" -f1)' >> .listener-chat-tcp-again.sh
echo 'IPinterno=$(hostname -I | cut -d " " -f1)' >> .listener-chat-tcp-again.sh
echo 'rm IP' >> .listener-chat-tcp-again.sh
echo 'echo' >> .listener-chat-tcp-again.sh
echo 'echo "Seu IP Interno é: $IPinterno"' >> .listener-chat-tcp-again.sh
echo 'echo "Seu IP Externo é: $IPexterno"' >> .listener-chat-tcp-again.sh
echo 'echo' >> .listener-chat-tcp-again.sh
echo 'echo "(1) Utilizar IP Interno"' >> .listener-chat-tcp-again.sh
echo 'echo "(2) Utilizar IP Externo"' >> .listener-chat-tcp-again.sh
echo 'echo "(0) Voltar"' >> .listener-chat-tcp-again.sh
echo 'echo' >> .listener-chat-tcp-again.sh
echo 'read -p "Qual sua escolha? " ESCOLHA' >> .listener-chat-tcp-again.sh
echo 'case $ESCOLHA in' >> .listener-chat-tcp-again.sh
echo '0)' >> .listener-chat-tcp-again.sh
echo './chat.sh' >> .listener-chat-tcp-again.sh
echo ';;' >> .listener-chat-tcp-again.sh
echo '1)' >> .listener-chat-tcp-again.sh
echo './listener-chat-interno-tcp.sh' >> .listener-chat-tcp-again.sh
echo ';;' >> .listener-chat-tcp-again.sh
echo '2)' >> .listener-chat-tcp-again.sh
echo './listener-chat-externo-tcp.sh' >> .listener-chat-tcp-again.sh
echo ';;' >> .listener-chat-tcp-again.sh
echo '*)' >> .listener-chat-tcp-again.sh
echo "./.listener-chat-tcp-again.sh" >> .listener-chat-tcp-again.sh
echo ";;" >> .listener-chat-tcp-again.sh
echo 'esac' >> .listener-chat-tcp-again.sh
chmod +x .listener-chat-tcp-again.sh
./.listener-chat-tcp-again.sh
;;
esac
