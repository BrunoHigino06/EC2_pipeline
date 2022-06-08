#Network vars
variable "vpc" {
 type = map(any)
  default = {
    name  = ""
  }
}

variable "subnet" {
 type = map(any)
  default = {
    name  = ""
    availability_zone = ""
  }
}

variable "security_group" {
 type = map(any)
  default = {
    name  = ""
  }
}