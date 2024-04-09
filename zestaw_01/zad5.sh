#!/bin/bash

i1=$1
i2=$2

read -a wyrazy 
#echo ${wyrazy[*]}

function zamien() {
   index=0
   for w in "${wyrazy[@]}"; do
      #echo "$index $w" 
      if [ "$w" = "$1" ]; then
         #echo "ZAMIANA"
         wyrazy[index]=$2
      fi
      ((index+=1))
   done
}
zamien "$i1" "$i2"
echo "${wyrazy[@]}"
