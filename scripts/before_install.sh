#!/bin/bash
echo "Cleaning old files..."
sudo rm -rf /var/www/nextjs-app/*
sudo rm -rf /opt/codedeploy-agent/deployment-root/*
sudo rm -rf /opt/codedeploy-agent/deployment-root/.*