#!bin/bash
select choice in apple banana kiwi quit
do
case $choice in
apple) 
	select color in red yellow green
	do
	case $color in	
	red) 
	echo you took a red apple
	break
	;;
	yellow)
	echo you took a yellow apple
	break
	;;
	green)
	echo you took a green apple
	break
	;;
	*) echo no apple with this color;;
	esac
	done 
	;;
banana) 
	select color in red yellow green
	do
	case $color in	
	yellow) 
	echo you took a yellow banana
	break
	;;
	green)
	echo you took a green banana
	break
	;;
	*) echo no banana with this color;;
	esac
	done 
	;;
kiwi) echo kiwi;;
quit) break;;
*) echo no option selected
esac
done
