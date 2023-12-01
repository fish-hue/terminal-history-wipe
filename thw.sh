#!/bin/bash

read -p "Would you like to clear your terminal history? y/N?" choice

if [[ "$choice" =~ ^[Yy]$ ]]; then
  echo "Clearing terminal history..."
  history -c && history -w
elif [[ "$choice" =~ ^[Nn]$ ]]; then
  echo "Exiting..."
  exit
else
  echo "Invalid choice. Exiting..."
  exit 1
fi

# Print a success message
echo "Terminal history has been cleared successfully."

# Clear Sudo History
read -p "Would you like to clear the sudo history? y/N?" sudo_choice

if [[ "$sudo_choice" =~ ^[Yy]$ ]]; then
  echo "Clearing sudo history..."
  sudo su -c 'cat /dev/null > ~/.bash_history'  # Clear root's history file
  sudo bash -c 'history -c && history -w'       # Clear current user's sudo history
elif [[ "$sudo_choice" =~ ^[Nn]$ ]]; then
  echo "Skipping sudo history clearing..."
else
  echo "Invalid choice. Skipping sudo history clearing..."
fi

# Exit the current shell
exit
