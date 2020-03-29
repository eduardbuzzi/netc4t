#!/bin/bash
echo
echo "(1) Chat"
echo "(2) Enviar/Receber Arquivos"
echo "(3) Shell Reverso"
echo "(4) Scan de Portas"
read -p "Qual sua escolha? " ESCOLHA
case $ESCOLHA in
1)
./chat.sh
;;
2)
./filetransfer.sh
;;
3)
./shellreverso.sh
;;
4)
./portscan.sh
;;
*)
echo "echo" > .executeagain.sh
echo 'echo "(1) Chat"' >> .executeagain.sh
echo 'echo "(2) Enviar/Receber Arquivos"' >> .executeagain.sh
echo 'echo "(3) Shell Reverso"' >> .executeagain.sh
echo 'echo "(4) Scan de Portas"' >> .executeagain.sh
echo 'read -p "Qual sua escolha? " ESCOLHA' >> .executeagain.sh
echo 'case $ESCOLHA in' >> .executeagain.sh
echo '1)' >> .executeagain.sh
echo './chat.sh' >> .executeagain.sh
echo ';;' >> .executeagain.sh
echo '2)' >> .executeagain.sh
echo './filetransfer.sh' >> .executeagain.sh
echo ';;' >> .executeagain.sh
echo '3)' >> .executeagain.sh
echo './shellreverso.sh' >> .executeagain.sh
echo ';;' >> .executeagain.sh
echo '4)' >> .executeagain.sh
echo './portscan.sh' >> .executeagain.sh
echo ';;' >> .executeagain.sh
echo "*)" >> .executeagain.sh
echo "./.executeagain.sh" >> .executeagain.sh
echo ";;" >> .executeagain.sh
echo 'esac' >> .executeagain.sh
chmod +x .executeagain.sh
./.executeagain.sh
;;
esac
