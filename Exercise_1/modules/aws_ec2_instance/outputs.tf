output "ip_address" {
    value = aws_instance.ec2_instance.*.public_ip
}

output "instance_id" {
    value = aws_instance.ec2_instance.*.id
}