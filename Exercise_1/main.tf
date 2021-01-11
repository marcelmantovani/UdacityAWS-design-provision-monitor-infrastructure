# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "/home/marcel/.aws/credentials"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2

module "t2micro_instance" {
  source = "./modules/aws_ec2_instance"
  instance_count = 4
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0de0caa8ec855eb50"]
  subnet_id = "subnet-086d976e27bc71e25"
  tags = {"Name" = "Udacity T2"}
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4

module "t4large_instance" {
  source = "./modules/aws_ec2_instance"
  instance_count = 0
  instance_type = "m4.large"
  tags = {"Name" = "Udacity M4"}
}