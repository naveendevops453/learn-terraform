variable "marks" {
  default = 50
}

output "grade" {
  value = var.marks > 80 ? "First Class" : "Second Class"
}

#syntax: condition ? true value : false value