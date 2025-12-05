#!/bin/bash

# bash stores types of variables without declaration.

# String: Strings are character sequences.
#   Assignment: var="text" ( no space around "=")
#   Reference: $var
#   Concatanation: Just place them directly as you want, like text="$var1 how are you $var2"
#   Quoting: Double quotes " " allow variable expansion 
#            Single quotes '' treat everything literally

x="Hello"
y='$x'
z="$x"
echo $y
echo '$y'
echo "$y"
echo $z
echo '$z'
echo "$z"

name="David"
lastName="Hernandez"
greet="Hello $name $lastName "
echo $greet

# Numbers: 
# Bash can only handles integers, use other tools for floating point math.
# using $((expression)) syntax. No $ needed inside for variables.
# Operations:
#  + addition
#  - subtraction
#  * multiplication
#  / integer division (truncates)
#  % modulo (remainder)

a=5
b=2
echo $(( a + b ))
echo $(( a - b ))
echo $(( a * b ))
echo $(( a / b ))
echo $(( a % b ))

# Arrays:
# Bash arrays stores mutiplue values with zero-based integer indices.

arr=("val1" "val2" "val3") # Implicit indices 0, 1, 2 ...

echo  ${arr[0]} # Access single element 
echo  ${arr[1]} 
echo  ${arr[2]} 

# direct assignment
arr[0]="first"
echo ${arr[0]}

# These without quotes are the same, but in the next example you'll see what the difference is.
echo ${arr[@]} # All elements (separate words)
echo ${arr[*]} # All elements (single word if quoted)

arr=("first item" "second" "third item")
for i in "${arr[@]}"; do
    echo "$i"
done
# output:
# first item
# second
# third item

for i in "${arr[*]}"; do
  echo "$i"
done
# output:
# first item second third item

for i in ${arr[@]}; do
  echo $i
done
# output:
# first
# item
# second
# third
# item

for i in ${arr[*]}; do 
  echo $i
done
# output:
# first
# item
# second
# third
# item

echo ${#arr[@]} # Array length

# Array iteration
colours=("yellow" "blue" "red")
for colour in "${colours[@]}"; do
  echo $colour
done

# Array modification
colours[2]="orange" # Replace index
colours+=("purple") # append to end
colours+=("pink") # append to end
unset colours[3]    # Delete index, unset removes element but doesn't reindex (leaves gap)
echo "${colours[3]}"
echo "${colours[@]}"

# Associative arrays 
# Associative arrays use string keys instead of integer indeces. Must declare with declare -A

declare -A countries
countries[Colombia]="spanish"
countries[United States]="english"

