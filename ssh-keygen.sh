#!/bin/bash

read -p "Please enter your email for the new ssh-key:" email
ssh-keygen -b 4096 -t rsa -f ./key -C "$email" -N "" <<< y