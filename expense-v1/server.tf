resource "aws_instance" "frontend" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t3.micro"
  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "backend"{
  ami = ""
  instance_type= "t3.micro"

tags= {
  Name = "backend"
  }
}

resource "aws_instance" "mysql" {
  ami = ""
  instance_type = "t3.micro"
  tags = {
    Name = "mysql"
  }
}