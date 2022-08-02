#!/usr/bin/env bash

#These is the command line argument were:
# The first argument is a path to the folder with veraPDF installation

# $@ = stores all the arguments in a list of string
# $* = stores all the arguments as a single string
# $# = stores the number of arguments
# -z string:  True if the length of string is zero.


if [ $# -ne 1 ]; then
        echo "please specify the path to veraPDF, for example: ../verapdf/verapdf"
		exit 1
fi

# the path to veraPDF
VERAPDF=$1

#Options to check
STATUS="doesn't have a .pdf extension."

echo "checking veraPDF:"
echo $VERAPDF
VER=$("$VERAPDF" --version | grep veraPDF)
echo $VER

#Checking policy and Define the string value
text=$("$VERAPDF" -f 0 ./159759_default.sh  --format text 2>&1 | grep SEVERE) 

# Set space as the delimiter
IFS=' '

#Read the split words into an array based on space delimiter
read -a strarr <<< "$text"

#Count the total words
echo "There are ${#strarr[*]} words in the text."
TOTAL_WORDS=${#strarr[*]}
REAL_STATUS="${strarr[3]} ${strarr[4]} ${strarr[5]} ${strarr[6]} ${strarr[7]}"

#echo "$REAL_STATUS"
#echo "$STATUS"

# Print each value of the array by using the loop
#for val in "${strarr[@]}";
#do
#  printf "$val\n"
#done


if [[ "$STATUS" == *"$REAL_STATUS"* ]] && (( $TOTAL_WORDS==12 )); then
       echo "$REAL_STATUS"
       echo "$TOTAL_WORDS"
       echo "exit 0"
       exit 0
else 
       echo "Check failed, exit 1"
       exit 1
fi
