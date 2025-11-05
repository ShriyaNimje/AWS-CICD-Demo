#!/bin/bash
set -e

echo "Starting the new Flask container..."

cd /home/ubuntu/app

# Pull the latest image from Docker Hub
sudo docker pull shriya01/simple-python-flask-app:latest

# Stop any existing container with same name
if [ "$(sudo docker ps -q -f name=flask_app)" ]; then
    echo "Stopping existing container..."
    sudo docker stop flask_app
    sudo docker rm flask_app
fi

# Start new container
sudo docker run -d --name flask_app -p 5000:5000 shriya01/simple-python-flask-app:latest

echo "Container started successfully!"
