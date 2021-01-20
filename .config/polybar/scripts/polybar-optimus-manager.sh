#!/bin/sh

gpu_mode=$(optimus-manager --print-mode | grep -i "Current GPU mode : " | sed 's/Current GPU mode : //')

if [ "$gpu_mode" == "nvidia" ]; then 
	echo "gtx"
elif [ "$gpu_mode" == "hybrid" ]; then
	echo "heebreed"
elif [ "$gpu_mode" == "intel" ]; then
	echo "eentel"
else
	echo "error"
fi

