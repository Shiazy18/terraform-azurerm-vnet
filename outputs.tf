# output "resource_group_name" {
#   description = "The name of the created resource group."
#   value       = azurerm_resource_group.rg[0].name
# }

output "virtual_network_name" {
  description = "The name of the created virtual network."
  value       = azurerm_virtual_network.my_terraform_network.name
}
