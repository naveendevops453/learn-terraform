variable "fruits" {}
output "apple" {
  value = "Apple Quantity - ${lookup(var.fruits["apple"], "quantity", 0)}, Price - ${lookup(var.fruits["apple"], "price", 0.5)}"
}

output "banana" {
#  value = "Banana Quantity - ${var.fruits["banana"]["quantity"]}, Price - ${var.fruits["banana"]["price"]}"
  value = "Banana Quantity - ${lookup(var.fruits["banana"], "quantity", 0)}, Price - ${lookup(var.fruits["banana"], "price", 0.5)}"
}