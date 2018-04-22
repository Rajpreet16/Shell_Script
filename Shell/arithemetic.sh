ch=1

while [ $ch -eq 1 ]
do
	echo "***** MENU *****"
	echo "1. +"
	echo "2. -"
	echo "3. *"
	echo "4. /"
	echo "5. Exit"

	echo -n "Enter your choice: "
	read choice

	case $choice in
			
	1)
		echo -n "Enter A:"
		read a
		echo -n "Enter B:"
		read b
		c=$(($a+$b))
		echo "Result is "
		echo "$a + $b = $c"
		;;
	
	2)
		echo -n "Enter A:"
		read a
		echo -n "Enter B:"
		read b
		echo "Result is "
		echo "$a - $b = $(($a-$b))"
		;;
	3)
		echo -n "Enter A:"
		read a
		echo -n "Enter B:"
		read b
		echo "Result is "
		echo "$a / $b = $(($a/$b))"
		;;
	4)
		echo -n "Enter A:"
		read a
		echo -n "Enter B:"
		read b
		echo "Result is "
		echo "$a * $b = $(($a*$b))"
		;;

	5)	
		ch=0
		;;
	
		
	esac

done
