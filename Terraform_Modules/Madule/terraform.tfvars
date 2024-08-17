rg_map = {
  rg1 = {
    name     = "rg_dhondhu"
    location = "westus"
  }
  rg2 = {
    name     = "rg_bhondhu"
    location = "centralindia"
  }
}
storage_map = {
   stg1 = {
    name             = "storageee108"
    resource_group   = "rg_dhondhu"
    location         = "westus"
    account_tier     = "Standard"
    replication_type = "LRS"
  }
  stg2 = {
    name             = "storaggge108"
    resource_group   = "rg_bhondhu"
    location         = "centralindia"
    account_tier     = "Standard"
    replication_type = "LRS"
  }
}
