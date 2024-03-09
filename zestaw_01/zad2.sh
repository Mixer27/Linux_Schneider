#!/bin/bash

echo -n -e "Informacje:\nProcesor: " > info.txt 
uname -p>> info.txt
echo -n "Jądro: " >> info.txt
uname -s -r -v >> info.txt
echo "Aktualnie zalogowany użytkownik: $USER" >> info.txt
echo "Katalog domowy aktualnie zalogowanego użytkownika: $HOME" >> info.txt
