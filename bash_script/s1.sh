x=5
touch s2.sh
echo "echo This is script 2 nad the value of x is :\$1" > s2.sh
. ./s2.sh $x

