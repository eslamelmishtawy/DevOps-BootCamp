x=$(find . -name 'eslam*' -type f|wc -l)

x=$x+1

for ((i=$x; i < $(($x + 25)) ; i++))
do
touch "eslam"$i
done
