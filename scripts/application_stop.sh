#!/bin/bash
#Stopping existing node servers

sudo -i
echo "Stopping any existing servers (echo without stdout specified)" 
  {
    echo "Stopping any existing node servers!"  
    sudo pkill -9 node 
    sudo pkill -9 ngrok  
  } > app_stop.out.log 2> app_stop.err.log}
