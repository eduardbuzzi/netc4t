#!/bin/bash
trap '' 2
echo
echo "(1) Instalar NetCAT"
echo "(2) Chat"
echo "(3) Enviar/Receber Arquivos"
echo "(4) Shell Reverso"
echo "(5) Scan de Portas"
echo "(0) Sair"
echo
read -p "Qual sua escolha? " ESCOLHA
case $ESCOLHA in
0)
exit
;;
1)
./install.sh
;;
2)
./chat.sh
;;
3)
./filetransfer.sh
;;
4)
./shellreverso.sh
;;
5)
./portscan.sh
;;
*)
echo "trap '' 2" > .executeagain.sh
echo "echo" >> .executeagain.sh
echo 'echo "(1) Instalar NetCAT"' >> .executeagain.sh
echo 'echo "(2) Chat"' >> .executeagain.sh
echo 'echo "(3) Enviar/Receber Arquivos"' >> .executeagain.sh
echo 'echo "(4) Shell Reverso"' >> .executeagain.sh
echo 'echo "(5) Scan de Portas"' >> .executeagain.sh
echo 'echo "(0) Sair"' >> .executeagain.sh
echo 'echo' >> .executeagain.sh
echo 'read -p "Qual sua escolha? " ESCOLHA' >> .executeagain.sh
echo 'case $ESCOLHA in' >> .executeagain.sh
echo '0)' >> .executeagain.sh
echo 'exit' >> .executeagain.sh
echo ';;' >> .executeagain.sh
echo '1)' >> .executeagain.sh
echo './install.sh' >> .executeagain.sh
echo ';;' >> .executeagain.sh
echo '2)' >> .executeagain.sh
echo './chat.sh' >> .executeagain.sh
echo ';;' >> .executeagain.sh
echo '3)' >> .executeagain.sh
echo './filetransfer.sh' >> .executeagain.sh
echo ';;' >> .executeagain.sh
echo '4)' >> .executeagain.sh
echo './shellreverso.sh' >> .executeagain.sh
echo ';;' >> .executeagain.sh
echo '5)' >> .executeagain.sh
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
exit
