resource "azurerm_storage_account" "cup" {
 depends_on               = ["azurerm_resource_group.maven"]
  name                     = "horrer"
  resource_group_name      = azurerm_resource_group.maven.name
  location                 = azurerm_resource_group.maven.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  
}