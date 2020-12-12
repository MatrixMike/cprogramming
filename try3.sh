#!/bin/bash
gcc -L~/foo -Wl,-rpath=~/foo -Wall -o test main.c -lfoo
gcc -Wall -o test main.c -lfoo
sudo cp ~/cprogramming/libfoo.so /usr/lib
read -t 5 -p "waiting for 5 seconds 1"
whereis libfoo
read -t 5 -p "waiting for 5 seconds 2"
ldd test | grep foo
read -t 5 -p "waiting for 5 seconds 3"
ldconfig -p | grep foo
read -t 5 -p "waiting for 5 seconds 4"
./test


# replace /home/mike/ ~/  
