
#VPC
resource "aws_vpc" "main" {
  cidr_block = "10.91.0.0/16"
  tags = {
    "Name" = "main Lambda vpc"
  }
}

#Internet gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "main_vpc_ig"
  }
}

resource "aws_egress_only_internet_gateway" "eig" {
  vpc_id = aws_vpc.main.id

}

# Public subnet
resource "aws_subnet" "public" {
    vpc_id = aws_vpc.main.id
    cidr_block =  var.public_subnet_cidr      # "10.91.32.0/21"
    availability_zone = var.public_subnet_az  #"us-east-1a"
}

# route table
resource "aws_route_table" "r" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  route {
    ipv6_cidr_block        = "::/0"
    egress_only_gateway_id = aws_egress_only_internet_gateway.eig.id
  }

  tags = {
    Name = "main route table"
  }
}

# Associate subnet to route table
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.r.id
}

# Security group allow port 22, 80, 443
resource "aws_security_group" "allow_web" {
  name        = "allow_web_traffic"
  description = "Allow web inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "HTTPS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = var.sg_cidr_blocks
  }

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.sg_cidr_blocks
  }

  ingress {
    description = "SSH from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.sg_cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}
