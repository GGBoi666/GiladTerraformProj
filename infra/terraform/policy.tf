resource "azurerm_policy_definition" "deny_vm_creation" {
  name         = "Deny-VM-Creation"
  display_name = "Deny VM Creation"
  policy_type  = "Custom"

  policy_rule = <<POLICY
  {
    "if": {
      "field": "type",
      "equals": "Microsoft.Compute/virtualMachines"
    },
    "then": {
      "effect": "deny"
    }
  }
  POLICY

  mode = "All"
}

resource "azurerm_policy_assignment" "deny_vm_creation_assignment" {
  name                 = "Deny-VM-Creation-Assignment"
  scope                = azurerm_resource_group.main.id
  policy_definition_id = azurerm_policy_definition.deny_vm_creation.id
}
