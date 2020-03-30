#!/bin/bash
chmod +x ./portscan-ip.sh
chmod +x ./portscan-dominio.sh
trap '' 2
echo
echo "(1) Scan de Portas de um IP (ex: 192.168.1.1)"
echo "(2) Scan de Portas de um Dominio (ex: www.globo.com)"
echo "(0) Voltar"
echo
read -p "Qual sua escolha? " ESCOLHA
case $ESCOLHA in
0) ./execute.sh ;;
1) ./portscan-ip.sh ;;
2) ./portscan-dominio.sh ;;
*)
echo "trap '' 2" > .portscan-again.sh
echo "echo" >> .portscan-again.sh
echo 'echo "(1) Scan de Portas de um IP (ex: 192.168.1.1)"' >> .portscan-again.sh
echo 'echo "(2) Scan de Portas de um Dominio (ex: www.globo.com)"' >> .portscan-again.sh
echo 'echo "(0) Voltar"' >> .portscan-again.sh
echo 'echo' >> .portscan-again.sh
echo 'read -p "Qual sua escolha? " ESCOLHA' >> .portscan-again.sh
echo 'case $ESCOLHA in' >> .portscan-again.sh
echo '0) ./execute.sh ;;' >> .portscan-again.sh
echo '1) ./portscan-ip.sh ;;' >> .portscan-again.sh
echo '2) ./portscan-dominio.sh ;;' >> .portscan-again.sh
echo "*)" >> .portscan-again.sh
echo "./.portscan-again.sh" >> .portscan-again.sh
echo ";;" >> .portscan-again.sh
echo 'esac' >> .portscan-again.sh
chmod +x .portscan-again.sh
./.portscan-again.sh
;;
esac
exit
