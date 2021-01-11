output "vpc_id" {
    value = aws_vpc.main.id
}

output "public_subnet_id" {
    value = aws_subnet.public.id
}

output "ingress_rules" {
    value = aws_security_group.allow_web.ingress
}

output "routes" {
    value = aws_route_table.r.route
}