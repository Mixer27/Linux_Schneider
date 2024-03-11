#!/bin/bash

select opt in "Stwórz katalog" "Stwórz katalog ze ścieżki" "Usuń katalog" "Przenieś katalog" "Skopiuj katalog" "Stwórz plik" "Usuń plik" "Przenieś plik" "Skopiuj plik" "Wyjdź"
do
   case $opt in
      "Stwórz katalog")
         read -p "Podaj nazwę katalogu: " input1
         mkdir $input1
         echo "Utworzono katalog $input1"
      ;;
      "Stwórz katalog ze ścieżki")
         read -p "Podaj ścieżkę katalogów: " input1
         mkdir -p $input1
         echo "Utworzono strukturę katalogów $input1"
      ;;
      "Usuń katalog")
         read -p "Podaj nazwę katalogu do usunięcia: " input1
         rm -r $input1
         echo "Usunięto katalog $input1 wraz z zawartością"
      ;;
      "Przenieś katalog")
         read -p "Podaj nazwę/ścieżkę katalogu do przeniesienia: " input1
         read -p "Podaj nazwę/ścieżkę do której katalog zostanie przeniesiony: " input2
         mv $input1 $input2
         echo "Przeniesiono katalog $input1 do katalogu $input2"
      ;;
      "Skopiuj katalog")
         read -p "Podaj nazwę ścieżkę katalogu do skopiowania: " input1
         read -p "Podaj nazwę/ścieżkę do której katalog zostanie skopiowany: " input2
         cp -r $input1 $input2
         echo "Skopiowano katalog $input1 do katalogu $input2"
      ;;
      "Stwórz plik")
         read -p "Podaj nazwę pliku: " input1
         mkdir $input1
         echo "Utworzono plik $input1"
      ;;   
      "Usuń plik")
         read -p "Podaj nazwę pliku do usunięcia: " input1
         rm $input1
         echo "Usunuęto plik $input1"
      ;;
      "Przenieś plik")
         read -p "Podaj nazwę/ścieżkę pliku do przeniesienia: " input1
         read -p "Podaj nazwę/ścieżkę do której plik zostanie przeniesiony: " input2
         mv $input1 $input2
         echo "Przeniesiono plik $input1 do $input2"
      ;;
      "Skopiuj plik")
         read -p "Podaj nazwę ścieżkę pliku do skopiowania: " input1
         read -p "Podaj nazwę/ścieżkę do której plik zostanie skopiowany: " input2
         cp -r $input1 $input2
         echo "Skopiowano plik $input1 do $input2"
      ;;
      "Wyjdź")
         exit
   esac
done
