#!/bin/bash

# Prompt user to confirm deletion of all terminal history
echo "This script will remove ALL history from your terminal across all sessions."
echo "Are you sure you want to proceed? (y/n)"
read -r confirm

# Check user input and proceed accordingly
if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
  echo "Exiting script..."
  exit 1
fi

# Clear history for the current session
history -c

# Remove history files for bash, zsh, etc. (force remove any existing history files)
rm -f ~/.bash_history ~/.zsh_history ~/.history

# Create empty history files to replace removed ones
touch ~/.bash_history ~/.zsh_history ~/.history

# Unset history-related variables and configure the environment to prevent saving
unset HISTFILE
export HISTSIZE=0
export HISTFILESIZE=0

# Optionally clear the terminal screen
clear

echo "All terminal history has been removed."

# Automatically exit the script to finalize the operation
exit 0
