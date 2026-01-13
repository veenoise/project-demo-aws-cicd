#!/bin/bash
set -e

echo "Staring after_install script..."

APP_DIR="/var/www/nextjs-app"
USER_HOME="/home/ubuntu"
USER="ubuntu"

export HOME="$USER_HOME"
export CI=true
export NVM_DIR="$HOME/.nvm"
export TMPDIR="$HOME/tmp"

chown -R $USER:$USER "$APP_DIR"

mkdir -p "$TMPDIR"

source "$NVM_DIR/nvm.sh"
nvm use 24

cd "$APP_DIR"
pnpm install

echo "AfterInstall complete."