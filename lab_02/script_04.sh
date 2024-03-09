#!/usr/bin/bash

l1=$1
l2=$2

# funkcje
function dodaj() {
	w=$[ $l1 + $l2 ]
	echo $w
}

dodaj $l1 $l2

echo


