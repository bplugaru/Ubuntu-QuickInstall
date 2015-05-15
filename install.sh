#!/bin/bash

Upddate_System() {

	echo "[-] Updating Packages"
	apt-get update -y

	echo "[-] Upgrading Packages"
	apt-get upgrade -y
}

Install_Node() {
	echo "[-] Install NodeJS"
	apt-get install nodejs
	echo "[-] Install NPM"
	apt-get install npm
	echo "[-] Install PM2"
	npm install pm2 -g
	echo "[-] Install Bower"
	npm install bower -g
}

Install_Git() {
	echo "[-] Install GIT"
	apt-get install git
}
Install_MongoDB() {
	echo "Step 1:  Import the MongoDB public key"
	apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

	echo "Step 2: Generate a file with the MongoDB repository url"
	echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list

	echo "Step 3: Refresh the local database with the packages"
	apt-get update

	echo "Step 4: Install the last stable MongoDB version and all the necessary packages on our system"
	apt-get install mongodb
}
pathadd() {
	echo "add to path $1"
    if [ -d "$1" ] && [[ ! $PATH =~ (^|:)$1(:|$) ]]; then
        PATH+=:$1
        export PATH
    fi
}
Install_Cmd() {
	mkdir -p ~/bin
	npm install -g npm install edin-cli
}


#Upddate_System
#Install_Node
#Install_Git
#Install_MongoDB
Install_Cmd