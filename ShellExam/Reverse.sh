read -p "Enter the number: " num
temp=$num
length=${#num}
reversed=""
while [ $length -gt 0 ]
do
    digit=$(expr $num % 10)
    reversed="$reversed$digit"
    num=$(expr $num / 10)
    length=$((length - 1))
done
echo "Reversed of $temp is $reversed"
