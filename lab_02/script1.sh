#!/usr/bin/bash

# komentarz

# Dekleracja zmiennych
a="Pierwsza zmienna"
echo $a
b=4
echo $b

# apostrofy

echo 'Tekst: $a'
echo -n "Tekst: $a"
echo "Tekst: \$a"

echo

echo `ls -a`

# wersja alternatywna
echo $( ls -a )

# Rodzaje zmiennych
# zmienne lokalne
p="Zmienna lokalna"
echo

katalog=`pwd`
echo "jesteś w katalogu $katalog"

# wersja alternatywna
katalog=$( pwd )
echo "jesteś w katalogu $katalog"

# zmienne specjalne
# nazwa skryptu
echo "$0"
# parametry skryptu
echo "$@"
echo "Parametry skryptu to: $@"

# kod powrotu ostatnio wykonanego polecania
echo "$?"
# pid bieżącej powłoki
echo "$$"

echo

# Zmienne środowiskwe

# zmienne lokalne

t="Tekst"

# zmienna globalna
export t

# usunięcie atrybutu zmiennej globalnej
export -n t

#echo $( export -p | more )

# Wyświetlanie zmiennych środowiskowych
echo "$ENV"

echo

# zmienne tablicowe

tablica=(10 2 3 4 5)
echo ${tablica[0]}
echo ${tablica[*]}
echo ${tablica[@]}

# liczba znaków danego elementu tablicy
echo ${#tablica[0]}

echo

# dodawanie elementów do tablicy
tablica[5]=6
echo ${tablica[*]}

tablica[8]=7
echo ${tablica[8]}
echo ${tablica[*]}

# alternatywne tworzenie tablicy
tab[0]="Tak"
tab[1]="Nie"
echo ${tab[*]}

echo

# usuwanie elementów tablicy
unset tablica[3]
echo ${tablica[*]}

echo

# usuwanie całej tablicy
unset tablica[*]
echo ${tablica[*]}


