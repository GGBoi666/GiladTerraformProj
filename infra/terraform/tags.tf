variable "default_tags" {
  type    = map(string)
  default = {
    Environment = "Production"
    Owner       = "Gilad"
    Project     = "TerraformProject"
  }
}

module "tags" {
  source = "terraform-azure-modules/tag/azurerm"
  version = "~> 2.0"

  tags = var.default_tags
}
