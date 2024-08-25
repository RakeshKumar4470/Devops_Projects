module "rg_Module" {
  source   = "../../Module/Azure_Resource_Gruop"
  rg_group = var.rgs
}

module "SA_Module" {
  depends_on      = [module.rg_Module]
  source          = "../../Module/Azure_Storage_Account"
  storage_account = var.stg_account
}

module "Virtual_Network" {
  source       = "../../Module/Azure_Virtual_Network"
  vnet_details = var.vnets
}

module "Subnet" {
  depends_on = [module.Virtual_Network]
  source     = "../../Module/Azure_Subnet"
  subnet     = var.subnet_details
}
