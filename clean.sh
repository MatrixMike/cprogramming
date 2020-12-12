#!/bin/bash
rm ./*glob*.so
rm test
rm ./*glob*.o
rm a.out
#   globbing issue 
# glob expands regex (etc) to list of things 
# but I am using *.so -> better try using glob features -
# will try later

# 3.5.8.1 Pattern Matching  in https://www.gnu.org/software/bash/manual/bash.html#Shell-Expansions


