provider "azurerm" {
    version="=2.5.0"
    features {}
}

resource "azurerm_resource_group" "minecraft_server" {
    name="test"
    location="West Europe"
}


