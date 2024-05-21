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
  hello,
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