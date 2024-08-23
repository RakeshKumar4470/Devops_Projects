rg_details = {
  rg11 = {
    name     = "keeda"
    location = "centralindia"
  }
  rg12 = {
    name     = "Dhoom04"
    location = "westus"
  }
}

st_details = {
  st11 = {
    name                     = "sandhya"
    resource_group_name      = "keeda"
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
  st12 = {
    name                     = "satish"
    resource_group_name      = "hoom04"
    location                 = "westus"
    account_tier             = "Standard"
    account_replication_type = "LRS"

  }
}
Vnet = {
  vnet01 = {
    name                = "Vnet001"
    location            = "centralindia"
    resource_group_name = "keeda"
    address_space       = ["10.0.0.0/16"]
    dns_servers         = ["10.0.0.4", "10.0.0.5"]
  }

  vnet02 = {
    name                = "Vnet002"
    location            = "westus"
    resource_group_name = "Dhoom04"
    address_space       = ["10.0.0.0/16"]
    dns_servers         = ["10.0.0.4", "10.0.0.5"]
  }

}

subnet = {
  snet001 = {
    name                 = "Bahadur-subnet"
    resource_group_name  = "keeda"
    virtual_network_name = "Vnet001"
    address_prefixes     = ["10.0.54.22/24"]
  }
  snet002 = {
    name                 = "Sanga-subnet"
    resource_group_name  = "Dhoom04"
    virtual_network_name = "Vnet002"
    address_prefixes     = ["10.0.2.43/24"]
  }
}
