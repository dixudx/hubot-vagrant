#!/usr/bin/env bash
## hubot configuration
npmmirror=$1
owner=$2
name=$3
description=$4
adapter=$5

## install node.js and npm

# refer to https://github.com/nodesource/distributions for more installations
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
sudo apt-get install -y nodejs

## config npm registry
npm config set registry $npmmirror

## install the hubot generator
npm install -g yo generator-hubot

## make a new directory, and generate a new instance of hubot in it
mkdir -p /home/vagrant/myhubot
cd myhubot
yo hubot --owner=$owner --name=$name --description=$description --adapter=$adapter
