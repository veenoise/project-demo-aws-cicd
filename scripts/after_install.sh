#!/bin/bash
set -e

APP_DIR="/var/www/nextjs-app"
sudo chown -R ubuntu:ubuntu $APP_DIR

export CI=true
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

nvm use 24
pnpm install

echo "AfterInstall complete."