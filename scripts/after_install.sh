#!/bin/bash
set -e

cd /var/www/nextjs-app
sudo chown -R ec2-user:ec2-user /var/www/nextjs-app

echo "AfterInstall complete."