resource "azurerm_resource_group" "rg" {
  count    = var.rg_purpose == "" ? 0 : 1
  name     = "${var.rg_purpose}-${local.rg_location}-${var.environment}-rg"
  location = var.location
  tags     = local.tags
}

resource "azurerm_virtual_network" "my_terraform_network" {
  name                = local.vnet_name
  address_space       = var.address_space
  location            = azurerm_resource_group.rg[0].location
  resource_group_name = local.rg_name
  #tags = local.tags
}
