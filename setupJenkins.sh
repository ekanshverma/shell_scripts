#!/bin/bash
apt update
apt install software-properties-common apt-transport-https -y
add-apt-repository ppa:openjdk-r/ppa -y
apt install openjdk-8-jdk -y
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
apt update
apt install jenkins -y
systemctl start jenkins
systemctl enable jenkins

