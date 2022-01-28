#!/bin/bash
#Stopping existing node servers

sudo -i
echo "Stopping any existing servers (echo without stdout specified )" 
pkill -9 node 
