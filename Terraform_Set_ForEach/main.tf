variable "CashCard" {
  description = "set of resource group"
  type        = list(string)
  default     = ["RG1", "RG2", "RG3", "RG4", "RG5"]
}

resource "azurerm_resource_group" "Memoranda" {
  for_each = toset(var.CashCard)
  name     = each.value
  location = "Centralindia"
}
