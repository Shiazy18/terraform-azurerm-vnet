resource "azurerm_resource_group" "rg" {
  count    = var.rg_purpose == "" ? 0 : 1
  name     = "${var.rg_purpose}-${local.rg_location}-${var.environment}-rg"
  location = var.location
  tags     = local.tags
}

#you can create mutiple Vnets from the same as shown in the example by using for_each and looping it out
#we can add count also here for multiple subnet creation, but it will make the module complex for using
#So for the same reason given the ease at user end level 
resource "azurerm_virtual_network" "my_terraform_network" {
  name                = local.vnet_name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = local.rg_name
  #tags = local.tags
}

resource "azurerm_virtual_network_peering" "peering" {
  for_each = var.needed_peering ? {
    for p in var.vnet_peering : "${p.source}-${p.destination}" => p
  } : {}
  name                      = "peering-${each.value.source}-to-${each.value.destination}"
  resource_group_name       = azurerm_virtual_network.my_terraform_network[each.value.source].resource_group_name
  virtual_network_name      = azurerm_virtual_network.my_terraform_network[each.value.source].virtual_network_name
  remote_virtual_network_id = "still-building-logic"
}