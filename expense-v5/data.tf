data "aws_route53_zone" "main" {
  name         = "devopsengineer2.online"
  private_zone = false
}

# output "zone" {
#   value = data.aws_route53_zone.main
# }

data "aws_security_group" "allow-all"{
  filter {
    name   = "group-name"
    values = ["allow-all"]
  }
}

output "sg" {
  value = data.aws_security_group.allow-all
}
