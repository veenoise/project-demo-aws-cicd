#!/bin/bash
cd /var/www/nextjs-app
echo "Starting Next.js app..."

export PATH=/home/ec2-user/.nvm/versions/node/v22.20.0/bin:/home/ec2-user/.local/bin:/home/ec2-user/bin:/root/.local/bin:/root/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/snapd/snap/bin

pm2 start pnpm --name "nextjs-app" -- start