provider "aws" {
  region = var.input_reagion
  shared_credentials_file = "/home/marcel/.aws/credentials"
}

# TODO: IAM role for Lambda, a VPC, and a public subnet
module "lambda_vpc" {
  source = "./modules/aws_vpc_config"
  public_subnet_az = "us-east-1a"
  public_subnet_cidr = "10.91.32.0/21"
  sg_cidr_blocks = ["98.230.154.36/32"]
}

# TODO: Lambda 
module "lambda_function" {
    source = "./modules/aws_lambda_module"
    lambda_function_name = "udacity"
    lambda_filename = "greet_lambda.zip"
    handler_name = "greet_lambda.lambda_handler"
    runtime = "python3.7"
}

