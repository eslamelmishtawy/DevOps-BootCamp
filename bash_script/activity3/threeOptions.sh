#!/bin/bash
case "$1" in
-i) cat $3 | grep $2;; 
-c) cat $3 | grep $2 | wc -w ;; 
-d) sed -n -e "/$2/d" -e '1,$p' $3   ;; 
*) echo "Option $1 not recognized" ;; 
esac
