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
STATUS="FAIL"

echo "checking veraPDF:"
echo $VERAPDF
VER=$("$VERAPDF" --version | grep veraPDF)
echo $VER

#Checking and Defining the string value
text_FAIL=$("$VERAPDF" 68_1_fail.pdf -v --passed --format text 2>&1 | grep -w  -c FAIL) 
text_PASS=$("$VERAPDF" 68_1_fail.pdf -v --passed --format text 2>&1 | grep -w  -c PASS)

# Set space as the delimiter
IFS=' '

#Read the split words into an array based on space delimiter
read -a strarr <<< "$text_FAIL"
read -a strarr <<< "$text_PASS"

echo "text_FAIL: $text_FAIL"
echo "text_PASS: $text_PASS"

#Count the total words
#echo "There are ${#strarr[*]} words in the text."
TOTAL_WORDS=${#strarr[*]}
REAL_STATUS="${strarr[1]} ${strarr[3]} ${strarr[4]}"

#echo "$REAL_STATUS"
#echo "$STATUS"

# Print each value of the array by using the loop
#for val in "${strarr[@]}";
#do
#  printf "$val\n"
#done


if (("$text_FAIL" == 3 )) && (( "$text_PASS" == 67 )); then
       echo "text_FAIL: $text_FAIL"
       echo "text_PASS: $text_PASS"
       echo "exit 0"
       exit 0
else 
       echo "Check failed, exit 1"
       exit 1
fi
