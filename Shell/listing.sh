file=$1
directory=$2

if [ -e $file ]  #   -e returns true if file exist in current directory
then
	mv -v ~/$file ~/$directory
fi

ls -R
ls -l
