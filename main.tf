module "network" {
  source = "./network/"

  vpc = {
      name = var.vpc.name
  }
  subnet = {
      name = var.subnet.name
      availability_zone = var.subnet.availability_zone
  }
  security_group = {
      name = var.security_group.name
  }
}