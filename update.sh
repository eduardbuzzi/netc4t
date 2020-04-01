#!/bin/bash
cd ../
rm -rf netc4t 2> dev/null
git clone -q https://github.com/eduardbuzzi/netc4t
cd netc4t
chmod +x execute.sh
./execute.sh
exit
