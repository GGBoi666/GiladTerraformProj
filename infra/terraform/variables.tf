variable "subscription_id" {
  type        = string
  description = "Azure subscription ID"
}

variable "client_id" {
  type        = string
  description = "Azure client ID for authentication"
}

variable "client_secret" {
  type        = string
  description = "Azure client secret for authentication"
  sensitive   = true
}

variable "tenant_id" {
  type        = string
  description = "Azure tenant ID"
}

variable "project_name" {
  type        = string
  description = "Project name used in resource group name"
  default     = "simple_net_project"
}

variable "location" {
  type        = string
  description = "Azure region for resources"
  default     = "eastus"
}

variable "vm_size" {
  type        = string
  description = "Size of the virtual machine"
  default     = "Standard_DS1_v2"
}

variable "admin_username" {
  type        = string
  description = "Admin username for VMs"
  default     = "Giliboi"
}

variable "storage_account_name" {
  type        = string
  description = "Name of the Azure storage account"
}

variable "storage_account_sku" {
  type        = string
  description = "SKU for Azure storage account"
  default     = "LRS"
}

variable "monitoring_workspace_name" {
  type        = string
  description = "Name of the Log Analytics workspace for monitoring"
}

variable "key_vault_name" {
  type        = string
  description = "Name of the Azure Key Vault"
}

variable "bastion_name" {
  type        = string
  description = "Name of the Azure Bastion Host"
}

variable "object_id" {
  type        = string
  description = "Object ID for key vault access"
}

variable "db_password" {
  type        = string
  description = "Database password"
  sensitive   = true
}
variable "admin_password" {
  type        = string
  description = "Admin password for VM"
  sensitive   = true
}
