#!/bin/bash

## a program to get all files with permissions in system ##


#ll -R /dev | grep -v '[0-9]:[0-9]' |grep -v total| grep '[a-z]'

#stat -c '%n %U %G'


#!/bin/bash
input='/root/text'  
while IFS= read -r var
do
	p=${var%% *}
	q=${var% *}
	r=${q#* }
	s=${var##* }
        chown -f $r:$s $p

  done < "$input"
