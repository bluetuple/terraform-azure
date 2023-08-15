# configuration of azure provider
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      # version = "~>3.6.0"
    }
  }
  required_version = ">= 1.5.0"

  backend "azurerm" {
    resource_group_name  = "<your-resourcegroup-name>"
    storage_account_name = "<your-unique-storage-account>"
    container_name       = "terraformstate"
    key                  = "terraform/sbx/state"
  }


}



provider "azurerm" {
  features {}
}

