variable "vnetwork" {
  type = map(any)
}

resource "azurerm_subnet" "subnetwork" {
  for_each             = var.vnetwork
  name                 = each.value.subnet_name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
  address_prefixes     = each.value.address_prefixes
}
resource "azurerm_network_interface" "nic" {
  for_each           = var.vnetwork
  name               = each.value.nic_name
  resource_group_name = each.value.resource_group_name
  location           = each.value.location

  ip_configuration {
    name                          = "webapp"
    subnet_id                     = data.azurerm_subnet.subnetwork[each.key].id
    private_ip_address_allocation = "dynamic"
  }
}

variable "virtual_machin" {}

resource "azurerm_linux_virtual_machine" "vm" {
  for_each                        = var.vnetwork
  name                            = each.value.name
  resource_group_name             = each.value.resource_group_name
  location                        = each.value.location
  size                            = each.value.size
  admin_username                  = data.azurerm_key_vault_secret.username.value
  admin_password                  = data.azurerm_key_vault_secret.userpassword.value
  disable_password_authentication = false
  network_interface_ids           = [azurerm_network_interface.nic[each.key].id]

  os_disk {
    caching              = "readwrite"
    storage_account_type = "Standard_LRS"
  }
}

