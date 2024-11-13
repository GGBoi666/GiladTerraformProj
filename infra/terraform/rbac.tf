resource "azurerm_role_definition" "deny_vm_creation" {
  name        = "Deny VM Creation"
  scope       = data.azurerm_subscription.primary.id
  description = "Custom role that restricts VM creation."

  permissions {
    actions = [
      "*"
    ]
    not_actions = [
      "Microsoft.Compute/virtualMachines/write",
      "Microsoft.Compute/virtualMachines/delete"
    ]
  }

  assignable_scopes = [
    data.azurerm_subscription.primary.id
  ]
}
