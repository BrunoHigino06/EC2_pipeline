resource "aws_default_vpc" "main" {
  tags = {
    Name = var.vpc.name
  }
}

resource "aws_default_subnet" "subnet" {
  availability_zone = var.subnet.availability_zone

  tags = {
    Name = var.subnet.name
  }
}

resource "aws_security_group" "SG" {
    name        = var.security_group.name
    vpc_id      = aws_default_vpc.main.id

    tags = {
      Name = var.security_group.name
    }
}