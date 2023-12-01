#!/bin/bash

echo "This script will remove all history from your terminal. Are you sure you want to proceed? (y/n)"
read confirm

if [ "$confirm" != "y" ] && [ "$confirm" != "Y" ]; then
  echo "Exiting script..."
  exit 1
fi

echo "Removing history..."
history -c
rm ~/.bash_history

echo "Deleting contents of ~/.bash_history..."
truncate -s 0 ~/.bash_history || true

echo "Clearing screen..."
clear
bash
