terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.92.0"
    }
  }
}

variable "CLIENT_ID" {
  type=string
}

variable "CLIENT_SECRET" {
  type=string
}

variable "TENANT_ID" {
  type=string
}

variable "SUBSCRIPTION_ID" {
  type=string
}

provider "azurerm" {
    subscription_id = var.SUBSCRIPTION_ID
    client_id       = var.CLIENT_ID
    client_secret   = var.CLIENT_SECRET
    tenant_id       = var.TENANT_ID
    features {}
}

resource "azurerm_resource_group" "minecraft_server" {
    name="test"
    location="West Europe"
}

