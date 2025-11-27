#!/bin/bash

#String operators

# equality = or ==
[ "Hello" = "Hello" ]
echo $?

[ "Hello" = Hello ]
echo $?

[ "10" = "010" ]
echo $?

[ 10 -eq 010 ] # This is true (octal interpeted)
echo $?

# inequalitity
[ "Hello" != "Hello" ]
echo $?

[ "Hello" != "hello" ]
echo $?

# ASCII order: earlier in the alphabet, but the scripts run locale on my computer something like en_US.UTF-8 where lower and upper case are collated together like aAbBcC. We have to keep this in mind.
# <, > inside [ ] require escaping like < or >.

[ "House" \< "zi" ]
echo $?

[ "house" \< "zi" ]
echo $?

[ "Hi" \< "hi" ]
echo $?

# < and > inside [[ ]] are lexicographic
[[ "9" < "A" ]]      # True: 57 < 65
echo $?
echo True = 0 

[[ "Z" < "a" ]]     # True: 90 < 97 if run In locale C pure ASCII order, false if locale en_US....
echo $?
echo True = 0

[[ "100" < "20" ]]   # True: '1'(49) < '2'(50), stops there
echo $?

[[ "apple" < "zebra" ]] # True: 'a' < 'z'
echo $?

[[ "App" < "Apple" ]] # True: shorter string at mismatch point
echo $?

[[ "Apple" < "ApPle" ]] # True 
echo $?

username=ZzzZzz

if [[ "$username" != "admin" ]]; then
    echo "$username"
fi
