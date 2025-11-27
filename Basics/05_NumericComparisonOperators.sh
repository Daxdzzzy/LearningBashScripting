#!/bin/bash

# Bash has separate operators for numbers and strings. Here are the numeric operators. 
# Linux uses 0 to mean succesful execution and non-zero numbers to mean there was an error. 

# equal to
[ 2 -eq 3 ]
echo $?

[ 2 -eq 2]
echo $?

# not equal to
[ 2 -ne 3 ]
echo $?

[ 2 -ne 2 ]
echo $?

# less than
[ 2 -lt 2 ]
echo $?

[ 2 -lt 3 ]
echo $?

# less than or equal to
[ 2 -le 2 ]
echo $?

[ 2 -le 3 ]
echo $?

# greater than
[ 2 -gt 2 ]
echo $?

[ 2 -gt 3 ]
echo $?

# greater than or equal to
[ 2 -ge 2 ]
echo $?

[ 2 -ge 3 ]
echo $?

# Example 

if [ $1 -gt $2 ]; then
  echo "The args in position one '$1' is greater than '$2'"
else 
  echo "The args in position one '$1' is less than or equal to '$2'"
fi 

