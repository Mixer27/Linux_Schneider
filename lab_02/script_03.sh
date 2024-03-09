#!/usr/bin/bash

<<KOMENTARZ
Deskryptory

0 - deskryptor wejściowy
1 - deskryptor wyjściowy
2 - deskryptor wyjściowy błędu

KOMENTARZ

# przykład 1 (utworzenie pliku z zawartością)
ls > plik.txt

# przykład 2 (utworzenie pliku z zawartością wykorzystując deskryptory)

#exec 1> "plik.txt"
#ls -a  >&1

# przykład 3 (połączenie dwóch plików w całóść)
echo "Witaj w Slackware" > plik1.txt
echo "Powtórka z bash" > plik2.txt
cat plik1.txt plik2.txt > plik12.txt

# przykład 4 (dopisywanie danych do pliku)
echo "Ćwiczenia" >> plik12.txt

# przykład 5 (Pzekierowanie strumieni)
# exec 2>&1
# echo "Testujemy" > /dev/null >&2

#przukład 6 (Potoki)
ls -a | grep ".txt"

#przykład 7 (Potoki nazwane)
mkfifo myPipe
ls -al > myPipe
grep ".txt" < myPipe
