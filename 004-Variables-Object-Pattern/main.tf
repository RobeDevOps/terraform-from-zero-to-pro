resource "azurerm_resource_group" "example" {
  name     = var.storage_account.resource_group_name
  location = var.storage_account.location
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account.name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = var.storage_account.account_tier
  account_replication_type = var.storage_account.account_replication_type
}
