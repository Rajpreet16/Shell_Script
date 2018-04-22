echo "Enter 3 Numbers"
read a b c

if [ $a -lt $b -a $a -lt $c ]
then
	echo "$a is lowest"
else
	if [ $b -lt $c -a $b -lt $a ]
	then 
		echo "$b is lowest"
else
	echo "$c is lowest"
fi
fi

