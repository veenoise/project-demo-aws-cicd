#!/bin/bash
APP_DIR="/var/www/nextjs-app"
echo "Starting Next.js app..."

set -e 

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
nvm use 24

pm2 reload $APP_DIR/ecosystem.config.js || pm2 start $APP_DIR/ecosystem.config.js