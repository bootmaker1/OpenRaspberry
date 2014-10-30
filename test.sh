#!/bin/bash

echo Starting !

if git diff-index --quiet HEAD --; then
   echo EQUAL !
else
   echo NOT EQUAL !
fi

