#!/bin/bash

# for loop allows you to iterate through a list sequentially
# Brace expansion: {1..5} generates 1 2 3 4 5
# Explicit: apple banana cherry
# Command substitution: $(ls)
# Glob pattern: *.txt

for fruit in "apple" "banana" "cherry"; do
  echo $fruit
done

for number in {1..5}; do
  echo "Number: $number"
done

# Iterate over all users in /etc/passwd
for user in $(cut -d: -f1 /etc/passwd); do
  echo "User: $user"
done

# Process all running process IDs
for pid in $(pgrep bash); do
  echo "Bash PID: $pid"
done

# Glob patterns.
for config in /etc/*.conf; do
  echo  "config: $config"
done
# ---------------------------------------------------------

# while loop
# Condition evaluated before each iteration
# If true (exit status 0), commands execute
# Loop repeats until condition false (non-zero exit status)

while [ ! -f /var/run/app.pid ]; do
  echo "Waiting for service..."
  sleep 2
done

age=16

while [ $age -le 18 ]; do
  echo "you can't go to the bar"
  ((age++))
done

echo "while loop done"

#---------------------------------------------------------

# until loop
# Key difference from while: Inverted logic. while runs when condition true; until runs when condition false.
# Condition evaluated before each iteration
# If false (non-zero exit status), commands execute
# Loop repeats until condition true (exit status 0)

age=16

until [ $age -ge 18 ]; do
  echo "you can't go to the bar"
  ((age++))
done

# ----------------------------------------------------------

# Break and continue control
# Break: Immediately exits the loop entirely. Execution jumps to first command after done.
# Continue: Skips remaining commands in current iteration. Jumps to next iteration.

for i in {1..10}; do
  if [ $i -eq 5 ]; then
    break  # stops loop at i=5
  fi
  echo $i
done
# Output: 1 2 3 4

for i in {1..5}; do
  if [ $i -eq 3 ]; then
    continue  # skips echo for i=3
  fi
  echo $i
done
# Output: 1 2 4 5

# ---------------------------------------------------------------

# Nested loops
# Outer loop iterates once
# Inner loop completes all iterations for that outer iteration
# Outer loop advances, inner loop resets and completes again
# Each loop requires its own done

for i in "blue" "red" "yellow"; do
  for j in "apple" "cherry" "banana"; do
    echo "Outer $i Inner $j"
  done
done

