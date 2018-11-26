#! /bin/bash
# cars.sh
# Dan Haub

clear
keep_going=true

while $keep_going
do
	echo "My Old Cars Inventory System"
	echo "----------------------------"
	echo "1. Enter a Car"
	echo "2. List the Cars"
	echo "Q. Quit"

	read usr

	case "$usr" in
		1)
			clear
			echo "What is the Model Year?"
			read year
			echo "What is the Make?"
			read make
			echo "What is the Model?"
			read model
			car=$year":"$make":"$model
			echo $car >> My_Old_Cars
			sort -o My_Old_Cars My_Old_Cars
			clear
			;;
		2)
			clear
			cat My_Old_Cars
			echo
			echo		
			;;
		Q)
			keep_going=false
			clear
			;;
	esac
done
