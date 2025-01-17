#!/bin/bash

sigma="$1"
function="$2"

file1=NN_${function}_sigma_${sigma}_r_0.csv
file2=NN_${function}_sigma_${sigma}_r_1.csv
file3=NN_${function}_sigma_${sigma}_r_2.csv


diff -q $file1 $file2 1>/dev/null
if [[ $? == "0" ]]
then
  echo "0=1"
else
  echo "0!=1"
fi

diff -q $file1 $file3 1>/dev/null
if [[ $? == "0" ]]
then
  echo "0=2"
else
  echo "0!=2"
fi

diff -q $file2 $file3 1>/dev/null
if [[ $? == "0" ]]
then
  echo "1=2"
else
  echo "1!=2"
fi

