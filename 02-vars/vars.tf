variable "x" {
  default = "10"
}

output "x" {
  value = var.x
}
#List Variable
variable "l" {
  default = [
  10,
  "hello",
  true
  ]
}

output "l1" {
  value = var.l

}

#accessing second value
output "l2" {
  value = var.l[1]
}

#map variable
variable "m" {
  default = {
    course = "Devops"
    Name = "Naveen"
  }
}

output "course_name" {
  value = var.m["course"]
}

variable "y" {}
output "y" {
  value = var.y
}

variable "env" {}
output "env" {
  value = var.env
}