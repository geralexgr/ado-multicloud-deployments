terraform {
  required_version = "1.6.3"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.79.0"
    }
  }
}

provider "azurerm" {
   features {}
}