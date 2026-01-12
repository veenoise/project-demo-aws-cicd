#!/bin/bash
cd /var/www/nextjs-app
echo "Stopping Next.js app..."
pwd
ls -l

set -e 

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
nvm use 24

pm2 stop ecosystem.config.js