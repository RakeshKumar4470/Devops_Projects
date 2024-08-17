variable "RG_Group" {
    description = "List of Resource group"
  type    = set(string)
  default = ["RG1", "RG2", "RG3", "RG4", "RG5"]
}
resource "azurerm_resource_group" "Reminder" {
  for_each = var.RG_Group
  name     = each.key
  location = "Centralindia"
}