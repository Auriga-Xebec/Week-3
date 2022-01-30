#!/bin/bash

### this program takes an input from a file, and trims it to 64 bytes
### it then generates another shasum from an input.
### it compares the password attempt three times then fails the program

info_test=$(cut -b 1-64 secret.txt)

for ((i=1; i<=3; i++)); do 
    echo "Attempt number $i of 3
    Please enter a password: " ; read
    pass_attempt=$(echo -n $REPLY | sha256sum | cut -b 1-64)
    echo $pass_attempt

    if [ $info_test = $pass_attempt ]; then
    echo "Good job"
    exit 0
    else 
    echo "Attempt failed"
    fi
done
"Access denied"
exit 1