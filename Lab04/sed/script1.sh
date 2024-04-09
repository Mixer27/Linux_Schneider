#!/usr/bin/bash

<<KOMENTARZ

Paramtetry sed:
-n - wypisuje na wyjściu tylko te linie w których zostało wykonane podstawienie

-e - stosujemy gdy przetwarzamy wiele poleceń lub skryptów

-f - dzięki temu argumentowi możemy wczytywać komendy z pliku

-v - wyświetla informacje o programie

-t - wyłączenie wyjścia z istotnych komend powłoki które są wykonywane

-q - likwiduje ostrzeżenia o rezultatach podstawienia

-i - edycja w miejscu, zapisuje zmiany w oryginalnym pliku

-b - zapisywanie kopii zapasowej oryginalnego pliku

składnia:

sed "s/stary/nowy/" plik.txt
 
KOMENTARZ

# przykład 1 - usuwanie linii
sed -e '1d' -e '2d' -e '7d' ksiazki2.txt

echo
echo

# przykład 2 - zastepowanie wyraz1 przez wyraz2 (pierwsze wystąpienie)
sed 's/Proces/Wyrok/' ksiazki2.txt

echo
echo

# przykład 3 - zastępienie wyraz1 przez wyraz2 (globalnie)
sed 's/Proces/Wyrok/g' ksiazki2.txt

# przykład 4 - zastepowanie wielu wyrazów - metoda 1
sed 's/Proces/Wyrok/' ksiazki2.txt > ksiazki2m.txt && sed 's/Mały/Duży/' ksiazki2m.txt

echo
echo

# przykład 5 - zastąpieniev wielu wyrazów - metoda 2
sed 's/Proces/wyrok/;s/Mały/Duży/' ksiazki2.txt
