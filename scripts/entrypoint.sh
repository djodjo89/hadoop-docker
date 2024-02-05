#!/bin/sh
if [ -z "$(ls -A '/hadoop')" ]; then
	cp -r /hadoop-3.3.6/* /hadoop
fi
tail -f /dev/null
