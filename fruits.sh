#!/bin/bash

fruits=("Apple" "Mango" "Strawberry" "Orange" "Banana")

for ((i; i<=(${#fruits[@]})-1; i++)); do
    echo "Fruit: ${fruits[i]}"
done