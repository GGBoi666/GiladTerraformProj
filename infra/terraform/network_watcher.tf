resource "azurerm_network_watcher" "example" {
  name                = "myNetworkWatcher"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
}
