#!/bin/bash
echo "Checking my IP addr!"
curl http://bot.whatismyipaddress.com/ > my_ip_addr.txt 
echo " "
cat my_ip_addr.txt
echo " "
git add -A
git commit -a -m "Updating my IP addr."
git push
