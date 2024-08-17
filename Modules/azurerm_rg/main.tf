variable "rgs" {
    type = map(any)
}

resource "azurerm_resource_group" "name" {
for_each = var.rgs
  name     = each.value.name
  location = each.value.location
}