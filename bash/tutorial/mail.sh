#!/bin/bash

#sudo apt install mailutils -y

recipient="raktimhalder241@gmail.com"
subject="Kernel Panic"
message="Reporting Kernel Panic on host backend-03"
mail -s $subject $recipient <<< $message

