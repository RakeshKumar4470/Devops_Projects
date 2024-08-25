rgs = {
  rg1 = {
    name     = "rg-A"
    location = "westus"
  }
}

stg_account = {
  stg1 = {
    name                     = "nayak"
    location                 = "westus"
    resource_group_name      = "rg-A"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}

vnets = {
  vnet01 = {
    name                = "vn01"
    resource_group_name = "rg-A"
    location            = "westus"
    address_space       = ["10.0.0.10/24"]
  }
}


subnet_details = {
  subnet01 = {
    name                 = "snet_01"
    resource_group_name  = "rg-A"
    virtual_network_name = "vn01"
    address_prefixes      = ["10.0.0.22/24"]
  }
}