#!/bin/bash
#Stopping existing node servers
echo "Stopping any existing servers (echo without stout specified)"  
{
echo "Stopping any existing node servers!"  
pkill -9 node 
pkill -9 ngrok  
} > app_stop_.out.log 2> app_stop.err.log