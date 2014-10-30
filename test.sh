#!/bin/bash

echo Starting !

function bla(){
local BLABOL="'git status --porcelain 2>&1'"



#if [[ $BLABOL ]]; then
#   echo NOT EQUAL !
   echo "$BLABOL"
#else
#   echo EQUAL !
#   echo $BLABOL
#fi
}

export bla()
