module "rgs" {
  source = "../Modules/RG"
  rg_name = "prakash_rg"
  rg_location = "East US"
}

module "storage_account" {
  depends_on = [module.rgs]
  source = "../Modules/storage_account"
  name = "pksstorage1705"
  resource_group_name = "prakash_rg"
  resource_group_location = module.rgs.rg_location
}