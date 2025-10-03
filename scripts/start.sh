#!/bin/bash
cd /var/www/nextjs-app
echo "Starting Next.js app..."
pm2 start npm --name "nextjs-app" -- start