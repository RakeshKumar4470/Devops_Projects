variable "storage_map" {}

resource "azurerm_storage_account" "storage" {
  for_each                 = var.storage_map
  name                     = each.value.name
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location
  account_tier             = "Standard"
  account_replication_type = each.value.account_replication_type
}
