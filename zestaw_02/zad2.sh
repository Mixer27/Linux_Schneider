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

name="John"
surname="Doe"
CURRENT_CATALOG=`pwd`
RESULT=$CURRENT_CATALOG

returncode=0
while test $returncode != 1 && test $returncode != 250
do
exec 3>&1
value=$($DIALOG --ok-label "Zatwierdź" \
	  --backtitle "$backtitle" "$@" \
	  --form "Wypełnij formularz." \
20 50 0 \
	"IMIĘ:" 1 1	"$name" 1 10 20 0 \
	"NAZWISKO:" 2 1	"$surname"  2 10 20 0 \
	"E-MAIL:"	3 1	"$email"  3 10 30 0 \
	"LOGIN:" 4 1 "$login" 4 10 15 0 \
	"HASŁO:" 5 1 "$pass" 5 10 15 0 \
	"HOBBY:" 6 1 "$hobby" 6 10 40 0 \
2>&1 1>&3)
returncode=$?
exec 3>&-

case $returncode in
	$DIALOG_CANCEL)
		"$DIALOG" \
		--clear \
		--backtitle "$backtitle" \
		--yesno "Really quit?" 10 30
		case $? in
		$DIALOG_OK)
			break
			;;
		$DIALOG_CANCEL)
			returncode=99
			;;
		esac
		;;
	$DIALOG_OK)
		# "$DIALOG" \
		# --clear \
		# --backtitle "$backtitle" --no-collapse --cr-wrap \
		# --msgbox "Resulting data:\n\
		# $show" 10 40
		exec 3>&1
		RESULT=`$DIALOG --title "wybierz lokalizację pliku do zapisania danych" "$@" --fselect $CURRENT_CATALOG/ 14 48 2>&1 1>&3`
		returncode=$?
		exec 3>&-
		case $returncode in
		$DIALOG_OK)
			# returncode
			clear
			# echo "$RESULT"
			echo "$value" >> $RESULT 
			exit
			;;
		$DIALOG_CANCEL)
			clear
			exit
			;;
		esac
esac
done
# exec 3>&1
# RESULT=`$DIALOG --title "wybierz lokalizację pliku do zapisania danych" "$@" --fselect $HOME/ 14 48 2>&1 1>&3`
# # retval=$?
# exec 3>&-
# clear
# echo "$RESULT"
# echo "$value"
