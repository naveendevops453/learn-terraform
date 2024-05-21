resource "aws_instance" "ec2-nodes" {
  count = length(var.components)
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-09384db4af9c97a66"]
  tags = {
    Name = var.components[count.index]
  }
}

variable "components" {
  default = ["frontend", "backend", "mysql"]
}