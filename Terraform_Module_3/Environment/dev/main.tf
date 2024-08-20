module "Rakesh_rg" {
  source = "../../Module/Resource_rg"
  rg_map = var.rg_details
}

module "rakesh_SA" {
  depends_on = [module.Rakesh_rg]
  source     = "../../Module/Storage_Account"
  st_map     = var.st_details
}
