output "app_server_public_ip" {
  value = azurerm_public_ip.app_server_ip.ip_address
  description = "The public IP address of the application server."
}
output "storage_account_name" {
  value = azurerm_storage_account.app_storage.name
}

output "storage_account_primary_connection_string" {
  value = azurerm_storage_account.app_storage.primary_connection_string
}
