#!/bin/bash

# Arithmetics operators 
# For arithmetic context, you must use double parentheses (()), otherwise bash treats it like a literal string.
# You must add the $ sign either outside the parentheses like $(()) or directly like ((variable=operation)). In some contexts, this is useful.

add=5+5
echo $add

# addition 
addition=$((5+1))
echo $addition

addition=$(( 5 + 5 ))
echo $addition

((result = 5 + 2))
echo $result

# substraction
subs=$(( 4 - 2 ))
echo $subs

# multiplication
mult=$(( 2 * 2 ))
echo $mult

# division
div=$(( 3 / 3 ))
echo $div

div=$(( 3 / 1 ))
echo $div

# modulus or reminder
rem=$(( 3 % 1 ))
echo $rem

rem=$(( 2 % 2 ))
echo $rem

rem=$(( 20 % 3 ))
echo $rem
