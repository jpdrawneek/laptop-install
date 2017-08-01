#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Illegal number of parameters, you should enter INSTALL_TYPE [sre|php] then SSHKEY_PASSWORD"
fi

SSHKEY_PASSWORD=$2
INSTALL_TYPE=$1

SCRIPTPATH=`pwd -P`

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install ansible

ansible-playbook -e "sshkey_password=$SSHKEY_PASSWORD install_type=$INSTALL_TYPE" $SCRIPTPATH/../ansible/playbook.yml

