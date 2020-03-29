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
echo "echo" > .chatagain.sh
echo 'echo "(1) Escutar Chat"' >> .chatagain.sh
echo 'echo "(2) Enviar Chat"' >> .chatagain.sh
echo 'read -p "Qual sua escolha? " ESCOLHA' >> .chatagain.sh
echo 'case $ESCOLHA in' >> .chatagain.sh
echo '1)' >> .chatagain.sh
echo './listener-chat.sh' >> .chatagain.sh
echo ';;' >> .chatagain.sh
echo '2)' >> .chatagain.sh
echo './sender-chat.sh' >> .chatagain.sh
echo ';;' >> .chatagain.sh
echo "*)" >> .chatagain.sh
echo "./.executeagain.sh" >> .chatagain.sh
echo ";;" >> .chatagain.sh
echo 'esac' >> .chatagain.sh
chmod +x .chatagain.sh
./.chatagain.sh
;;
esac
