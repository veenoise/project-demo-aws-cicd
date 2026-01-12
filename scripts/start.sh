#!/bin/bash
cd /var/www/nextjs-app
echo "Starting Next.js app..."

set -e 

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
nvm use 24

pm2 reload ecosystem.config.js || pm2 start ecosystem.config.js