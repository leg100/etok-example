variable "suffix" {}

module "random" {
  source = "../modules/random"
  suffix = var.suffix
}
  
resource "null_resource" "example" {
}

output "random_string" {
  value = module.random.random_string
}
