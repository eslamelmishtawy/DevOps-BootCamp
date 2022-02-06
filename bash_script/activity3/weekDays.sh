#!bin/bash
day=$(date +"%u")
case $day in
1) echo Monday;;
2) echo Tuesday;;
3) echo Wednesday;;
4) echo Thursday;;
5|6) echo Happy weedend day;;
7) echo sunday;;
*) echo not a day
esac
