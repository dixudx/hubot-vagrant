#!/usr/bin/env bash

### hubot configuration
npmmirror=$1
owner=$2
name=$3
description=$4
adapter=$5

DEFAULT_INSTALLATION_DIR="/home/vagrant/myhubot"

source /vagrant/provisioning/utils.sh

### install node.js and npm

## config npm registry
print_status "configure npm registry to $npmmirror with /home/vagrant/.npmrc"
echo "registry = $npmmirror" > /home/vagrant/.npmrc

## refer to https://github.com/nodesource/distributions for more installations
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
exec_cmd 'sudo apt-get install -y nodejs'

### install the hubot generator
print_status "installing the hubot generator for you ..."
print_status "be patient and wait. it will take some time to install the generator ..."
exec_cmd 'sudo npm install -g --loglevel=http yo generator-hubot'

### make a new directory, and generate a new instance of hubot in it
print_status "creating an instance of hubot for you ..."
mkdir -p $DEFAULT_INSTALLATION_DIR
cd myhubot

exec_cmd "yo hubot --owner=\"$owner\" --name=\"$name\" --description=\"$description\" --adapter=\"$adapter\""
print_status "successfully creating a hubot instance with name: $name"
print_status "Now you can login/ssh the instance, and type 'cd $DEFAULT_INSTALLATION_DIR; bin/hubot'"
print_status "And then you can start your hubot journey with '$name help'"
