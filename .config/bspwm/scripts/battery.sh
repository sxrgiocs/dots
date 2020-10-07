
#!/bin/sh

export PATH="/home/sergio/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"
export DISPLAY=":0"
export XAUTHORITY="/home/sergio/.Xauthority"
export XDG_RUNTIME_DIR="/run/user/1000"
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

if [ "$(acpi | wc -l)" = "1" ];
then
	battery_level=$(acpi -b | grep -P -o '[0-9]+(?=%)')
	if [ $battery_level -le 5 ]
	then
		poweroff
	elif [ $battery_level -le 10 ]
	then
    		notify-send -u critical -t 5000 "Battery low" "Battery level is ${battery_level}%!"		
    		#dunstify -t 5000 -r 221 "Battery low" "Battery level is ${battery_level}%!"
	elif [ $battery_level -ge 100 ]
	then
		notify-send -u normal -t 10000 "Battery Full" "Disconnect the power"		
		#dunstify -u critical -t 10000 -r 221 "Battery Full" "Disconnect the power"
	fi
else
	battery_level=$(acpi -b | awk NR==2 | grep -P -o '[0-9]+(?=%)')
	if [ $battery_level -le 5 ]
	then
		poweroff	
	elif [ $battery_level -le 10 ]
	then
    		notify-send -u critical -t 10000 "Battery low" "Battery level is ${battery_level}%!"
    		#dunstify -u critical -t 10000 -r 221 "Battery low" "Battery level is ${battery_level}%!"
	elif [ $battery_level -ge 100 ]
	then
		notify-send -u normal -t 5000 "Battery Full" "Disconnect the power"		
		#dunstify -t 5000 -r 221 "Battery Full" "Disconnect the power"
	fi
fi
