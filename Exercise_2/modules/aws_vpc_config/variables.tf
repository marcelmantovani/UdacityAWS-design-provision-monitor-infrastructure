variable "public_subnet_az" {
    description = "The AZ in which the public subnet will be created"
    type = string
    default = "us-east-1a"
}

variable "public_subnet_cidr" {
    description = "The CIDR block of the public subnet"
    type = string
}

variable "sg_cidr_blocks" {
    description = "The list of CIDR for the security group"
    type = list
    default = ["0.0.0.0/0"]
}