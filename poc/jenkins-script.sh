#!/bin/bash
sudo yum update -y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum -y upgrade

sudo yum -y install maven
sudo yum -y install git

# Install the most recent Docker Engine package.
sudo amazon-linux-extras install docker -y
# Start the Docker service.
sudo service docker start
# Add the ec2-user to the docker group so you can execute Docker commands without using sudo
sudo usermod -aG docker ec2-user

# Install Ansible
sudo amazon linux extras install ansible2 -y

# Add required dependencies for the jenkins package
sudo amazon-linux-extras install -y java-openjdk11
sudo yum -y install jenkins
sudo systemctl daemon-reload
sudo systemctl start jenkins
# EFS install
sudo yum install -y amazon-efs-utils


# Using the EFS mount
sudo mount -t efs -o tls fs-0a32d4009d2ed462c:/ /var/lib/jenkins
sudo systemctl start jenkins


