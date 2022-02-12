shopt -s extglob 
stringPattern="[A-Za-z]"
integerPattern="[0-9]"
phonePattern="[\+*(0-9)]"
echo enter firstname
read firstname
while [[ $firstname =~ $integerPattern || ! $firstname =~ $stringPattern ]];
do
	echo enter firstname
	read firstname
done
echo enter secondname
read secondname
while [[ $secondname =~ $integerPattern || ! $secondname =~ $stringPattern ]];
do
	echo enter secondname
	read secondname
done
echo enter salary
read salary
while [[ ! $salary =~ $integerPattern ]];
do
	echo enter salary
	read salary
done

echo enter phone number
read number

while [[ ! -z $(grep ${number} "./db.txt") && $number =~ $phonePattern ]] ;
do
	echo enter phone number
	read number
done

echo "$firstname:$secondname:$salary:$number" >> db.txt
echo insertion done successfully
