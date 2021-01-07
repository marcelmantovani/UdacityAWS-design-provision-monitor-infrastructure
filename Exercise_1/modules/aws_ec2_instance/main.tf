
resource "aws_instance" {
  count = var.instance_count
  ami = "ami-0be2609ba883822ec"
  instance_type = var.instance_type
  tags = var.tags
}