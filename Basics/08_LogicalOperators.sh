#!/bin/bash

# Logical operators
# Bash has no way support direct type assignment for variables. it only handles strings and integers. you can work around this using flags
# such as a=true, a="true" or a=0 

# && and, both must be true
# || or, at least one true
# ! not, invert the result.

a="true"
b="false"
[[ $a && $b ]]
echo $?

[[ $a = "true" && $b = "false" ]]
echo $?

a=0
b="false"
[[ $a && $b ]]
echo $?

# as you can see, the logical operator tests if the command runs or fails, so all these tests return 0

age=18
driver_license="yes"

if [[ $age -ge 18 && $driver_license = yes ]]; then 
  echo "You can drive in highway"
fi

if [[ $1 -ge 18 && $driver_license = yes ]]; then 
  echo "You can drive in highway"
else
  echo "You can't drive in highway :("
fi

username="guess"
age=25
verified="no"

if [[ $username = "admin" || ($age -ge 18 && $verified = "yes") ]]; then
  echo "Access grantend"
else
  echo "Access denied"
fi


if [[ !$verified = "yes" ]]; then 
  echo "Verification required"
fi

if [[ !$username = "guess" || $age -gt 21 ]]; then
  echo "Proceed"
else
  echo "Denied"
fi
