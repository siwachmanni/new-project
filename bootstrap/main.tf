

resource "azurerm_resource_group" "bootrg" {
  name     = var.resource-group-name
  location = var.location
}

resource "azurerm_storage_account" "bootstg" {
  name                     = var.stg-name
  resource_group_name      = azurerm_resource_group.bootrg.name
  location                 = azurerm_resource_group.bootrg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "bootcont" {
  name                  = var.container-name
  storage_account_id    = azurerm_storage_account.bootstg.id
  container_access_type = "private"
}