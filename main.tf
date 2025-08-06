resource "azurerm_resource_group" "rg" {
  count = var.rg_purpose == "" ? 1:0  
  name     = "${var.resource_group_name}-${var.location}-${var.rg_purpose}rg"
  location = var.location
}

resource "azurerm_virtual_network" "my_terraform_network" {
  name                = "${var.vnet_purpose}-${var.location}-vnet"
  address_space       = [var.address_space]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}
