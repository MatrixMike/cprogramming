#!/bin/bash
cd ~/cprogramming/    # change to working directory
gcc -c -Wall -Werror -fpic foo.c    					# Step 1: Compiling with Position Independent Code
gcc -shared -o libfoo.so foo.o						# Step 2: Creating a shared library from an object file
gcc -Wall -o test main.c -lfoo						# Step 3: Linking with a shared library
gcc -L/home/mike/foo -Wall -o/home/mike/cprogramming test main.c -lfoo 	# Telling GCC where to find the shared library


