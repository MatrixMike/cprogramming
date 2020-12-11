#!/bin/bash
gcc -L/home/mike/cprogramming/ -Wl,-rpath=/home/mike/cprogramming/ -Wall -o test main.c -lfoo
gcc -Wall -o test main.c -lfoo
sudo cp /home/mike/cprogramming/libfoo.so /usr/lib
whereis libfoo
ldd test | grep foo
ldconfig -p | grep foo

