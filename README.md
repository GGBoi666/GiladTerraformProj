# Simple Network Project with Azure and Terraform

## Project Overview
This project is designed to create a secure network infrastructure on Azure using Terraform. The infrastructure includes virtual machines, secure storage, monitoring and alert systems, and a Key Vault, all configured with strict security controls.

## Project Objectives
- Set up a secure network environment on Azure with security monitoring and secret management.
- Use Terraform for efficient, code-based infrastructure management on Azure.
- Implement access control and monitoring to ensure the security and stability of all resources.

## Project Structure

### Main Terraform Files
- **main.tf**: The core configuration file, defining the Azure provider and main resource group.
- **variables.tf**: Contains configurable variables, such as subscription IDs, locations, and resource names.
- **app_server.tf** and **db_server.tf**: Define the VM configurations for the application and database servers, including network and security settings.
- **nsg.tf**: Sets up the Network Security Group (NSG) with secure inbound and outbound rules.
- **bastion.tf**: Configures Azure Bastion for secure VM access without exposing ports to the public.
- **storage_account.tf**: Creates a secure storage account and configures network rules for restricted access.
- **monitor.tf**: Defines monitoring and alerting configurations, including VM creation alerts.
- **keyvault.tf**: Sets up Key Vault for secure storage of sensitive information like secrets and keys.

### Infrastructure Architecture
- **Secured Resources**: Every resource in the project is secured to ensure restricted access and reduced vulnerabilities.
- **Access through Bastion**: Azure Bastion provides secure access to VMs without exposing SSH or RDP ports publicly.
- **Continuous Monitoring**: The monitoring configuration includes alerting on critical events, like VM creation, to prevent unauthorized access.

## Key Features

- **Secure Virtual Machines**: Configured with SSH key access only and running in both public and private subnets.
- **Network Security**: NSG rules to allow HTTPS traffic and restrict SSH access to a specific IP range.
- **Azure Bastion**: Enables secure RDP/SSH access to VMs without opening public IP ports.
- **Storage Security**: Storage account configured to allow only HTTPS traffic, with public access disabled.
- **Monitoring & Alerts**: Log Analytics workspace setup with diagnostic settings, alerts for VM creations, and an action group to notify the security team.
- **Key Vault**: Stores sensitive data, such as database credentials, with access policies for designated users only.

## Getting Started

### Prerequisites
- **Azure CLI**: Make sure to have Azure CLI installed and configured.
- **Terraform**: Install Terraform to apply the infrastructure code.
- **Azure Subscription**: A valid Azure subscription to deploy the resources.

### Instructions
1. **Clone the repository**:
   ```bash
   git clone https://github.com/GGBoi666/GiladTerraformProj.git
