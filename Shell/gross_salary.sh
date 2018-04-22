echo "Basic Salary = $1"
echo "DA percentage = $2"
echo "HRA percentage = $3"

bsal=$1
da=$2
hra=$3

da1=$(($(($bsal*$da))/100))
hra1=$(($(($bsal*$hra))/100))

gsal=$(($bsal+$da1+$hra1))

echo "Gross Salary = $gsal"
