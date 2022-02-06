#!bin/bash
select choice in Egypt USA Germany
do
case $choice in
Egypt)
	echo They speak arabic
	;;
USA)
	echo They speak English
	;;
Germany)
	echo They speak Deutsch
	;;
*)
	echo No Idea
esac
done 
