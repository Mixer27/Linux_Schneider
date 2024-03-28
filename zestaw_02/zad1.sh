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

echo -n -e "Informacje:\nProcesor: " > info.txt 
uname -p>> info.txt
echo -n "Jądro: " >> info.txt
uname -s -r -v >> info.txt
echo "Aktualnie zalogowany użytkownik: $USER" >> info.txt
echo "Katalog domowy aktualnie zalogowanego użytkownika: $HOME" >> info.txt

$DIALOG --title "Wygenerowano info.txt" --clear "$@" \
        --msgbox "Informacje o procesorze, jądrze, aktualnie zalogowanym użytkowniku i jego katalogu domowym zostały zapisane do pliku info.txt." 10 41