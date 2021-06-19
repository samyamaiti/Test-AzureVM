terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  resource_group_name = var.rg_name
  location            = var.location
  address_space       = ["10.0.0.0/16"]
}