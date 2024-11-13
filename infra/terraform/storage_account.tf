resource "azurerm_storage_account" "app_storage" {
  name                     = "appstorage${random_string.suffix.result}"
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "random_string" "suffix" {
  length  = 6
  special = false
}

resource "azurerm_storage_account_network_rules" "app_storage_rules" {
  storage_account_id = azurerm_storage_account.app_storage.id

  virtual_network_subnet_ids = [
    azurerm_subnet.public.id,
    azurerm_subnet.private.id,
  ]

  default_action = "Deny"
}

resource "azurerm_storage_container" "app_container" {
  name                  = "appcontainer"
  storage_account_name  = azurerm_storage_account.app_storage.name  # Directly reference storage account name
  container_access_type = "private"
}
