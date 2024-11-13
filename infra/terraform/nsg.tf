resource "azurerm_network_security_rule" "allow_https" {
  name                       = "Allow-HTTPS"
  priority                   = 100
  direction                  = "Inbound"
  access                     = "Allow"
  protocol                   = "Tcp"
  source_port_range          = "*"
  destination_port_ranges    = ["443"]  # גישה לפורט 443
  source_address_prefix      = "*"
  destination_address_prefix = "*"
  network_security_group_name = azurerm_network_security_group.public_nsg.name
  resource_group_name        = azurerm_resource_group.main.name
}

resource "azurerm_network_security_rule" "restrict_ssh" {
  name                       = "Restrict-Custom-SSH"  # שונה לשם חדש כדי לשקף את השינוי
  priority                   = 200
  direction                  = "Inbound"
  access                     = "Allow"
  protocol                   = "Tcp"
  source_port_range          = "*"
  destination_port_ranges    = ["2222"]  # פורט 2222 במקום 22
  source_address_prefixes    = ["<Your-IP-Range>"]  
  destination_address_prefix = "*"
  network_security_group_name = azurerm_network_security_group.public_nsg.name
  resource_group_name        = azurerm_resource_group.main.name
}
