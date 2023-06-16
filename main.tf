terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.92.0"
    }
  }
}


provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "minecraft_server" {
    name="test"
    location="West Europe"
}

