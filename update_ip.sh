#!/bin/bash

#-s means silent - no verbose
newip=$(curl -s http://bot.whatismyipaddress.com/)
#oldip=$(cat my_ip_addr.txt)
oldip="1"

change=$(git status -s)

if [ "$newip" != "$oldip" ] && [ "$change" != "" ]; then
echo TEST!

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

else
echo "Nothing to commit!"
fi
