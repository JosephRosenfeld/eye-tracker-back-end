#!/bin/bash

#get log of ngrok urls
sudo curl -s http://localhost:4040/api/tunnels | sudo jq ".tunnels[1].public_url" > tunnels.log
sudo curl -s http://localhost:4040/api/tunnels | sudo jq ".tunnels[0].public_url" >> tunnels.log