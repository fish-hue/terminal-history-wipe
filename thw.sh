#!/bin/bash

# Clear the history file completely
cat /dev/null > ~/.bash_history

# Clear the history entries in memory
history -c

# Print a success message
echo "Terminal history has been cleared successfully."

# Exit the current shell
exit
