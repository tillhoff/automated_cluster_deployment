#!/bin/bash

read -p "Please enter the host you want to shut down: " host
read -p "Please enter the user you want to be: [enforge] " user
user=${user:=enforge}  # if variable not set or null, set it to default

ssh -t -i ./key.secret -o "StrictHostKeyChecking=no" -o "UserKnownHostsFile=/dev/null" -o "LogLevel=error" "$user@$host" 'sudo systemctl poweroff'
