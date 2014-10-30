#!/bin/bash

if [[ 'git status --porcelain' ]]; then
   echo NOT EQUAL !
else
   echo EQUAL !
fi
