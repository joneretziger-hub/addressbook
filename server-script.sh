#! /bin/bash

sudo yum update -y
#sudo yum install java-1.8.0-openjdk-devel -y
#sudo yum install maven -y
sudo yum install docker -y
sudo yum install git -y 
sudo systemctl start docker 
if [ -d "addressbook" ] 
then
  echo "repo is cloned and exists"\
  cd /home/ec2-user/addressbook
  git pull origin b1
else
  git clone https://github.com/joneretziger-hub/addressbook.git
fi
cd /home/ec2-user/addressbook

mvn package
