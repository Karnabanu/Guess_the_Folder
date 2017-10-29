var=$(ls -l . | egrep -c '^-')
function getInputs(){
	echo "How many files are there"
	read n
}
while true
do
	getInputs
    if  ! [[ $n =~ ^[0-9]+$ ]]
    then
	echo "Only numbers are allowed"
    elif [[ n -eq var ]]
    then
	echo "Congratulations your guess is correct"
	exit 0
    elif [[ n -gt var ]]
    then
	echo "Guess is too high"
    else
	echo "Guess is too small"
    fi
done
