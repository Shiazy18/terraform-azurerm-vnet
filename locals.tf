locals {
  rg_name   = var.rg_purpose == "" ? azurerm_resource_group.rg.name : var.resource_group_name
  vnet_name = var.virtual_network_name == "" ? "${var.vnet_purpose}-${var.location}-vnet" : var.virtual_network_name
}