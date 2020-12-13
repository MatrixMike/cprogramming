#!/bin/bash
# cd ~/cprogramming/    # change to working directory
cd ~/cprogramming/ || exit
gcc -c -Wall -Werror -fpic foo.c    					# Step 1: Compiling with Position Independent Code
read -r -t 5 -p "waiting for 5 seconds 1"
gcc -shared -o libfoo.so foo.o						# Step 2: Creating a shared library from an object file
read -r -t 5 -p "waiting for 5 seconds 2"
gcc -Wall -o test main.c -lfoo						# Step 3: Linking with a shared library
read -r -t 5 -p "waiting for 5 seconds 3"
gcc -L~/foo -Wall -o test main.c -lfoo 	# Telling GCC where to find the shared library
echo "$LD_LIBRARY_PATH"
# objdump -p test

