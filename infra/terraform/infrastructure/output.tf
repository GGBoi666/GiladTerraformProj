output "public_ip_address" {
  value = azurerm_public_ip.load_ip.ip_address
}

output "web1_public_ip" {
  value = azurerm_public_ip.web1_public_ip.ip_address
  description = "The public IP address of the web1 VM"
}

output "web2_public_ip" {
  value = azurerm_public_ip.web2_public_ip.ip_address
  description = "The public IP address of the web1 VM"
}

output "db_public_ip" {
  value = azurerm_public_ip.db_public_ip.ip_address
  description = "The public IP address of the web1 VM"
}
