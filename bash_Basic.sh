#!/bin/bash

# use to print value on the terminal 
echo "Hello practise for Bajaj finserve"

# variable to be declared in a bash script
name="Upendra Verma"
# name = "upendra verma"   -> Spaces are not allowed in the declaration of the variable with it value

# How we take input from the user
read -p "Enter your Branch : " branch

# if want to print the value of the variable we use "$" or it will treat it as a text
echo "Your name is $name"
echo "The Branch is $branch "

# using if-else statement 
#  Rules to use if else statement are :-
#                                       1.) if always start with a block if [ condition ]
#                                       2.) [ condition ] -> must have spaces before '[' and after ']' in the condition block
#                                       3.) 'then'  must follow immediately after the condition.
#                                       4.) the block must with fi
#                                       5.) The double square block handle string and space more safely


if [[ "$branch" = "CSE" ]]; then
echo "your work is here"
ls "/Users/upendraverma/Desktop/programs/"
echo $?
else
echo "No room for your branch"
fi 




for i in 1 2 3 ; do 
    echo $i
    done

for file in /Users/upendraverma/Desktop/programs/*; do
    echo "File: $file"
done
