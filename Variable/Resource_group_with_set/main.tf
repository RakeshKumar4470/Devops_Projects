variable "rg_set" {
  description = "isme rg ki detail"
  type        = set(string)
  default     = ["rg1", "rg2", "rg3", "rg4", "rg3"]
}

resource "azurerm_resource_group" "Honda" {
  for_each = var.rg_set
  name     = each.key
  location = "West Europe"
}