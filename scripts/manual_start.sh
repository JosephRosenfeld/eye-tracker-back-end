#!/bin/bash

#start our node app in the background
node index.js > app.out.log 2> app.err.log < /dev/null & 

#start ngrok
ngrok -log=stdout 5000 > /dev/null &
