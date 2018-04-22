
echo -n "File Name:"
read a 
if [ -x "$a" ]
then
    echo "File '$a' is executable"
else
    echo "File '$a' is not executable or found"
fi
