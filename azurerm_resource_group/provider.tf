terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.77.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "9d42e269-3739-4811-a09c-a7fe1e4e9c7a"
}