#!/bin/bash

FOODS=('🍕' '🍔' '🍟' '🌭' '🍿' '🧂' '🥓' '🥚' '🍳' '🧇' '🥞' '🧈' '🍞')

# FOR LOOP SYNTEXT

: '
for VARIABLE in 1 2 3 4 5 .. N
do
    command1
    command2
    commandN
done
'

for VARIABLE in ${FOODS[@]}; do
    echo $VARIABLE
done

# FOR LOOP STEP

: '
for i in {START..END}
do
   commands
done

# 

for i in {START..END..STEP}
do
   commands
done
'

for i in {1..5}; do
    echo "Number $i"
done

for i in {1..10..2}; do
    echo "Odd $i"
done

#GENERAL FOR LOOP

: '
for (( EXP1; EXP2; EXP3 ))
do
    command1
    command2
    command3
done 

for (( initializer; condition; step ))
do
  shell_COMMANDS
done
'

for ((i = 1; i <= 5; c++)); do
    echo "print $i"
done

# INFINITE LOOP
# for (( ; ; )); do
#     echo "infinite loops [ hit CTRL+C to stop]"
# done

#  CONDITIONAL EXIT WITH BREAK

for I in 1 2 3 4 5; do
    echo statements1 #Executed for all values of ''I'', up to a disaster-condition if any.
    echo statements2
    if [[ $I == 1 ]]; then
        break #Abandon the loop.
    fi
    echo statements3 #While good and, no disaster-condition.
done

# CONTINUE LOOP WITH CONTINUE STATEMENT

for I in 1 2 3 4 5; do
    echo statements1 #Executed for all values of ''I'', up to a disaster-condition if any.
    echo statements2
    if [[ $I == 2 ]]; then
        continue #Go to next iteration of I in the loop and skip statements3
    fi
    echo statements3
done
