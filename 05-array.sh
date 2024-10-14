#!/bin/bash

SUBJECTS=("Engilsh" "Maths" "Science")

#size of above array is 3
#index are 0,1,2

#list always starts with 0

echo "First subject is: ${SUBJECTS[0]}"
echo "First subject is: ${SUBJECTS[1]}"
echo "First subject is: ${SUBJECTS[@]}" #all will print