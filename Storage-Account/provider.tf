terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version =  "~> 4.16.0"
    }
  }
  required_version = ">= 1.10.4"

  backend "azurerm" {
    resource_group_name   = "iac-states-rg"
    storage_account_name  = "infraiacstates"
    container_name        = "remotestate"
    key                   = "storageacc.tfstate"
  } 
}

provider "azurerm" {
    features {
   }
}