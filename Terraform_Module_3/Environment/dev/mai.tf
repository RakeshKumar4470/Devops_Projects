module "RG_HD" {
  source = "../../Module/Resource_rg"
  rg_map = var.rg_details
}

module "SA_HD" {
  depends_on      = [module.RG_HD]
  source          = "../../Module/Storage_Account"
  Storage_details = var.st_details
}
