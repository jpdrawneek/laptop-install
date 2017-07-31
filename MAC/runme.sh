#!/bin/bash

SCRIPTPATH=`pwd -P`

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install ansible

ansible-playbook $SCRIPTPATH/../ansible/playbook.yml

