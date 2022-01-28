#!/bin/bash
#Stopping existing ngrok and node servers
#Have to make it conditional so the exit code doesn't crash the code deploy
echo "Stopping any existing servers" 
if pgrep node; then pkill -9 node; fi
if pgrep ngrok; then pkill -9 ngrok; fi

