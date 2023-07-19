terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
  # Azure State
  backend "azurerm" {
    storage_account_name = "TERRAFORM_STORAGE"
    container_name       = "example"
    key                  = "key_name"
    access_key           = "ACCESS_KEY_NAME&"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "SUB_ID"
  client_id       = "AZURE_CLIENT_ID"
  client_secret   = "AZURE_CLIENT_SECRET"
  tenant_id       = "AZURE_TENANT_ID"
}
