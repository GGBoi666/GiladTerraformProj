terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
    tls = {
      source = "hashicorp/tls"
      version = "~>4.0"
    }
  }
}

provider "azurerm" {
  features {

  }

  #client_id       = "<YOUR_SERVICE_PRINCIPAL_CLIENT_ID>"
  #client_secret   = "<YOUR_SERVICE_PRINCIPAL_CLIENT_SECRET>"
  #tenant_id       = "<YOUR_TENANT_ID>"
  #subscription_id = "<YOUR_SUBSCRIPTION_ID>"
  # az ad sp create-for-rbac --name "<YOUR_SERVICE_PRINCIPAL_NAME>" --role Contributor --scopes /subscriptions/<YOUR_SUBSCRIPTION_ID>
  # reponse:
  #{
  #  "appId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
  #  "displayName": "<YOUR_SERVICE_PRINCIPAL_NAME>",
  #  "password": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
  #  "tenant": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
  # }
  # 
  # client_id       = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"  # Replace with your appId
  # client_secret   = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"  # Replace with your password
  # tenant_id       = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"  # Replace with your tenant
  # subscription_id = "<YOUR_SUBSCRIPTION_ID>"  # Replace with your subscription ID

}
