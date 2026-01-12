#!/bin/bash
set -e

cd /var/www/nextjs-app
sudo chown -R ubuntu:ubuntu /var/www/nextjs-app

export CI=true
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

nvm use 24
pnpm install

echo "AfterInstall complete."