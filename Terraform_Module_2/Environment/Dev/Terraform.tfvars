rg_details = {
  rg1 = {
    name     = "Rakesh_rg"
    location = "westus"
  }

  rg2 = {
    name     = "Vikash_rg"
    location = "centralindia"
  }
}
stg_map = {
  stg1 = {
    name                     = "gungunstorage"
    resource_group_name      = "Rakesh_rg"
    location                 = "westus"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
   stg2 = {
    name                     = "wagletorage"
    resource_group_name      = "Vikash_rg"
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}
