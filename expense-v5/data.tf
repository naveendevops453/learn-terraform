data "aws_route53_zone" "main" {
  name         = "devopsengineer2.online"
  private_zone = false
}

data "aws_security_group" "allow-all" {
  filter {
    name   = "group-name"
    values = ["Allow-all"]
  }
}

output "sg" {
  value = data.aws_security_group.allow-all
}
