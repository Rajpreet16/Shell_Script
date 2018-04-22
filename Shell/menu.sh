ch=0
while [ $ch -ne 1 ]
do
    echo "***** MENU *****"
    echo "1. Check Even Odd"
    echo "2. Check Palindrome"
    echo "3. Check Armstrong"
    echo "4. Exit"
    echo -n "Enter your choice: "
    read choice

    case $choice in
    1)
   	 #Even Odd
   	 echo -n "Enter the Number to check Even/Odd: "
   	 read num
   	 if [ $(($num%2)) -eq 0 ]
   	 then
   		 echo "Even Number"
   	 else
   		 echo "Odd Number"
   	 fi
   	 ;;
    2)
   	 #Palindrome
   	 echo -n "Enter the Number to check Palindrome: "
   	 read num
   	 number=$num
   	 reverse=0
   	 while [ $num -gt 0 ]
   	 do
   		 a=$(( $num % 10 ))
   		 num=$(( $num / 10 ))
   		 reverse=$(($(($reverse*10))+$a))
   	 done
   	 echo "Reverse is $reverse"
   	 if [ $number -eq $reverse ]
   	 then
   		 echo "Number is palindrome"
   	 else
   		 echo "Number is not palindrome"
   	 fi
   	 ;;
    3)
   	 #Armstrong Number
   	 echo -n "Enter a number: "
   	 read num
   	 arm=0
         temp=$num
	 rem=0
	 sum=0
	 while [ $num -gt 0 ]
	 do
	 	rem=$((num%10))
		echo "$rem"
		arm=$(($num^3 | bc))
	   	 echo "$arm"
		sum=$(($sum+$arm))
		num=$(($num/10))
	 done

	 if [ $sum -eq $temp ]
	 then
		echo "ARMSTRONG"
	 else	
		echo "False"
	 fi
   	 ;;
    4)

   	 echo "Thank You!"
	 ch=1
   	 exit
   	 ;;
    *)
   	 echo "Wrong Input"    
    esac
done

