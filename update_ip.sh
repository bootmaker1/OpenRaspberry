#!/bin/bash
echo -e "Checking my IP addr!\n\n"
curl -s http://bot.whatismyipaddress.com/ > my_ip_addr.txt 
cat my_ip_addr.txt
echo -e "\n"
git add -A -q
git commit -q -a -m "Updating my IP addr."
git push -q
