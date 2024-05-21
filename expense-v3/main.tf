resource "aws_instance" "ec2-nodes" {
  for_each      = var.components
  ami           = "ami-090252cbe067a9e58"
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = ["sg-09384db4af9c97a66"]
  tags = {
    Name = each.key
  }
}

variable "components" {
  default = {
    frontend = { instance_type = "t3.micro" }
    backend  = { instance_type = "t3.micro" }
    mysql = { instance_type = "t2.micro" }
  }
}

#frontend = { instance_type = "t3.micro" }
#In above input key is frontend value is  instance_type = "t3.micro"
#since it is called by for_each, each prefix is needed like each.key and each.value.