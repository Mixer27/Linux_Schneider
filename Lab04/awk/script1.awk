#!/usr/bin/awk -f 

# składnia awk
# [wzorzec] <program>

# $0 - cały wzorzec
# $1 - pierwsza grupa
# $2 - druga grupa
# $... - i tak dalej

# przykład 1 (wyoisanei wszytkich imion konczocych sie na asia

/asia/ { print $0 } 

# przykład 2 (wszystkie osoby, które mają na imię Zosia)
/^Zosia/ { print "Witaj " $0 }
/^Zosia/ { print "Witaj " $1 }
