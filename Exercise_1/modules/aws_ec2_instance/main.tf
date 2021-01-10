
resource "aws_instance" "ec2_instance" {
  count = var.instance_count
  ami = "ami-0be2609ba883822ec"
  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id = var.subnet_id
  instance_type = var.instance_type
  tags = var.tags
}