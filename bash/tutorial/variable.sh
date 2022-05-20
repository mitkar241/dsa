#!/bin/bash

: '
three kinds of variables in bash scripts:
1. Special Variables:
2. Environment Variables:
3. User-Defined Variables:
'

: '
Example :
bash variable.sh arg1 arg2 arg3 arg4
'
echo -e "##########\n# SPECIAL VARIABLES\n##########\n"
echo "# of CLI parameters passed to the script : $#"
echo "Parameters sent to the script : $@"
echo "End status of the last process to execute : $?"
echo "Process ID of current script : $$"
echo "# of seconds the script has been running for : $SECONDS"
echo "Random number : $RANDOM"
echo "Current line number of the script : $LINENO"

: '
To see the active environment variables in current Bash session
env | less
'
echo ""
echo -e "##########\n# ENVIRONMENT VARIABLES\n##########\n"
echo "Username is : $USERNAME"
echo "User is : $USER"
echo "Shell is : $SHELL"
echo "Hostname is : $HOSTNAME"
echo "Home is : $HOME"
echo "Present Working Directory : $PWD"

echo ""
echo -e "##########\n# USER-DEFINED VARIABLES\n##########\n"
dns="mitkar.io"
backendcount=4
echo "DNS is : $dns"
echo "Backend Server count is : $backendcount"

