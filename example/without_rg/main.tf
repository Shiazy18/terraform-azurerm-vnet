module "vnet" {
  source               = "../.."
  resource_group_name  = "az104-rg5"
  location             = "East US"
  address_space        = ["10.0.0.6/24"]
  virtual_network_name = "CoreServicesVnet"
}