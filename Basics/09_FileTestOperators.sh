#!/bin/bash

# File test operators.

# -e this flag means if that path exits any type like either file or directory no worries if size is 0
# This flag returns 0 for any filesystem object (files, directories, symlinks, devices, sockets) no matter what type it is.

path=/home
[[ -e $path ]]
echo $?

path=/home/ZzzZzz/test.c
[[ -e $path ]]
echo $?

# -d this flag means if directory exists

path=/az
[[ -d $path ]]
echo $?

path=/etc
[[ -d $path ]]
echo $?

# -f this flags means if regular files exits 

path=/etc
[[ -f $path ]] #1 
echo $?

file=/home/ZzzZzz/test.c
[[ -f $file ]] 
if [[ $? -eq 0 ]]; then
  echo "The file exists"
else
  echo "no looking that $file"
fi

# -s test if a file exists and has size greater than zero bytes.

if [ -s error.log ]; then
  echo "Errors detected"
else
  echo "No errors logged"
fi
