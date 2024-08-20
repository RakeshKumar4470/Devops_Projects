module "Rakesh_rg" {
  source = "../../Modules/Resource_group"
  rg_map = var.rg_details
}
module "Rakesh_storage" {
   depends_on = [ module.Rakesh_rg ]
  source = "../../Modules/Storage_Account"
  st_map = var.stg_map
}
