echo "Enter Name"
read name
echo "Enter Roll Number"
read rn
echo "Enter marks"
sum=0
for((i=0;i<5;i++))
do
	read arr[$i]
	sum=$(($sum+${arr[$i]}))
done

percentage=$(($sum/5))

if [ $percentage -gt 70 ]
then
	echo "First Class with percentage=$percentage"
elif [ $percentage -lt 70 -a $percentage -gt 60]
then
	echo "Second Class percentage=$percentage"
fi


