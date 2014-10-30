#!/bin/bash
echo Updating my IP addr!
curl http://bot.whatismyipaddress.com/ > my_ip_addr.txt 
git add -A
git commit -a -m "Updating my IP addr."
git push
