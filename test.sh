#!/bin/bash

echo $(git status -s)

echo Starting !

if -e $(git status); then
   VN="$VN-mod"
   echo NOT EQUAL !
fi

