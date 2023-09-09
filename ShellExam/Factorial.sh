read -p "Enter the number : " num
factor=1
for((i=1;i<=num;i++))
do
	factor=$(($factor*$i))
done
echo "Factorial of $num is $factor"