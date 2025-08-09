module "vnet" {
  # source        = "Shiazy18/vnet/azurerm"
  source = "../.."
  rg_purpose    = "vnet"
  location      = "East US"
  address_space = ["10.0.1.0/24"]
  vnet_purpose  = "app"
  environment = "test"
}