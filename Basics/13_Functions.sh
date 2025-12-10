#!/bin/bash

# bash functions follow the DRY principle: define it once, call it many times
# you have two syntax options

# option 1
hello_world() {
  echo "Hello world"
}

# option 2
function hola_mundo {
 echo "Hola mundo" 
}

hello_world 
hola_mundo

# Functions access arguments via positional parameters $1, $2, $3, etc.
# $1 = first argument, $2 = second, etc.
# $0 = script name (not function name)
# $# = argument count
# $@ = all arguments as separate words
# $* = all arguments as single string

function greet {
  echo "Hello $1!"
}

greet "David"
greet 

# local variables 
# Safe encapsulation in scripts with multiple functions. Each function manages its own data without polluting global namespace.
# local restricts variable to function scope only
# Without local, variables are global (affect entire script)
# Local variables disappear when function exits
# the local variable takes precedence. The function sees/modifies only the local copy. The global variable remains unchanged.

name="William"
function greet_two {
  local name=$1
  echo "Hello $name"
}

greet_two "Orlando"
greet_two 
echo "$name"

# return values
# echo sends output to stdout (standard output)
# $() captures stdout into a variable

function get_name {
  local name
  echo "what's your name?" >&2  # Send to stderr, not captured
  read name
  echo $name  # Only this goes to stdout/captured
}
name=$(get_name)
echo "the name is $name"  # Output: the name is Alice

function add {
  local sum=$(($1 + $2))
  echo $sum
}
result=$(add 2 2)
echo "The sum is $result"
