#!/bin/bash
set -e

# Define destination
APP_DIR=/var/www/nextjs-app

echo "Copying files to application directory..."
cp -r /opt/codedeploy-agent/deployment-root/*/deployment-archive/* $APP_DIR

echo "Setting permissions..."
chown -R ec2-user:ec2-user $APP_DIR
chmod -R 755 $APP_DIR

echo "AfterInstall complete."