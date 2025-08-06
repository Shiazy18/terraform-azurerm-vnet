resource "azurerm_resource_group" "rg" {
  count = var.rg_purpose == "" ? 0:1  
  name     = "${var.resource_group_name}-${var.location}-${var.rg_purpose}-rg"
  location = var.location
}

resource "azurerm_virtual_network" "my_terraform_network" {
  name                = local.vnet_name
  address_space       = [var.address_space]
  location            = azurerm_resource_group.rg.location
  resource_group_name = local.rg_name
}
