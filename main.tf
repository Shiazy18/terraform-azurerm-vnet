resource "azurerm_resource_group" "rg" {
  name     = "${var.resource_group_name}-${var.location}rg"
  location = var.location
}

resource "azurerm_virtual_network" "my_terraform_network" {
  name                = "${var.vnet_purpose}-${var.location}vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}
