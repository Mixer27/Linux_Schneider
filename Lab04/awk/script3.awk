#!/usr/bin/awk -f

BEGIN { FS = "," }

# wyświetlenie wszystkich linii
#{ print $0 }

# wyświetlanie pierszej kolumny
#{ print $1 }

# wyświetlenie pierwszej i trzeciej kolumny
#{ print $1 "\t" $3 }

# wyświetlanie kolumn w róznej kolejności
#{ print $3 "\t" $1 }

# wyświetlanie linii które spełniają określony wzorzec
#/female/ { print $0 }
#/some hi+/ { print $0 }

# liczenie wierszy spełniających określony wzorzec
#/female/ { ++ ile }
#END { print "ilość wierszy =", ile }

# wyświetlanie linii o określonej ilości znaków
length($0) < 68
