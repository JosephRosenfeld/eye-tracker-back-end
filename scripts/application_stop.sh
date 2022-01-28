#!/bin/bash
#Stopping existing node servers
echo "Stopping any existing node servers !"
pkill -9 node > app_stop.out.log 2> app_stop.err.log < /dev/null &