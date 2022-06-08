output "vpc_id" {
  value = aws_default_vpc.main.id
}

output "subnet_id" {
  value = aws_default_subnet.subnet.id
}

output "SG_id" {
  value = aws_security_group.SG.id
}