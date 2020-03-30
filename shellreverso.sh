#!/bin/bash
chmod +x ./listener-shellreverso.sh
chmod +x ./sender-shellreverso.sh
trap '' 2
echo
echo "(1) Receber comandos Shell"
echo "(2) Enviar comandos Shell"
echo "(0) Voltar"
echo
read -p "Qual sua escolha? " ESCOLHA
case $ESCOLHA in
0) ./execute.sh ;;
1) ./listener-shellreverso.sh ;;
2) ./sender-shellreverso.sh ;;
*)
echo "trap '' 2" > .shell-reverso-again.sh
echo "echo" >> .shell-reverso-again.sh
echo 'echo "(1) Receber comandos Shell"' >> .shell-reverso-again.sh
echo 'echo "(2) Enviar comandos Shell"' >> .shell-reverso-again.sh
echo 'echo "(0) Voltar"' >> .shell-reverso-again.sh
echo 'echo' >> .shell-reverso-again.sh
echo 'read -p "Qual sua escolha? " ESCOLHA' >> .shell-reverso-again.sh
echo 'case $ESCOLHA in' >> .shell-reverso-again.sh
echo '0) ./execute.sh ;;' >> .shell-reverso-again.sh
echo '1) ./listener-shellreverso.sh ;;' >> .shell-reverso-again.sh
echo '2) ./sender-shellreverso.sh ;;' >> .shell-reverso-again.sh
echo "*)" >> .shell-reverso-again.sh
echo "./.shell-reverso-again.sh" >> .shell-reverso-again.sh
echo ";;" >> .shell-reverso-again.sh
echo 'esac' >> .shell-reverso-again.sh
chmod +x .shell-reverso-again.sh
./.shell-reverso-again.sh
;;
esac
exit
