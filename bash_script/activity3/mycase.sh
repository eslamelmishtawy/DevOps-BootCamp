#!bin/bash
echo Please Enter A Character/Number
read x
case $x in 
[0-9])
	echo You enterd a number
	;;
[A-Z])
	echo You enterd Upper Case charachter
	;;
[a-z])
	echo You enterd Lower case character
	;;
*)
	echo Nothing related is enterd
esac 
