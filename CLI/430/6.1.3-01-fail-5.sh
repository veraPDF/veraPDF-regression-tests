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
text=$("$VERAPDF"  6.1.3-01-fail-5.pdf --policyfile 6.1.3-01-fail-5.sch  2>&1) 

text_SEVERE=$(echo "$text" | grep SEVERE -w -c) 
text_WARNING=$(echo "$text" | grep WARNING  -w -c)
text_policyReport=$(echo "$text" | grep policyReport | grep failedChecks=\"0\") 


#echo "$text_SEVERE"
#echo "$text_WARNING"
#echo "$text_policyReport"

if (("$text_SEVERE" == 2 )) && (( "$text_WARNING" == 3 )) && [[ "$text_policyReport" == *"failedChecks=\"0\""* ]]; then
       echo "text_SEVERE: $text_SEVERE"
       echo "text_WARNING: $text_WARNING"
       echo "text_policyReport: $text_policyReport"
       echo "exit 0"
       exit 0
else 
       echo "Check failed, exit 1"
       exit 1
fi
