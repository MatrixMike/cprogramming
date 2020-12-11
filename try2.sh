#!/bin/bash
echo "$LD_LIBRARY_PATH"
LD_LIBRARY_PATH=/home/mike/:$LD_LIBRARY_PATH
echo "$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH=/home/username/foo:$LD_LIBRARY_PATH
echo "$LD_LIBRARY_PATH"
unset "$LD_LIBRARY_PATH"

