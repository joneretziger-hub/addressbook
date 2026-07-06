#! /bin/bash

sudo yum update -y
#sudo yum install java-1.8.0-openjdk-devel -y
#sudo yum install maven -y
sudo yum install git -y 
sudo yum install docker -y
sudo systemctl enable docker
sudo systemctl start docker 
if [ -d "addressbook" ] 
then
  echo "repo is cloned and exists"\
  cd /home/ec2-user/addressbook
  git fetch origin
  git checkout docker-1
  git pull origin docker-1
else
  git clone https://github.com/joneretziger-hub/addressbook.git
fi
cd /home/ec2-user/addressbook

git checkout docker-1
sudo docker build -t $1:$2 /home/ec2-user/addressbook 
