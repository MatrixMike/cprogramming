#!/bin/bash
sudo cp ~/cprogramming/libfoo.so /usr/lib
sudo chmod 0755 /usr/lib/libfoo.so
gcc -L~/foo -Wl,-rpath=~/foo -Wall -o test main.c -lfoo
gcc -Wall -o test main.c -lfoo
sudo cp ~/cprogramming/libfoo.so /usr/lib
read -r -t 1 -p "\nwaiting for 5 seconds 1"
whereis libfoo
read -r -t 1 -p "\nwaiting for 5 seconds 2"

ldconfig -p | grep foo
read -r -t 1 -p "\nwaiting for 5 seconds 4"
unset LD_LIBRARY_PATH
gcc -Wall -o test main.c -lfoo

ldd test | grep foo
read -r -t 1 -p "\nwaiting for 5 seconds 3"
./test
# replace /home/mike/ ~/  
