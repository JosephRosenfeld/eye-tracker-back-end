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

#before starting node app, we need to pull our tags in as env vars
######
# Author: Marcello de Sales (marcello.desales@gmail.com)
# Description: Create Create Environment Variables in EC2 Hosts from EC2 Host Tags
# 
### Requirements:  
# * Install jq library (sudo apt-get install -y jq)
# * Install the EC2 Instance Metadata Query Tool (http://aws.amazon.com/code/1825)
#
### Installation:
# * Add the Policy EC2:DescribeTags to a User
# * aws configure
# * Souce it to the user's ~/.profile that has permissions
#### 
# REboot and verify the result of $(env).

# Loads the Tags from the current instance
getInstanceTags () {
  # http://aws.amazon.com/code/1825 EC2 Instance Metadata Query Tool
  INSTANCE_ID=$(./ec2-metadata | grep instance-id | awk '{print $2}')

  # Describe the tags of this instance
  aws ec2 describe-tags --region sa-east-1 --filters "Name=resource-id,Values=$INSTANCE_ID"
}

# Convert the tags to environment variables.
# Based on https://github.com/berpj/ec2-tags-env/pull/1
tags_to_env () {
    tags=$1

    for key in $(echo $tags | /usr/bin/jq -r ".[][].Key"); do
        value=$(echo $tags | /usr/bin/jq -r ".[][] | select(.Key==\"$key\") | .Value")
        key=$(echo $key | /usr/bin/tr '-' '_' | /usr/bin/tr '[:lower:]' '[:upper:]')
        echo "Exporting $key=$value"
        export $key="$value"
    done
}

# Execute the commands
instanceTags=$(getInstanceTags)
echo instanceTags
tags_to_env "$instanceTags"

#start our node app in the background
node index.js > app.out.log 2> app.err.log < /dev/null & 

#start ngrok in background (Its important to redirect outputs or else AWS will give you
#a silent hang)
ngrok http 5000 --log=stdout > ngrok.log 2> ngro.err.log &