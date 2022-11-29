#!/bin/bash
sudo yum update -y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum -y upgrade

sudo yum -y install maven
sudo yum -y install git

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

