#!/usr/bin/env bash
sudo apt update
sudo apt install nodejs 
sudo apt install npm
# Install pm2 which is a production process manager for Node.js with a built-in load balancer.
sudo npm install -g pm2
# Stop any instance of our application running currently
pm2 stop SimpleApplication
# Change directory into folder where application is downloaded
cd SimpleApplication
# Install application dependencies
npm install
echo $PRIVATE_KEY > privatekey.pem
echo $SERVER > server.crt
# Start the application with the process name ExampleApplication
pm2 start ./bin/www --name SimpleApplication