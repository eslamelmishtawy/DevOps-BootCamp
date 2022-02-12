#!bin/bash
echo please enter user id
read id
x=$(awk -F: -v id=$id '$1==id {print $2}' ~/DevOps-BootCamp/bash_script/activity4/users.txt)
while [ -z $x ]
do
	echo $x
	echo Please enter a valid id
	read id
	x=$(awk -F: -v id=$id '$1==id {print $2}' ~/DevOps-BootCamp/bash_script/activity4/users.txt)
done
echo please enter old password
read password
x=$(awk -F: -v p=$password '$4==p {print $2}' ~/DevOps-BootCamp/bash_script/activity4/users.txt)
while [ -z $x ]
do
	echo $x
	echo re-enter old password
	read password
	x=$(awk -F: -v p=$password '$4==p {print $2}' ~/DevOps-BootCamp/bash_script/activity4/users.txt)
done
echo please enter new password
read newpassword
sed -i "0,/$password/ s/$password/$newpassword/" ~/DevOps-BootCamp/bash_script/activity4/users.txt
