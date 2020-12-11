#!/bin/bash
gcc -L~/foo -Wl,-rpath=~/foo -Wall -o test main.c -lfoo
gcc -Wall -o test main.c -lfoo
sudo cp ~/cprogramming/libfoo.so /usr/lib
whereis libfoo
ldd test | grep foo
ldconfig -p | grep foo
./test


# replace /home/mike/ ~/  
