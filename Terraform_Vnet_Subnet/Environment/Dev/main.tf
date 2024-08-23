module "RG_HD" {
  source = "../../Module/Resource_rg"
  rg_map = var.rg_details
}

module "SA_HD" {
  depends_on      = [module.RG_HD]
  source          = "../../Module/Storage_Account"
  Storage_details = var.st_details
}

module "Virtual_Network" {
  source  = "../../Module/Virtual_Network"
  Vnet112 = var.Vnet
}

module "Virtual_subnets" {
  depends_on = [module.Virtual_Network]
  source     = "../../Module/Azure_subnet"
  subnets    = var.subnet

}
