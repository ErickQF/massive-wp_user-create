#!/bin/bash

cat $1 | while read line ;
do
    
    users=($(echo $line | awk -F, '{print $1}') $(echo $line | awk -F, '{print $2}') $(echo $line | awk -F, '{print $3}') $(echo $line | awk -F, '{print $4}'))
	wp user create ${users[0]} ${users[1]} --role=${users[2]} --user_pass=$2 --allow-root

done
