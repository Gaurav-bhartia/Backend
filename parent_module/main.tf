module "myrg" {
  source           = "../child_module/resource_group"
  rgbholu_name     = "bholurg"
  rgbholu_location = "centralindia"
}
module "mystorage" {
  source           = "../child_module/storage_group"
  depends_on       = [module.myrg]
  stgbholu_name    = "bholustorage"
  rgbholu_name     = "bholurg"
  rgbholu_location = "centralindia"
}
module "mycontainer" {
  source               = "../child_module/container"
  depends_on           = [module.myrg, module.mystorage]
  bholu_container_name = "bholucontainer"
  stgbholu_name        = "bholustorage"
  rgbholu_name         = "bholurg"
}