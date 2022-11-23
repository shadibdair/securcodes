provider "aws" {
    region = "us-east-1"
}

resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/16"
}

module "flask_webserver" {
    source = "./modules/ec2"
    vpc_id = module.public_subnet.vpc_id.id
    cidr_block = module.public_subnet.cidr_block
    # vpc_id = aws_vpc.main.id
    # cidr_block = "10.0.0.0/16"
    webserver_name = "Flask"
    // Linux Amazon EC2  || ami-08c40ec9ead489470 -> Ubuntu EC2
    ami = "ami-0b0dcb5067f052a63"
    instance_type = "t2.medium"
}

# module "public_subnet" {
#   source = "./modules/public-subnet"

#   vpc_id = aws_subnet.subnets.id
#   cidr_block = aws_subnet.subnets.cidr_block
#   availability_zone = aws_subnet.subnets.availability_zone
# }

# resource "aws_elb" "main" {
#     instances = module.flask_webserver.instance.id
# }