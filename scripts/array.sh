#!/bin/bash

echo running

# ARRAY IN BASH TARMINAL
declare -A MY_ARRAY

# LOOP THROUGH ALL THE ARGUMENTS HAS BEEN PASSED
for argument in $*; do
    echo argument
done

FOODS=('🍕' '🍔' '🍟' '🌭' '🍿' '🧂' '🥓' '🥚' '🍳' '🧇' '🥞' '🧈' '🍞')

# LOOP THROUGH ARRAY
for food in ${FOODS[@]}; do
    echo $food
done

# LOOP THROUGH ARRAY WITH INDEX
for i in ${!FOODS[@]}; do
    echo "food $i is ${FOODS[$i]}"
done

# SELECT ITEM WITH INDEX
ANIMALS=('🐵' '🦊' '🐻' '🦍' '🐎')
echo ${ANIMALS[1]}

# SELECT ITEM WITH INDEX IN RANGE
echo ${FOODS[@]:0:1}
echo ${FOODS[@]:4:8}

# COUNT ALL THE ITEM IN THE ARRAY
echo ${#ANIMALS[@]}

# REMOVE ARRAY ITEM
unset ANIMALS[0]
echo remaining ${#ANIMALS[@]} animals
