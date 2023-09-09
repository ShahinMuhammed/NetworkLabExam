read -p "Enter the number :" num
temp=$num
armstrong=0
while [ $temp -gt 0 ]
do
	digit=$(($temp %10))
	value=$(($digit **3))
	armstrong=$(($armstrong+$value))
	temp=$(($temp/10))
done
if [ $armstrong -eq $num ]
then
	echo "The number $num is a armstrong number"
else
	echo "The number $num is not a armstrong number"
fi