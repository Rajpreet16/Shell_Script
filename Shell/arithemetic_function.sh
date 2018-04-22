add()
{
	a=$1
	b=$2
	c=$(($a+$b))
	echo "Addition is $c"
}

sub()
{
	a=$1
	b=$2
	c=$(($a-$b))
	echo "Subtraction is $c"
}

div()
{
	a=$1
	b=$2
	c=$(($a/$b))
	echo "Division is $c"
}

mul()
{
	a=$1
	b=$2
	c=$(($a*$b))
	echo "Multiplication is $c"
}

echo "Enter two numbers"
read d
read e

add d e
sub d e
mul d e
div d e
