#!/bin/bash

echo -e "Starting Refresh : $(date "+%d-%m-%Y --- %T") ..."

sudo apt update
sudo apt upgrade -y

sudo apt autoremove -y
sudo apt autoclean

echo -e "Script Terminated : $(date "+%d-%m-%Y --- %T") ..."

