function guess {
	if [[ $numguess -eq $numfiles ]]
	then 
	  echo "Congratulations!"
	  local result=1
	elif [[ $numguess -lt $numfiles ]]
	then 
	  echo "The number is higher"
	  local result=0
	elif [[ $numguess -gt $numfiles ]]
	then 
	  echo "The number is lower"
	  local result=0
	fi
	correctnum=$result
}

numfiles=$(ls -1 /$PWD | wc -l)
correctnum=0
while [[ $correctnum -ne 1 ]]
do
	read -p "Enter a guess of the number of files in the current directory: " numguess
	guess
	correctnum=$correctnum
done

