#!/bin/bash

# Function to display the current time
show_time() {
	clear
	 echo -e "\e[1;32m _   _  ______  __     __ \e[0m"
    echo -e "\e[1;32m| | | ||  ____| \ \   / / \e[0m"
    echo -e "\e[1;32m| |_| || |__     \ \_/ /  \e[0m"
    echo -e "\e[1;32m|  _  ||  __|     \   /   \e[0m"
    echo -e "\e[1;32m| | | || |____     | |    \e[0m"
    echo -e "\e[1;32m|_| |_||______|    |_|    \e[0m"
    echo -e "\e[1;35m         Digital Clock     \e[0m"
    echo "=================================="
	  
	

	#Get current time and date
	current_time=$(date '+%H : %M : %S' | figlet)
	current_date=$(date '+%A, %B %d, %y') #Display full date

	#determine greeting based on hour
	hour=$(date '+%H')
	if [ "$hour" -ge 5 ] && [ "$hour" -lt 12 ]; then
	    greeting="Good Morning Prachi!"
	
	elif [ "$hour" -ge 12 ] && [ "$hour" -lt 17 ]; then
	    greeting="Good Afternoon Prachi!"
	elif [ "$hour" -ge 17 ] && [ "$hour" -lt 21 ]; then
	    greeting="Good Evening Prachi!"

	else 
	    greeting="Good Night Prachi!"
	fi
 # Display greeting, time, and date with colors
    echo -e "\e[1;36m$greeting\e[0m"
    echo -e "\e[1;33m$current_time\e[0m"
    echo -e "\e[1;34m$current_date\e[0m"

}

# Function to handle key press
key_pressed() {
    read -t 1 -n 1 key
    if [[ $key = q ]]; then
        echo -e "\nExiting digital clock. Goodbye Prachi!"
        exit 0
    fi
}

# Loop to update the time every second
while true; do
    show_time
    key_pressed
    sleep 1
done


