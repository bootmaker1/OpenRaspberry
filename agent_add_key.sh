#!/usr/bin/expect -f
spawn ssh-add
expect "Enter passphrase for /home/pi/.ssh/id_rsa:"
send "tralala5\n";
interact
exit
