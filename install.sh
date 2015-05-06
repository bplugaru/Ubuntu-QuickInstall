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
Upddate_System
Install_Node