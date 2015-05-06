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
	echo "[-] Install MONGO"
	apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
	echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
	apt-get install mongodb-org -y
	service mongod start
}
#Upddate_System
#Install_Node
#Install_Git
Install_MongoDB