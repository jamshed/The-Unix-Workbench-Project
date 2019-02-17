function count_files
{
	echo $(ls -l | egrep ^- | wc -l)
}


found=0

while [[ $found -eq 0 ]]
do
	fileCount=$(count_files)

	echo  -n "Guess the number of files in the current directory:"
	read userInp

	if [[ ! $userInp =~ ^[0-9]+$ ]]
	then
		echo "Please input a valid integer count."
	elif [[ $userInp -gt $fileCount ]]
	then
		echo "The guess is higher than the current file count."
	elif [[ $userInp -lt $fileCount ]]
	then
		echo "The guess is lower than the current file count."
	else
		echo "Congratulations! Your guess of $userInp matched the current file count in the directory."
		found=1
	fi
done
