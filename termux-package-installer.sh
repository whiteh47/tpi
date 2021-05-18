#!/bin/bash

# This is a simple script to install all necessary packages on termux for non-root-users

#Author: White Hat
#Date: 11/05/2021

printf "Follow me on instagram:- https://instagram.com/whit3_hat\n\r"
sleep 5;
printf "This script will install all required packages on termux"
sleep 2;
clear;
PName="git-all python3 python3-pip php curl wget ruby fish perl python";
apt-get full-upgrade -y && apt-get update
clear
sleep 2
printf "[+] Updating your Termux Repo"
sleep 5 && printf "[+] Please Wait..."
apt-get install $PName -y;
clear;

SetupStorage="termux-setup-storage" read -p "Do you want to setup storage (Y/N)? >";
if [[ $SetupStorage -eq "y" ]]; then
    $SetupStorage;
    sleep 2;
    echo "Storage Setup is completed now you can access your internal files on termux."
else
    echo "Failed to setup storage";
    sleep 2;
    exit;
fi
