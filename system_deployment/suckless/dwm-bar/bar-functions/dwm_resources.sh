#!/bin/sh

# A dwm_bar function to display information regarding system memory, CPU usage, and storage
# Joe Standring <git@joestandring.com>
# GNU GPLv3

df_check_location='/'

dwm_resources () {
	# Get all the infos first to avoid high resources usage
	free_output=$(free -h | grep Mem)
	df_output=$(df -h $df_check_location | tail -n 1)

	# Used and total memory
	MEMUSED=$(echo $free_output | awk '{print $3}')
	MEMTOT=$(echo $free_output | awk '{print $2}')

	# CPU usage
	CPU=$(top -bn1 | grep Cpu | awk '{print $2}')%

	# Used and total storage in system (rounded to 1024B)
	STOUSED=$(echo $df_output | awk '{print $3}')
	STOTOT=$(echo $df_output | awk '{print $2}')
	STOPER=$(echo $df_output | awk '{print $5}')

	printf "%s  %s  %s" "$MEMUSED" "$CPU" "$STOPER"
}

dwm_resources

