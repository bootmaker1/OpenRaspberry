#!/bin/bash

echo Starting !

if -e $(git status); then
   VN="$VN-mod"
   echo NOT EQUAL !
fi

