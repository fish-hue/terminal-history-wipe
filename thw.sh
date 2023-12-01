#!/bin/bash

# Clear the history file
history -c

# Remove the history file
rm ~/.bash_history

# Create a new history file
touch ~/.bash_history

# Clear the current session history
history -r

# Print a success message
echo "Terminal history has been cleared successfully."
