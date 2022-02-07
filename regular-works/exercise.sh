#!/bin/bash

read -p "Enter your name: " name
read -p "Enter your age: " age
read -p "Enter average life expectancy(ale): " ale

if [[ $age -lt 18 ]]
then
	echo "$name is a student"
	let "X=18-$age"
	echo "At least $X years to become a worker."

elif [[ $age -ge 18 ]] && [[ $age -le 65 ]]
then
	echo "$name is a worker"
	let "X=65-$age"
	echo "$X years to retire."
else
	if [[ $age -lt $ale ]]
	then
		let "X=$ale-$age"
		echo "$name is retired"
		echo "$X years to die."
	else
		echo -ne '\007'
		echo "!!! Already died !!!"
		echo -ne '\007'
		echo "!!! Already died !!!"
		echo -ne '\007'
		echo "!!! Already died !!!"
	fi
fi
