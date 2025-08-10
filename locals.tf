locals {
  tags = {
    environment = var.environment
    location    = var.location
  }
  rg_name   = var.rg_purpose != "" ? azurerm_resource_group.rg[0].name : var.resource_group_name
  vnet_name = var.virtual_network_name == "" ? "${var.vnet_purpose}-${local.rg_location}-${var.environment}-vnet" : var.virtual_network_name

  location_map = {
    "East US"    = "eastus"
    "West US"    = "westus"
    "Central US" = "centralus"
  }

  rg_location = local.location_map[var.location]
  
}