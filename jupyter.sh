#!/bin/bash

# Start Jupyter Lab in the background with specified base URL and no token for easy access
jupyter lab --allow-root --NotebookApp.token='' &
# Wait for Jupyter Lab to start
sleep 5

# Run the installation script
/home/tom/install.sh

# Keep the script running to prevent the container from exiting
tail -f /dev/null
