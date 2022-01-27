#!/bin/bash

#give permission for everything in the express-app directory
sudo chmod -R 777 /home/ec2-user/express-app

#navigate into our working directory where we have all our github files
cd /home/ec2-user/express-app

#add npm and node to path
export NVM_DIR="$HOME/.nvm"	
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # loads nvm	
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # loads nvm bash_completion (node is in path now)

#install node modules
npm install

#start our node app in the background
node index.js > app.out.log 2> app.err.log < /dev/null & 

#start ngrok in background
ngrok http 5000 > /dev/null &

#get log of ngrok urls
curl -s http://localhost:4040/api/tunnels | jq ".tunnels[1].public_url" > tunnels.log
curl -s http://localhost:4040/api/tunnels | jq ".tunnels[0].public_url" >> tunnels.log