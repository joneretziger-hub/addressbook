#! /bin/bash

sudo yum update -y
#sudo yum install java-1.8.0-openjdk-devel -y
#sudo yum install maven -y
sudo yum install git -y 
sudo yum install docker -y
sudo systemctl enable docker
sudo systemctl start docker 
if [ -d "/home/ec2-user/addressbook" ] 
then
  echo "repo is cloned and exists"\
  cd /home/ec2-user/addressbook
  git fetch --all
  git checkout docker-1
  git reset --hard origin/docker-1
  git clean -fd
else
  git clone https://github.com/joneretziger-hub/addressbook.git /home/ec2-user/addressbook
fi
cd /home/ec2-user/addressbook

git checkout docker-1
sudo docker build -t $1:$2 /home/ec2-user/addressbook 
