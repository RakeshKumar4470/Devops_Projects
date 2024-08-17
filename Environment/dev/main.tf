variable "rg_inputs" {}

module "rgs" {
  source = "../../Modules/azurerm_rg"
  rgs    = var.rg_inputs
}

module "vnet" {
  source              = "../../Modules/azurerm_vnet"
  vnet_name           = "vnet1"
  resource_group_name = "rg1"
  location            = "westus"
}
