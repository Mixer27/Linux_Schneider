#!/usr/bin/bash

# zadania 1.1 oraz zadanie 2 wykonałem na zajęciach 

awk '
BEGIN {
   FS=","
   score_m = 0
   count_m = 0
   score_f = 0
   count_f = 0
   print "Zad1.2"
}
{gsub(/\"/, "", $0)}
#{print $0}
/^male/ {
   ++count_m
   score_m += $7
   }
/female/ {
   ++count_f 
   score_f += $7
   }
END {
avg_m = score_m/count_m
avg_f = score_f/count_f
#print "koniec:", score_m, count_m, score_f, count_f
print "Średnie oceny z czytania:"
print "Chłopcy:", avg_m
print "Dziewczęta:", avg_f}
' StudentsPerformance.csv

awk '
BEGIN {
   FS = ","
   gr_a_min = 101
   gr_b_min = 101
   gr_c_min = 101
   gr_d_min = 101
   gr_e_min = 101
   gr_a_max = 0
   gr_b_max = 0
   gr_c_max = 0
   gr_d_max = 0
   gr_e_max = 0
   print "Zad1.3"
}
{gsub(/\"/, "", $0)}
/female/ {
   score = $7 + $8
#   print $1, $2, $7, $8, score
   if ($2 == "group A") {
      if (score < gr_a_min) {
         gr_a_min = score
      }
      if (score > gr_a_max) {
         gr_a_max = score
      }
   } 
   else if ($2 == "group B") {
      if (score < gr_b_min) {
         gr_b_min = score
      }
      if (score > gr_b_max) {
         gr_b_max = score
      }
   } 
   else if ($2 == "group C") {
      if (score < gr_c_min) {
         gr_c_min = score
      }
      if (score > gr_c_max) {
         gr_c_max = score
      }
   } 
   else if ($2 == "group D") {
      if (score < gr_d_min) {
         gr_d_min = score
      }
      if (score > gr_d_max) {
         gr_d_max = score
      }
   } 
   else if ($2 == "group E") {
      if (score < gr_e_min) {
         gr_e_min = score
      }
      if (score > gr_e_max) {
         gr_e_max = score
      }
   } 
}
END {
print "Dziewczęta: "
print "GRUPA\t MIN \t MAX"
print "Gr A\t", gr_a_min, "\t", gr_a_max
print "Gr B\t", gr_b_min, "\t", gr_b_max
print "Gr C\t", gr_c_min, "\t", gr_c_max
print "Gr D\t", gr_d_min, "\t", gr_d_max
print "Gr E\t", gr_e_min, "\t", gr_e_max
}
' StudentsPerformance.csv

awk '
BEGIN {
   FS = ","
   gr_a_min = 101
   gr_b_min = 101
   gr_c_min = 101
   gr_d_min = 101
   gr_e_min = 101
   gr_a_max = 0
   gr_b_max = 0
   gr_c_max = 0
   gr_d_max = 0
   gr_e_max = 0
}
{gsub(/\"/, "", $0)}
/male/ { 
   score = $7 + $8
#   print $1, $2, $7, $8, score
   if ($2 == "group A") {
      if (score < gr_a_min) {
         gr_a_min = score
      }
      if (score > gr_a_max) {
         gr_a_max = score
      }
   } 
   else if ($2 == "group B") {
      if (score < gr_b_min) {
         gr_b_min = score
      }
      if (score > gr_b_max) {
         gr_b_max = score
      }
   } 
   else if ($2 == "group C") {
      if (score < gr_c_min) {
         gr_c_min = score
      }
      if (score > gr_c_max) {
         gr_c_max = score
      }
   } 
   else if ($2 == "group D") {
      if (score < gr_d_min) {
         gr_d_min = score
      }
      if (score > gr_d_max) {
         gr_d_max = score
      }
   } 
   else if ($2 == "group E") {
      if (score < gr_e_min) {
         gr_e_min = score
      }
      if (score > gr_e_max) {
         gr_e_max = score
      }
   } 
}
#{print $0}
END {
print "Chłopcy: "
print "GRUPA\t MIN \t MAX"
print "Gr A\t", gr_a_min, "\t", gr_a_max
print "Gr B\t", gr_b_min, "\t", gr_b_max
print "Gr C\t", gr_c_min, "\t", gr_c_max
print "Gr D\t", gr_d_min, "\t", gr_d_max
print "Gr E\t", gr_e_min, "\t", gr_e_max
}
' StudentsPerformance.csv

awk '
BEGIN {
   FS = ","
   print "Zad1.4"
   count = 0
}
{gsub(/\"/, "", $0)}
/^male/ {
   if ( $6 == 100 || $7 == 100 || $8 == 100 ) {
      ++ count
   }
}
END {
print "Liczba chłopców która uzyskała wynik 100 z matematyki, czytania lub pisania:", count
}
' StudentsPerformance.csv
