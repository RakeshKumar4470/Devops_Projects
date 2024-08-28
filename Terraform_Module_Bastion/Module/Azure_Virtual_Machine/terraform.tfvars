vnetwork = {
  vm1 = {
    subnet_name          = "default"
    resource_group_name  = "rg_B"
    location             = "westus"
    virtual_network_name = "vnet_001"
    nic_name             = "Nic_123"
    vm_name              = "Gungun"
    size                 = "Standard_F2"
    address_prefixes     = ["10.0.0.22/24"]
  }
}
