prime()
{
	num=$1
	i=2

	while [ $i -lt $num ]
	do
	  if [ $(($num%$i)) -eq 0 ]
	  then
	  	echo "$num is not a prime number"
	  	exit
	  fi
	  i=$(($i+1))
	done
}

echo -n "Enter a number: "	
read num1
prime num1
