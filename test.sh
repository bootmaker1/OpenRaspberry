#!/bin/bash
cd ~/Desktop/projects/OpenRaspberry/
if [ 'git status --porcelain' ]; then
   echo NOT EQUAL !
else
   echo EQUAL !
fi
