#!/bin/bash

### 1. Ask the user to type a secret password.
### 2. Check the password against the stored # in secret.txt
### 3. If the user inputs the correct password, print "Access granted" --> exit code 0
### 4. If the user inputs the incorrect password, print "Access denied" --> exit code 1
### For testing the correct password is 'hello'



read -sp "Password: " && echo "$REPLY" | sha256sum=tester #secret_attempt.txt
pass=$(< secret.txt)
#check=$(< secret_attempt.txt)
echo $tester

if [ "$pass" = "$tester" ]#"$check" ]; then

    echo "Access Granted" 
    #rm secret_attempt.txt && 
    exit 0
else
    echo "Access Denied" 
    #secret_attempt.txt && 
    exit 1
    #rm secret_attempt.txt

fi