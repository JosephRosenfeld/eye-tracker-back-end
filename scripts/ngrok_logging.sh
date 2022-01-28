#!/bin/bash

#get log of ngrok urls
curl -s http://localhost:4040/api/tunnels | jq ".tunnels[1].public_url" > tunnels.log
curl -s http://localhost:4040/api/tunnels | jq ".tunnels[0].public_url" >> tunnels.log