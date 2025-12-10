#!/bin/bash

# if statement structure.

age=18

if [ $age -ge 18 ]; then
  echo "Adult"
fi

# if-else statement structure

file="helloworld.txt"

if [ -f $file ]; then
  cat $file
else
  echo "file not found"
fi

# elif statement structure

if [ $age -lt 20 ]; then
  echo "true 1"
elif [ -s $file ]; then
  echo "true 2"
else
  echo "neither of those two are true"
fi

# nested if statments, each if requires its own fi closure.

number=2

if [ $number -gt 0 ]; then
  echo "the number is greater than zero"
  if [ $number -lt 3 ]; then
    echo "the number is less then three"
  fi
fi
