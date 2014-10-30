#!/bin/bash

#-e means that i detects \n
echo -e "Checking my IP addr!\n"

#-s means silent - no verbose
curl -s http://bot.whatismyipaddress.com/ > my_ip_addr.txt 

#print my new IP addr
cat my_ip_addr.txt

#detect all new or deleted files
git add -A

#-q means quiet mode - no verbose
git commit -q -a -m "Updating my IP addr."
git push -q

echo -e "\n\nFinished!"
