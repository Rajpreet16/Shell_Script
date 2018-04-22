file=$1

if [ -e $file ]  #   -e returns true if file exist in current directory
then
	chmod g=x,u=x,o=x $file
fi

ls -l
