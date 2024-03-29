#!/bin/bash

## 1. ask the user to enter a file name
## 2. ask the user to enter a secret password
## 3. save the password to secret.txt in the file they choose.


### Prompt the user for a file name
echo "Please enter a file name: " && read file_name

### Function to ask, hash and save password
pass_make(){
    read -sp "Password: " && echo "$REPLY" | sha256sum > secret_sterilised.txt
}

if [ -x "$file_name" ] ; then

    cd "$file_name" && pass_make
    echo ### force the new line

else

    mkdir "$file_name" && cd "$file_name" && pass_make
    echo ###just to force the new line

fi
