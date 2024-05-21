variable "components" {
  default = {
    frontend = {
      instance_type = "t3.small"
    }
    backend  = {
      instance_type = "t3.small"
    }
    mysql = {
      instance_type = "t3.micro" }
  }
}

variable "ami" {
  default = "ami-090252cbe067a9e58"
}

variable "vpc_security_group_ids" {
  default = ["sg-09384db4af9c97a66"]
}
