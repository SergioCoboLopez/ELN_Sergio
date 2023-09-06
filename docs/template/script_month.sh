#!/bin/sh
# This is a comment!
echo Hello World

#Get current month when the script is run
month=$(LANG=en_us_88591; date +"%B")
echo $month

#Get current year when the script is run
year=$(LANG=en_us_88591; date +"%G")
echo $year

test=${month}_${year: -2}
echo $test

mkdir $test

#Last two numbers of the current year


