#!/usr/bin/env sh

# install dependencies
sudo apt install lsb-release curl gpg

# install repostiory gpg key
curl -fsSL https://packages.redis.io/gpg | sudo gpg --dearmor -o /usr/share/keyrings/redis-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/redis-archive-keyring.gpg] https://packages.redis.io/deb $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/redis.list

# install redis
sudo apt-get update && sudo apt-get install redis
