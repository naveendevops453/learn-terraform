variable "fruits" {
  default = {
    apple = {}
    banana = {}
    oragne = {}

  }
}

resource "null_resource" "test" {
  for_each = var.fruits
}