#!/bin/bash

if [ ! -f "output.log" ]; then
	echo "output.log file was not found!"
	exit 0
fi

echo "" > output.log

echo done!
