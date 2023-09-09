#read -p "Enter the file name : " fileName
fileName=file.txt
echo "Converting from lower case to uppercase "

tr '[ a-z ]' '[ A-Z ]' <$fileName
echo "Converting from Uppercase to lowercase  "

tr '[ A-Z ]' '[ a-z ]' <$fileName
echo "The number of line is : " $(wc --lines< $fileName)

echo "The number of words is :" $(wc --words < $fileName)

echo "The number of character is :" $(wc --char <$fileName)

for i in $(cat $fileName)
do
	echo $i >>"Temp"
done

echo "The file sorted in desending order"

echo "$(sort "Temp")"
rm Temp
