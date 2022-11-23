provider "aws" {
    region = "us-east-1"
}

resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/16"
}

module "flask_webserver" {
    source = "./ec2"

    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.0.0/16"
    webserver_name = "Flask"
    // Linux Amazon EC2  || ami-08c40ec9ead489470 -> Ubuntu EC2
    ami = "ami-0b0dcb5067f052a63"
    instance_type = 
}