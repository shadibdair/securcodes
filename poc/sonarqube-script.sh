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

# EFS install
sudo yum install -y amazon-efs-utils

# Using the EFS mount
mkdir /tmp/sonarq-conf/
sudo mount -t efs -o tls fs-0f1777bcdeaeace03:/ /tmp/sonarq-conf/
cd /tmp/sonarq-conf/
mkdir sonarqube_conf
mkdir sonarqube_data
mkdir sonarqube_extensions
mkdir postgresql
mkdir postgresql_data

# Start the docker-compose
docker-compose up


