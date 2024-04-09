#!/usr/bin/bash

# przykład 1 - kropka
echo -e "kot\nlot\npot\npit\npat" | awk "/p.t/"

echo

# przykład 2 - początek linii
echo -e "Test\nTenis\nTeraz\nTenor\n" | awk "/^Ten/"

echo

# przykład 3 - koniec linii 
echo -e "kot\nplot\npot\npit\npat" | awk "/ot$/"

echo

# przykład 4 - dopasowanie
echo -e "kot\nlot\npot\npit\npat" | awk "/[pl]ot/"
echo

# przykład 5 - poza dopasowaniem
echo -e "kot\nlot\npot\npit\npat" | awk "/[^pl]ot/"
echo

# przykład 6 - alternatywa
echo -e "kto\nlot\npot\npit\npat" | awk "/pot|lot/"
echo

# przykład 7 - 0 lub jedno wystąpienie
echo -e "sto\nstos\n" | awk "/stos?/"
echo

# przykład 8 - 1 lub wiecej wystąpień 
echo -e "112\n242\n123\n331\n456\n222" | awk "/2+/"
echo

# przykład 9 - 
echo -e "Nowy traktor\nNowy rower\nNowy samochód\nNowy kombajn" | awk "/Nowy (traktor|kombajn)/"
