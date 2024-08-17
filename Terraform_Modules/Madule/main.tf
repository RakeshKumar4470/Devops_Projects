variable "rg_map" {}

module "rg_block" {
  source = "../Resourcegroup"
  rg_map = var.rg_map
}
variable "storage_map" {}

module "storage_account_block" {
  source      = "../Storageaccount"
  storage_map = var.storage_map

}
