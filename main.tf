terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-module-demo"
  location = "westeurope"
}

module "hub_vnet" {
  source = "./modules/vnet"
  
  vnet_name = "vnet-hub"
  location = azurerm_resource_group.rg.location
  resource_group_name =  azurerm_resource_group.rg.name
  address_space = [ "10.0.0.0/16" ]
}