#!/bin/bash

SUBJECTS=("Engilsh","Maths","Science")

#size of above array is 3
#index are 0,1,2

#list always starts with 0

echo "First subject is: ${SUBJECT[0]}"
echo "First subject is: ${SUBJECT[1]}"
echo "First subject is: ${SUBJECT[@]}" #all will print