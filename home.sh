#!/bin/bash


ls /home > homer

input='homer'
while IFS= read -r homey
do

if grep $homey /etc/passwd > /dev/null ;
then


dtry=$(grep $homey /etc/passwd)

e=${dtry%%:*}

echo chown -Rf $e:$e /home/$homey

else
echo "/home/"$homey "<-- The owner is not mentioned in /etc/passwd"
fi
done < $input



