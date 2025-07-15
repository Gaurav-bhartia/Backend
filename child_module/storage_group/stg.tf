resource "azurerm_storage_account" "newstg" {
  name = var.stgbholu_name
  resource_group_name = var.rgbholu_name
  location = var.rgbholu_location
  account_tier = "Standard"
  account_replication_type = "LRS"
}