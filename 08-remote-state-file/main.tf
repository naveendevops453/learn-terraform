resource "null_resource" "test" {}

terraform {
  backend "s3" {
    bucket = "devopsengineer2-terraform"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}
