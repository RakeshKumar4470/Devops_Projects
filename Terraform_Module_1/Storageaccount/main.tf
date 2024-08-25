resource "azurerm_storage_account""storage" {
  for_each                 = var.storage_map
  name                     = each.value.name
  resource_group_name      = each.value.resource_group
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.replication_type
}
