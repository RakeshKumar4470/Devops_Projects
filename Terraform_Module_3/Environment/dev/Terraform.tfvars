rg_details = {
  rg1 = {
    name     = "rg_paglu"
    location = "centralindia"
  }
  rg2 = {
    name     = "rg_chulbil"
    location = "westus"
  }
}
st_details = {
  stg1 = {
    name                     = "learning_module"
    resource_group_name      = "rg_paglu"
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
  stg2 = {
    name                     = "learn_module"
    resource_group_name      = "rg_chulbil"
    location                 = "westus"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}
