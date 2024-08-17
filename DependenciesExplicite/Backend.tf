terraform {
  backend "azurerm" {
    resource_group_name  = "Horizontal"
    storage_account_name = "horrer"
    container_name       = "malusarey"
    key                  = "feeling.terraform.tfstate"
  }
}