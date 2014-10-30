#!/bin/bash

#if [ 'git status --porcelain' -ne "" ] ; then
if [ ! 'git status --porcelain' ]; then
   echo EQUAL !
else
   echo NOT EQUAL !
fi
