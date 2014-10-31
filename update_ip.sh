#!/bin/bash

#-s means silent - no verbose
newip=$(curl -s http://bot.whatismyipaddress.com/)
oldip=$(cat my_ip_addr.txt)

#detect if something has changed in this git folder
change=$(git status -s)

#if ip addr differs or if there is some change in folder
if [ "$newip" != "$oldip" ] || [ "$change" != "" ]; then

#remove old output for new entry
rm output.log

#some comment in log
echo "$(date): Checking my public IP addr now!" >> output.log

#print my new IP addr to log
echo "$newip" >> output.log

#remove my old IP addr
rm my_ip_addr.txt
#save my new IP addr
echo "$newip" >> my_ip_addr.txt

#detect all new files
git add -A

#-q means quiet mode - no verbose
git commit -q -a -m "Updating my IP addr to $newip at $(date)"
#update remote repo
git push -q

fi
#EOF
