#!/bin/bash

## a program to get all files with permissions in system ##


#ll -R /dev | grep -v '[0-9]:[0-9]' |grep -v total| grep '[a-z]'

#stat -c '%n %U %G'


#!/bin/bash
input='/home/lorenz/git/freedomware/text'  
while IFS= read -r var
do
	a=${var%% *}
	b=${var% *}
	c=${b#* }
	d=${var##* }
       	chown -f $c:$d $d

  done < "$input"
