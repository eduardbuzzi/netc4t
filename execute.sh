#!/bin/bash
echo
echo "(1) Instalar NetCAT"
echo "(2) Chat TCP"
echo "(3) Chat UDP"
echo "(4) Enviar/Receber Arquivos"
echo "(5) Shell Reverso"
echo "(6) Scan de Portas"
echo "(0) Sair"
echo
read -p "Qual sua escolha? " ESCOLHA
case $ESCOLHA in
0)
exit
;;
1)
./instalar.sh
;;
2)
./chat-tcp.sh
;;
3)
./chat-udp.sh
;;
4)
./filetransfer.sh
;;
5)
./shellreverso.sh
;;
6)
./portscan.sh
;;
*)
echo "echo" > .executeagain.sh
echo 'echo "(1) Instalar NetCAT"' >> .executeagain.sh
echo 'echo "(2) Chat TCP"' >> .executeagain.sh
echo 'echo "(2) Chat UDP"' >> .executeagain.sh
echo 'echo "(4) Enviar/Receber Arquivos"' >> .executeagain.sh
echo 'echo "(5) Shell Reverso"' >> .executeagain.sh
echo 'echo "(6) Scan de Portas"' >> .executeagain.sh
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
echo './chat-tcp.sh' >> .executeagain.sh
echo ';;' >> .executeagain.sh
echo '3)' >> .executeagain.sh
echo './chat-udp.sh' >> .executeagain.sh
echo ';;' >> .executeagain.sh
echo '4)' >> .executeagain.sh
echo './filetransfer.sh' >> .executeagain.sh
echo ';;' >> .executeagain.sh
echo '5)' >> .executeagain.sh
echo './shellreverso.sh' >> .executeagain.sh
echo ';;' >> .executeagain.sh
echo '6)' >> .executeagain.sh
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
