resource "azurerm_monitor_diagnostic_setting" "example" {
  name                       = "example-monitoring"
  target_resource_id         = azurerm_linux_virtual_machine.app_server.id
  log_analytics_workspace_id = azurerm_log_analytics_workspace.main.id
}

resource "azurerm_log_analytics_workspace" "main" {
  name                = var.monitoring_workspace_name
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

resource "azurerm_monitor_activity_log_alert" "alert_on_vm_creation" {
  name                = "AlertOnVmCreation"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  scopes              = [data.azurerm_subscription.primary.id]
  description         = "Alert on VM creation events"
  enabled             = true

  criteria {
    category       = "Administrative"
    operation_name = "Microsoft.Compute/virtualMachines/write"
    status         = "Succeeded"
  }

  action {
    action_group_id = azurerm_monitor_action_group.alert_action_group.id
  }
}

resource "azurerm_monitor_action_group" "alert_action_group" {
  name                = "SecurityAlertActionGroup"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  short_name          = "SecAlertGroup"

  email_receiver {
    name          = "security_team"
    email_address = "security@example.com"
  }
}
