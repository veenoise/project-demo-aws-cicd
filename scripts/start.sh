#!/bin/bash
set -e

echo "Staring install script..."

APP_DIR="/var/www/nextjs-app"
USER_HOME="/home/ubuntu"

export HOME="$USER_HOME"
export CI=true
export NVM_DIR="$HOME/.nvm"
export TMPDIR="$HOME/tmp"

mkdir -p "$TMPDIR"

source "$NVM_DIR/nvm.sh"
nvm use 24

cd "$APP_DIR"

pm2 reload ecosystem.config.js || pm2 start ecosystem.config.js 

echo "Install script complete."