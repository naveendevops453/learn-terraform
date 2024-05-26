data "aws_route53_zone" "main" {
  name         = "devopsengineer2.online"
  private_zone = false
}

data "aws_security_group" "Allow-all" {
  filter {
    name   = "group-name"
    values = ["Allow-all"]
  }
}

# output "sg" {
#   value = data.aws_security_group.Allow-all
# }

data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "RHEL-9-DevOps-Practice"
  owners           = ["973714476881"]
}