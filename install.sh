#!/bin/bash 
 
Upddate_System() {
	
	echo "[-] Updating Packages"
	apt-get update -y
	
	echo "[-] Upgrading Packages"
	apt-get upgrade -y
}


Upddate_System