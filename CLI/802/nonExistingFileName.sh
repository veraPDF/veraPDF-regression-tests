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
STATUS="There are no files to process"
NO_FILE="File doesn't exist."

echo "checking veraPDF:"
echo $VERAPDF
VER=$("$VERAPDF" --version | grep veraPDF)
echo $VER

#Checking and Defining the string value
text_SEVERE=$("$VERAPDF" 68_1_fail.pdf -v --passed --format text 2>&1 | grep -w  -c SEVERE) 
text_NoFile=$("$VERAPDF" 68_1_fail.pdf -v --passed --format text 2>&1 | grep "SEVERE: File")
text_NotExist=$("$VERAPDF" 68_1_fail.pdf -v --passed --format text 2>&1 | grep "SEVERE: There are no files to process.")

# Set space as the delimiter
IFS=' '

#Read the split words into an array based on space delimiter
read -a strarr <<< "$text_NoFile"

echo "text_SEVERE: $text_SEVERE"
echo "text_NoFile: $text_NoFile"
echo "text_notExist: $text_NotExist"

#Count the total words
#echo "There are ${#strarr[*]} words in the text."
#TOTAL_WORDS=${#strarr[*]}

no_FILE="${strarr[1]} ${strarr[3]} ${strarr[4]}"

#echo "$no_FILE"
#echo "$STATUS"

# Print each value of the array by using the loop
#for val in "${strarr[@]}";
#do
#  printf "$val\n"
#done

if [[ "$text_NotExist" == *"$STATUS"* ]] && [[ "$no_FILE" == *"$NO_FILE"* ]] && (("$text_SEVERE" == 2)) ; then
       echo ""
       echo "SEVERE: $text_SEVERE"
       echo "File: $text_NotExist"
       echo "File: $no_FILE"
       echo "exit 0"
       exit 0
else 
       echo "Check failed, exit 1"
       exit 1
fi
