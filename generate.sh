#!/bin/bash

# THIS SCRIPT IS TO GENERATE X AMOUNTS OF PASSWORDS INTO A CSV FILE
# DONE BY JONATHAN LAMPTEY JR.

# GLOBAL VARIABLES
LEN=""
NUM=""

BASEDIR=$(dirname "$0")
clear

echo -e "Jonathan's Password Generator v1.0\n"

read -p "Length of passwords: " LEN
read -p "Number of passwords: " NUM
	
echo -e "\n ABOUT TO GENERATE $NUM PASSWORDS WITH LENGTH $LEN"
if [ ! -s "$BASEDIR/passwords.csv" ]; then
	echo -e "Date,System / SITE,Description,Username,Password" >> $BASEDIR/passwords.csv
fi

echo -e "WORKING...."

for (( c=1; c<=$NUM; c++  ))
do
	TEMP_PASS=`$BASEDIR/randomGenerator $LEN`
	echo -e ",,,,$TEMP_PASS" >> $BASEDIR/passwords.csv
done
echo -e "\nDONE, ALL PASSWORDS SAVED IN passwords.csv"
