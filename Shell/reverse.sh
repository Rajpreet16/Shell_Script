echo "Enter Number To be Reversed\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
read num

n=$num
p=0
reverse=0
while [ $n -gt 0 ]
do	
	p=$(($n%10));
	echo "$p";
	reverse=$(($(($reverse*10))+$p));
	n=$(($n/10));
done

echo "Original Number $num";
echo "Reversed Number $reverse";

