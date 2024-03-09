#!/bin/bash

# Argumenty -help 
# -create-dir -remove-dir -copy-dir -move-dir -craete-dirs
# -create -remove -copy -move

if [ $1 = "-help" ]; then
   echo "Pomoc:
   -help - pomoc do skryptu
Operacje na katalogach:
   -create-dir [nazwa/ścieżka] - tworzy katalog o podanej nazwie
   -create-dir-path [ścieżka] - tworzy katalogi na podstawie podanej ścieżki
   -remove-dir [nazwa/ścieżka] - usuwa katalog o podanej nazwie
   -copy-dir [nazwa/ścieżka] [nazwa/ścieżka docelowa]- kopiuje katalog wraz z zawartością do wskazanego katalogu 
   -move-dir [nazwa/ścieżka] [nazwa/ścieżka docelowa]- przenosi katalog wraz z zawartością do wskazanego katalogu
Operacje na plikach:
   -create [nazwa/ścieżka] - tworzy plik
   -remove [nazwa/ścieżka] - usuwa plik
   -copy [nazwa/ścieżka] [nazwa/ścieżka docelowa] - kopiuje plik do wskazanej lokalizacji
   -move [nazwa/ścieżka] [nazwa/ścieżka docelowa] - przenosi plik do wskazanej lokalizacji
"
fi

# operacje na katalogach
if [ $1 = "-create-dir" ]; then
   mkdir $2
   echo "Utworzono katalog $2"

elif [ $1 = "-create-dir-path" ]; then
   mkdir -p $2
   echo "Utworzono strukturę katalogów $2"

elif [ $1 = "-remove-dir" ]; then
   rm -r $2
   echo "Usunięto katalog $2"

elif [ $1 = "-copy-dir" ]; then
   cp -r $2 $3
   echo "Skopiowano katalog $2 i jego zawartość do $3"

elif [ $1 = "-move-dir" ]; then
   mv $2 $3
   echo "Przeniesiono katalog $2 i jego zawartość do $3"
# oepracje na plikach
elif [ $1 = "-create"  ]; then
   touch $2
   echo "Utworzono plik $2"

elif [ $1 = "-remove"  ]; then
   rm $2
   echo "Usunięto plik $2"

elif [ $1 = "-copy"  ]; then
   cp $2 $3
   echo "skopiowano plik $2 do $3"

elif [ $1 = "-move"  ]; then
   mv $2 $3
   echo "Przeniesiono plik $2 do $3"
fi
