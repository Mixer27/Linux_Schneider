#!/bin/bash

echo $$ > endlessScript.pid

while [ 1 -eq 1 ]; do
   echo "Jestem w pętli!"
   sleep 1
done
