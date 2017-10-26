echo "How many files are there"
var=$(ls -l . | egrep -c '^-')
while true
do
    read n
    if  ! [[ $n =~ ^[0-9]+$ ]]
    then
	echo "Only numbers are allowed"
	echo  "How many files are there"
    elif [[ n -eq var ]]
    then
	echo "Congratulations your guess is correct"
	exit
    elif [[ n -gt var ]]
    then
	 echo "Guess is too high"
    else
	echo "Guess is too small"
    fi
done
