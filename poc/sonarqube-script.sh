#!/bin/bash
sudo yum update -y
# Install the most recent Docker Engine package.
sudo amazon-linux-extras install docker -y
# Start the Docker service.
sudo service docker start
# Add the ec2-user to the docker group so you can execute Docker commands without using sudo
sudo usermod -aG docker ec2-user
# Pull image
docker pull sonarqube:latest
# Run sonarqube server
docker run -d --name sonarqube -p 9000:9000 sonarqube:latest