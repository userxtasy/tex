#!/bin/bash



SERVER="usr@ip_distant_server"
DIRECTORY_SERVER="directory"
LOCAL_DIRECTORY="local_directory"
SSH_KEY="$HOME/.ssh/youor_key"
PORT=portthatyouuseforSSH


echo "TEX is trying to get your files ..."

scp -r -i "$SSH_KEY" -P "$PORT" "$SERVER:$DIRECTORY_SERVER" "$LOCAL_DIRECTORY"

if [ $? -eq 0 ]; then
        echo " Operation completed!!"
else
        echo " A problem occured..."
fi
