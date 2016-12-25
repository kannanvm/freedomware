#!/bin/bash

input=/root/findr
while IFS= read -r var
do
stat -c '%n %U %G' $var >> statr
done < "$input"
