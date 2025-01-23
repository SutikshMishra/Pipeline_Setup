#!/bin/bash

# Remove .env file from the deployment stage directory
sudo rm /home/ubuntu/deploy_stage/.env

# Copy all files and directories from the deployment stage to the backend directory
sudo cp -R /home/ubuntu/deploy_stage/* /home/ubuntu/statusi/backend/

# Clean up the deployment stage directory
sudo rm -rf /home/ubuntu/deploy_stage/*
