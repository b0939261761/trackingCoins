#!/bin/bash

# Set execute permission on your script
# chmod +x build_web.sh

docker run --rm --name web --volume "$(pwd)/trackingCoinsVue:/app" -it node:latest bash -c "cd /app && npm install --global npm@latest && npm install && npm run build"

