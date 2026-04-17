#!/bin/bash

echo "Setting up the Git server environment..."

docker-compose  up -d

echo "Git server is up and running. You can access it at http://localhost:3000"

if [ $? -eq 0 ]; then 
   echo "Setup completed successfully."
   echo "You can now access the SSH service on port 22"
else
   echo "There was an error during setup. Please check the logs for more details."
   exit 1
fi