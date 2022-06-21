#!/bin/bash

#Description to use
#
# Installation of the veraPDF goes in the auto-install mode. To do so, your must decide - where the 'auto-install.xml' file will be located and adapt the script file.   
# If this file located on the Web use 'curl' comand otherwise 'cp'. See examples below.
#
# Run 'verapdf-env.sh' from Bash console using 'source' option (as example: test@ubuntu:~/Downloads$ source ./verapdf-env.sh)
# When the script finished, the variable $varaPATH will be defined and point on the latest installation.   
#
# Use this variable to run scripts, example: 
#test@ubuntu:~/CLI/399$ ./a_internal_oprions_check.sh "$veraPATH"/verapdf


#Definition of the TimeStamp
timestamp=$(date +%s)


#Going to: /tmp
cd /tmp
 
#Creating dir
mkdir $timestamp
cd $timestamp

#Downloading veraPDF, latest dev version 
curl -LO https://software.verapdf.org/dev/verapdf-installer.zip

unzip verapdf-installer.zip

#Definition of the variable, pointing to the veraPDF directory with installation files
veradir=$(ls | grep verapdf-greenfield)

cd "$veradir"

#Checking version
IFS='-'
read -r -a array <<< "$veradir"

VERSION="${array[2]}"
echo "VERSION: $VERSION"

#Definition of the Env variable
export veraPATH="/tmp/verapdf_${VERSION}_${timestamp}"

#Prepare  of the file: auto-install.xml
# curl -LO https://software.verapdf.org/dev/unknown_location/auto-install.xml
#
# OR
#
# cp from to

curl -LO  https://github.com/veraPDF/veraPDF-regression-tests/trunk/TOOLS/auto-install.xml 
#cp /home/test/auto-install.xml ./


#Definition of the 'PATH' to install veraPDF in the auto-install.xml file
sed -i '5 c\        <installpath>'$(echo $veraPATH)'</installpath>' ./auto-install.xml

veraizpack=$(ls | grep verapdf-izpack-installer)
echo "veraizpack: $veraizpack"

#Performing installation
java -jar "$veraizpack" auto-install.xml


