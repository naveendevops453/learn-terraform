resource "aws_instance" "frontend" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-09384db4af9c97a66"]
  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "backend"{
  ami = "ami-090252cbe067a9e58"
  instance_type= "t3.micro"
  vpc_security_group_ids = ["sg-09384db4af9c97a66"]
tags= {
  Name = "backend"
  }
}

resource "aws_instance" "mysql" {
  ami = "ami-090252cbe067a9e58"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-09384db4af9c97a66"]
  tags = {
    Name = "mysql"
  }
}