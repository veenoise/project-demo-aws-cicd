#!/bin/bash
set -e

cd /var/www/nextjs-app
sudo chown -R ec2-user:ec2-user /var/www/nextjs-app

export PATH=/home/ec2-user/.nvm/versions/node/v22.20.0/bin:/home/ec2-user/.local/bin:/home/ec2-user/bin:/root/.local/bin:/root/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/snapd/snap/bin

npm install

echo "AfterInstall complete."