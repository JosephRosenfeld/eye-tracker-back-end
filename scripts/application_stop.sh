#!/bin/bash
#Stopping existing ngrok and node servers
sudo -i
echo "Stopping any existing servers (echo without stdout specified )" 
pkill -9 node 
pkill -9 ngrok 

