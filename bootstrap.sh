#!/bin/bash

# Test to see if homebrew is installed
function genericbrew() {

   local __resultvar=$1
   local myresult=$1
   if [[ "$__resultvar" ]]; then
      echo "$myresult"
   else
      echo "$myresult"
   fi 
}

brewexists=$(genericbrew `command -v brew 2>&1`) 
if [ "$brewexists" ]; then
   echo "brew is installed"
   # Make sure brew is up to date
   brewcurrent=$(genericbrew `brew update 2>&1`)
   if [ "$brewcurrent" ]; then
      echo "brew is current" 
   else 
      echo "brew update failed ... exiting"
      exit 
   fi
else
    echo "brew not installed....checking for xcode"
    
fi
