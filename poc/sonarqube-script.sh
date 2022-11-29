#!/bin/bash
sudo yum update -y
# Install the most recent Docker Engine package.
sudo amazon-linux-extras install docker -y
# Start the Docker service.
sudo service docker start
# Add the ec2-user to the docker group so you can execute Docker commands without using sudo
sudo usermod -aG docker ec2-user

# Install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Change permission
cd /usr/local/bin/
sudo chmod +x docker-compose

# Install SonarQube
sudo sysctl -w vm.max_map_count=262144
cd /home/ec2-user
mkdir sonar
cd sonar
wget https://raw.githubusercontent.com/shadibdair/securcodes/main/poc/docker-compose.yml
docker-compose up
