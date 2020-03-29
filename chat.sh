#!/bin/bash
echo
echo "(1) Escutar Chat"
echo "(2) Enviar Chat"
read -p "Qual sua escolha? " ESCOLHA
case $ESCOLHA in
1)
./listener-chat.sh
;;
2)
./sender-chat.sh
;;
*)
echo "echo" > .chat-again.sh
echo 'echo "(1) Escutar Chat"' >> .chat-again.sh
echo 'echo "(2) Enviar Chat"' >> .chat-again.sh
echo 'read -p "Qual sua escolha? " ESCOLHA' >> .chat-again.sh
echo 'case $ESCOLHA in' >> .chat-again.sh
echo '1)' >> .chat-again.sh
echo './listener-chat.sh' >> .chat-again.sh
echo ';;' >> .chat-again.sh
echo '2)' >> .chat-again.sh
echo './sender-chat.sh' >> .chat-again.sh
echo ';;' >> .chat-again.sh
echo "*)" >> .chat-again.sh
echo "./.chat-again.sh" >> .chat-again.sh
echo ";;" >> .chat-again.sh
echo 'esac' >> .chat-again.sh
chmod +x .chat-again.sh
./.chat-again.sh
;;
esac
