#!/usr/bin/env bash

echo "[Welcome to Guessing game]"

function ask {
	echo "Please enter the number of files in the current directory:"
	read guess
    files=$(ls -1 | wc -l)
}

ask

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "Too low."
	else
		echo "Too high."
	fi
	ask
done

echo "Congratulation! That is the correct answer, here is the full list of the files:"
echo "---" && ls -1