#!/bin/bash
set -e

echo "Stopping existing container if running..."

if [ "$(sudo docker ps -q -f name=flask_app)" ]; then
    sudo docker stop flask_app
    sudo docker rm flask_app
    echo "Container stopped and removed."
else
    echo "No running container found."
fi
