#!/bin/bash
echo -e "Checking my IP addr!\n\n"
curl http://bot.whatismyipaddress.com/ > my_ip_addr.txt 
echo -e "\n"
cat my_ip_addr.txt
echo -e "\n"
git add -A
git commit -a -m "Updating my IP addr."
git push
