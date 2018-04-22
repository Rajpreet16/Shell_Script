echo "Enter Number of Element"
read n
for((i=0;i<$n;i++))
do
	read arr[$i]
done

for((c=0;c<$(($n-1));c++))
do
	position=$c
	for((d=$(($c+1));d<$n;d++))
	do
		if [ ${arr[$position]} -gt ${arr[$d]} ]
		then
			position=$d
		fi
	done
	if [ $position -ne $c ]
	then
		swap=${arr[$c]}
		arr[$c]=${arr[$position]}
		arr[$position]=$swap
	fi
done

for((i=0;i<$n;i++))
do
	echo ${arr[$i]}
done
