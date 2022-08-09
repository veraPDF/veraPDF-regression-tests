#!/bin/bash

# Performing installation of the veraPDF by running the script:

#Downloding the script:
svn export https://github.com/veraPDF/veraPDF-regression-tests/trunk/TOOLS/verapdf-env.sh
chmod 700 verapdf-env.sh

VERAPDF_ENV="./verapdf-env.sh"
source "$VERAPDF_ENV"
cd $veraPATH

echo "Checking veraPDF:"
echo $veraPATH
VER=$("$veraPATH"/verapdf --version | grep "the veraPDF")
echo $VER

STATUS="the veraPDF"
echo "STATUS: "$STATUS 
echo "VER: "$VER
 
if [[ "$VER" == *"$STATUS"* ]]; then
	echo -e "\n"
 	echo "Going ahead ... "
else
    	echo "It looks like veraPDF is not found ..., please check"
	echo "Check failed, exit 1"
	exit 1
fi

# Dowloding LCI scripts

svn export  https://github.com/veraPDF/veraPDF-regression-tests/trunk/CLI
#cp -r /home/test/CLI ./

echo "pwd: "$(pwd);
cd "./CLI"
chmod 700 -R ./

echo -e "\n"

#cd "/home/test/CLI"
echo "pwd: "$(pwd);
echo -e "\n"


for d in ./*;  do
	echo "$d"
	pwd_dir=$(pwd)

	cd "$d"
	echo "pwd: "$(pwd);
	echo "Contents of dir: $d";
	echo "$(ls -la)"

	echo "Running scripts ..."
	run-parts -v --arg $veraPATH/verapdf --regex '.*sh$' ./  2>&1

	cd $pwd_dir
	echo "pwd: "$(pwd);
	echo -e "\n"
done

