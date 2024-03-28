#!/bin/bash

: ${DIALOG=dialog}

: ${DIALOG_OK=0}
: ${DIALOG_CANCEL=1}
: ${DIALOG_HELP=2}
: ${DIALOG_EXTRA=3}
: ${DIALOG_ITEM_HELP=4}
: ${DIALOG_ESC=255}

: ${SIG_NONE=0}
: ${SIG_HUP=1}
: ${SIG_INT=2}
: ${SIG_QUIT=3}
: ${SIG_KILL=9}
: ${SIG_TERM=15}

CURRENT_CATALOG=`pwd`

exec 3>&1
opt=$($DIALOG --default-item "OS/2" --clear --title "MENU BOX" "$@" \
        --menu "Choose the OS you like:" 20 51 9 \
        "Stwórz katalog"  "" \
        "Stwórz katalog ze ścieżki" "" \
        "Usuń katalog" "" \
        "Przenieś katalog" "" \
        "Skopiuj katalog"  "" \
        "Stwórz plik"  ""  \
        "Usuń plik"  ""  \
        "Przenieś plik"  ""  \
        "Skopiuj plik"  ""  \
        2>&1 1>&3)

retval=$?
exec 3>&-

if [ "$retval" -eq "$DIALOG_CANCEL" ]; then
    clear
    exit
fi

# case $retval in
#     $DIALOG_OK)
#         exec 3>&1
# 		location=`$DIALOG --title "wybierz lokalizację pliku do zapisania danych" "$@" --fselect $CURRENT_CATALOG/ 14 48 2>&1 1>&3`
#         retval=$?
#         exec 3>&-
#         case $retval in
#         $DIALOG_CANCEL)
#             clear
#             exit
#         ;;
#         esac
#     ;;
#     $DIALOG_CANCEL)
#         clear
#         exit
#     ;;
# esac

clear
echo $opt
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
         touch $input1
         echo "Utworzono plik $input1"
      ;;   
      "Usuń plik")
         read -p "Podaj nazwę pliku do usunięcia: " input1
         rm $input1
         echo "Usunięto plik $input1"
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