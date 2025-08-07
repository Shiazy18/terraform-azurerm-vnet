module "vnet" {
  source              = "../.."
  resource_group_name = "demo-vnet"
  location            = "eastus"
  address_space       = ["10.0.0.6/24"]
  vnet_purpose        = "app"
}