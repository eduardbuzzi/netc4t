#!/bin/bash

chmod +x ./listener-chat-externo-padrao-tcp.sh
chmod +x ./listener-chat-externo-personalizado-tcp.sh

curl -s -C - -o IP http://meuip.net.br
IPexterno=$(grep "<title>" IP | cut -d ' ' -f9 | cut -d '<' -f1)

echo
echo "Quer utilizar o IP Externo $IPexterno?"
echo "ou deseja utilizar um IP Externo diferente?"
echo
echo "(1) Utilizar o IP $IPexterno"
echo "(2) Utilizar um IP diferente"
echo "(0) Voltar"
echo
read -p "Qual sua escolha? " ESCOLHA
case $ESCOLHA in
0)
./listener-chat-tcp.sh
;;
1)
./listener-chat-externo-padrao-tcp.sh
;;
2)
./listener-chat-externo-personalizado-tcp.sh
;;
*)
echo 'curl -s -C - -o IP http://meuip.net.br' > .listener-chat-externo-tcp-again.sh
echo 'IPexterno=$(grep "<title>" IP | cut -d " " -f9 | cut -d "<" -f1)' >> .listener-chat-externo-tcp-again.sh
echo 'rm IP' >> .listener-chat-externo-tcp-again.sh
echo 'echo' >> .listener-chat-externo-tcp-again.sh
echo 'echo "Quer utilizar o IP Externo $IPexterno?"' >> .listener-chat-externo-tcp-again.sh
echo 'echo "ou deseja utilizar um IP Externo diferente?"' >> .listener-chat-externo-tcp-again.sh
echo 'echo' >> .listener-chat-externo-tcp-again.sh
echo 'echo "(1) Utilizar o IP $IPexterno"' >> .listener-chat-externo-tcp-again.sh
echo 'echo "(2) Utilizar um IP diferente"' >> .listener-chat-externo-tcp-again.sh
echo 'echo "(0) Voltar"' >> .listener-chat-externo-tcp-again.sh
echo 'echo' >> .listener-chat-externo-tcp-again.sh
echo 'read -p "Qual sua escolha? " ESCOLHA' >> .listener-chat-externo-tcp-again.sh
echo 'case $ESCOLHA in' >> .listener-chat-externo-tcp-again.sh
echo '0)' >> .listener-chat-externo-tcp-again.sh
echo './listener-chat-tcp.sh' >> .listener-chat-externo-tcp-again.sh
echo ';;' >> .listener-chat-externo-tcp-again.sh
echo '1)' >> .listener-chat-externo-tcp-again.sh
echo './listener-chat-externo-padrao-tcp.sh' >> .listener-chat-externo-tcp-again.sh
echo ';;' >> .listener-chat-externo-tcp-again.sh
echo '2)' >> .listener-chat-externo-tcp-again.sh
echo './listener-chat-externo-personalizado-tcp.sh' >> .listener-chat-externo-tcp-again.sh
echo ';;' >> .listener-chat-externo-tcp-again.sh
echo '*)' >> .listener-chat-externo-tcp-again.sh
echo "./.listener-chat-tcp-again.sh" >> .listener-chat-externo-tcp-again.sh
echo ";;" >> .listener-chat-externo-tcp-again.sh
echo 'esac' >> .listener-chat-externo-tcp-again.sh
chmod +x .listener-chat-externo-tcp-again.sh
./.listener-chat-externo-tcp-again.sh
;;
esac
exit
