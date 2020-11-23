# select pin
GPIO=4

# prepare the pin
if [ ! -d /sys/class/gpio/gpio${GPIO} ]; then
	  echo "${GPIO}" > /sys/class/gpio/export
fi
echo "out" > /sys/class/gpio/gpio"${GPIO}"/direction

# continuously monitor current value
while true; do
	echo 0 > /sys/class/gpio/gpio"${GPIO}"/value
	echo 1 > /sys/class/gpio/gpio"${GPIO}"/value	
	sleep 0.2
done
