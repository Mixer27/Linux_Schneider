#!/bin/bash

# Argumenty -help 
# -create-dir -remove-dir -copy-dir -move-dir -craete-dirs
# -create -remove -copy -move

if [ $1 = "-help" ]; then
   echo "
Pomoc
   -create-dir -remove-dir -copy-dir -move-dir -craete-dirs
   -create -remove -copy -move
"
fi

if [ $1 = "-create"  ]; then
   touch $2
   echo "Utworzono plik $2"
fi

if [ $1 = "-remove"  ]; then
   rm $2
   echo "Usunięto plik $2"
fi
