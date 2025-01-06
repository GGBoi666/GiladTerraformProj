# Azure Infrastructure with Terraform

## Project Overview
This project implements a secure and scalable infrastructure on Azure using Terraform. It provides a complete setup including virtual machines, networking components, monitoring systems, and security controls.

## Key Features
- **Secure Network Architecture**: Virtual Network with properly segmented subnets
- **Compute Resources**: Application and Database servers with security configurations
- **Security Controls**: Network Security Groups, Azure Bastion, and Key Vault integration
- **Monitoring & Logging**: Azure Monitor integration with custom alerts
- **Storage Solutions**: Secure storage accounts with proper access controls
- **Infrastructure as Code**: Complete Terraform configuration for reproducible deployments

## Prerequisites
- [Terraform](https://www.terraform.io/downloads.html) (v1.0.0 or newer)
- Azure CLI
- An active Azure subscription
- Git (for version control)

## Quick Start
1. Clone the repository:
   ```bash
   git clone https://github.com/GGBoi666/GiladTerraformProj.git
   cd GiladTerraformProj
   ```

2. Navigate to the terraform directory:
   ```bash
   cd infra/terraform
   ```

3. Initialize Terraform:
   ```bash
   terraform init
   ```

4. Review and apply the configuration:
   ```bash
   terraform plan
   terraform apply
   ```

## Project Structure
```
infra/terraform/
├── main.tf           # Core configuration and provider settings
├── variables.tf      # Input variables
├── app_server.tf     # Application server configuration
├── db_server.tf      # Database server configuration
├── bastion.tf        # Azure Bastion configuration
├── nsg.tf           # Network Security Group rules
├── keyvault.tf      # Key Vault setup
├── monitor.tf       # Monitoring and alerting
└── storage.tf       # Storage account configuration
```

## Security Features
- Azure Bastion for secure VM access
- Network Security Groups with strict rules
- Key Vault for secret management
- Storage accounts with network rules
- Monitoring alerts for security events

## Contributing
Contributions are welcome! Please feel free to submit a Pull Request.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support
If you have any questions or need assistance, please open an issue in the GitHub repository.
