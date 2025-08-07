module vnet {
    source = "../.."
    rg_purpose = "vnet"
    location = "eastus"
    address_space = ["10.0.1.0/24"]   
    vnet_purpose = "app"
}