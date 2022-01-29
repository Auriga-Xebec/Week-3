#!/bin/bash

bash passwordcheck.sh
#con=$?

if [ $? -eq 0 ]; then
    echo "(1) Folder Creator
(2) Copy folder
(3) Set Password
(4) Calculator
(5) Create week folders
(6) Check file names
(7) Download a file" 
 
    read selection
    
    case "$selection" in

        1)
        bash foldermaker.sh
        ;;
        2)
        bash foldercopier.sh
        ;;
        3)
        bash setPassword.sh
        ;;
        *)
        echo "selection does not exist"
        ;;
    esac

else 
    echo "fuck"

fi