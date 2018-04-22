echo "Enter Number of Element"
read n
for((i=0;i<$n;i++))
do
	read arr[$i]
done

echo "Enter number to be searched"
read num

first=0
last=$(($n-1))

middle=$(($(($first+$last))/2))

while [ $first -le $last ]
do
	if [ ${arr[$middle]} -lt $num ]
	then
		first=$(($middle+1))
	elif [ ${arr[$middle]} -eq $num ]
	then
		echo "Found at $middle"
		break
	else
		last=$(($middle-1))
	fi
middle=$(($(($first+$last))/2))
done

if [ $first -gt $last ]
then
	echo "Absent"
fi 
