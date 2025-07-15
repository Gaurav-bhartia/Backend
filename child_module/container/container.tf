resource "azurerm_storage_container" "container" {
  name = var.bholu_container_name
  storage_account_id = data.azurerm_storage_account.existing.id
  container_access_type = "private"
}