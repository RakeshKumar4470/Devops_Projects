resource "azurerm_resource_group" "rg" {
  for_each = {
    rg_rahul = "west"
    rg_pappu = "centralindia"
  }
  name     = each.key
  location = "westus"
}
