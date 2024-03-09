#!/usr/bin/bash

# wczytywanie danych z klawiatury

echo "Jaki jest twój ulubiony kolor?"
read kolor
echo "Twój ulubiony kolor to: $kolor"

echo ""

echo "Jaki jest twój nickname?"
odp="tata"
read
echo $odp

echo "Podaj trzy liczby:"
read a b c
echo "Liczba w zmiennej a to: $a"
echo "Liczba w zmiennej a to: $b"
echo "Liczba w zmiennej a to: $c"

echo

# dopisywanie danych
echo "Podaj liczbę od 4 do 10:"
read liczba
echo "Jesteś ${liczba}-ty w kolejce"

echo

# wybrane parametry read
# 1) -p (znak zachęty bez znaku kończącego nowej linii)

read -p "Witaj " imie
echo $imie

echo

# 2) -a (przypisywanie kolejnych wartości do kolejnych indeksów zmiennej tablicowej)

echo "Podaj elementy tablicy:"
read -a tablica
echo "${tablica[*]}"

echo 

# 3) -e (brak nazwy zmiennej -> $REPLY)

echo "Witaj BASH!"
read -e
echo "$REPLY"

# 4) -s (nie wyświetla znaków wpisywanych przez użytkownika)
# bez echa max 30 sekund

read -p "Hasło: " -s -t 30 haslo
echo $haslo

