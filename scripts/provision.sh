#!/bin/bash

#INSTALLABLES
curl -sL https://deb.nodesource.com/setup_4.x | sudo bash -
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
apt-get install -y dos2unix git nodejs build-essential g++ imagemagick mongodb-org

#REDIS
# cd ~
# wget https://download.redis.io/redis-stable.tar.gz
# tar xvzf redis-stable.tar.gz
# cd redis-stable
# make
# make test
# make install
# mkdir /etc/redis
# mkdir /var/redis
# mkdir /var/redis/6379
# yes | cp ~/redis-stable/utils/redis_init_script /etc/init.d/redis_6379
# yes | cp /vagrant/scripts/redis/6379.conf /etc/redis/6379.conf
# dos2unix /etc/redis/6379.conf
# update-rc.d redis_6379 defaults
# /etc/init.d/redis_6379 start

#NODEBB
mkdir /var/nodebb
cd /var/nodebb
git clone -b v1.2.1 https://github.com/NodeBB/NodeBB.git .
npm install
chown -R vagrant:vagrant /var/nodebb
cat /vagrant/scripts/completed.txt
