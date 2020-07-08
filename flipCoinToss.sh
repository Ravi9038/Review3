##!/bin/bash -x

headCount=0
tailCount=0

while [[ true ]]
do
	var=$(( (RANDOM%2)+1 ))

	if [[ $var -eq 1 ]] 
	then
		if [[ $headCount -eq 21 ]]
		then
			echo "Head is Win First"
			break
		fi
		
		((headCount++))

	else 
		if [[ $tailCount -eq 21 ]]
		then
			echo "tail is Win First "
			break
		fi
		
		((tailCount++))
	fi

done

echo "Head count win : =" $headCount
echo "Tail count win : =" $tailCount
