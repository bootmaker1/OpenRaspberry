#!/bin/bash

#-s means silent - no verbose
newip=$(curl -s http://bot.whatismyipaddress.com/)
oldip=$(cat my_ip_addr.txt)

#detect all new or deleted files
git add -A

#detect if something has changed in this git folder
change=$(git status -s)

#if ip addr differs or if there is some change in folder
if [ "$newip" != "$oldip" ] || [ "$change" != "" ]; then

#-e means that i detects \n
echo -e "$(date): Checking my public IP addr now!\n"

#print my new IP addr
cat my_ip_addr.txt

#print one free line after the text
echo -e '\n'

#-q means quiet mode - no verbose
git commit -q -a -m "Updating my IP addr to $newip at $(date)"

git push -q

echo -e "\nDone!"
fi
