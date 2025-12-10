#!/bin/bash 

echo "what is it you need ?"
echo " 1 : get files" 
echo " 2 : send files"

# creds 
SERVER="user@ipaddress"
SSH_KEY="$HOME/.ssh/sshkey"
PORT=22

#the thing 

read -n 1 -p "Select a number ? :" action
tex(){
        if [ "$action" == "1" ]; then
                echo "TEX is trying to get your files ..."
                echo "Connecting to distant server"
                echo "What is the path of the file you want to download? "
                read -r -p " Path : " DISTANT_DIRECTORY
                read -r -p " At local directory : " LOCAL_DIRECTORY
                printf "\n\n"
                if ["e" == "1"] ; then
                        scp -r -i "$SSH_KEY" -P "$PORT" "$SERVER:$DISTANT_DIRECTORY" "$LOCAL_DIRECTORY"
                        echo "downloading files..."
                        if [ $? -eq 0 ]; then
                                echo " Operation completed!!"
                        else
                                echo " A problem occured..."
                        fi
                elif ["e" == "2"]; then 
                        scp -r -i "$SSH_KEY" -P "$PORT" "$SERVER:$EDEN_DIR" "$LOCAL_DIRECTORY"
                        echo "downloading files..."
                        if [ $? -eq 0 ]; then
                                echo " Operation completed!!"
                        else
                                echo " A problem occured..."
                        fi
                fi                       
        elif [ "$action" == "2" ]; then
                echo "sending files..."

        else
                echo "Invalid choice"
                tex
        fi
}
printf "\n\n"
tex
