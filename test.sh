#!/bin/bash

echo Starting !

if ! git diff-index --quiet HEAD --; then
   VN="$VN-mod"
   echo NOT EQUAL !
fi

