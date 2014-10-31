#!/bin/bash

ipaddr=$(git status -s)
#ipaddr=$(cat my_ip_addr.txt)
ipp="82.142.115.2091"
echo "$ipaddr"
echo "$ipp"
echo Starting !


if [ "$ipaddr" != "$ipp" ]; then
echo NOT EQUAL!
else
echo EQUAL!
fi

#if -e $(git status); then
#   VN="$VN-mod"
#   echo NOT EQUAL !
#fi

