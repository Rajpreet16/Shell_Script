
echo "Enter Number of Elements"
read n

for((i=1;i<=n;i++))
do
	read arr[$i]
done

echo enter the element you want to search
read a
for((i=1;i<=n;i++))
do
	if [ ${arr[$i]} -eq $a ]
	then
	k=1
	break
	fi
done

if [ $k -eq 1 ]
then
	echo element found at position $i
else
	echo element not found
fi
