#!/bin/bash

param=$1

function display_hd(){
   echo "Przestrzeń dyskowa"
   df
}

function display_ram(){
   echo "RAM" 
   free
}

function display_cpu(){
   echo "Procesor"
   lscpu
}

case $param in
   "-hd") 
      display_hd
   ;;
   "-ram")
      display_ram
   ;;
   "-cpu") 
      display_cpu
   ;;
   "-all")
      display_hd
      echo "----------------------------------------------------------------------------"
      display_ram  
      echo "----------------------------------------------------------------------------"
      display_cpu
   ;;
   *) echo "nieznane polecenie: $param"
esac   
