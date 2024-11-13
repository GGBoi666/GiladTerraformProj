resource "azurerm_key_vault" "example" {
  name                        = var.key_vault_name
  location                    = azurerm_resource_group.main.location
  resource_group_name         = azurerm_resource_group.main.name
  tenant_id                   = var.tenant_id
  sku_name                    = "standard"
  purge_protection_enabled    = true

  access_policy {
    tenant_id = var.tenant_id
    object_id = var.object_id  

    secret_permissions    = ["get", "list", "set"]
    key_permissions       = ["get", "list", "create", "delete"]
    certificate_permissions = ["get", "list", "create"]
  }
}


resource "azurerm_key_vault_secret" "db_password" {
  name         = "dbPassword"
  value        = var.db_password
  key_vault_id = azurerm_key_vault.example.id
}
