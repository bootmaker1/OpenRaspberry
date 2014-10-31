#!/bin/bash

#-s means silent - no verbose
newip=$(curl -s http://bot.whatismyipaddress.com/)
oldip=$(cat my_ip_addr.txt)

change=$(git status -s)

if [ "$newip" != "$oldip" ] || [ "$change" != "" ]; then

#-e means that i detects \n
echo -e "$(date): Checking my public IP addr now!\n"

#print my new IP addr
cat my_ip_addr.txt
#print one free line after the text
echo -e '\n'

#detect all new or deleted files
git add -A

#-q means quiet mode - no verbose
git commit -q -a -m "Updating my IP addr."
git push -q

echo -e "\nDone!"
fi
