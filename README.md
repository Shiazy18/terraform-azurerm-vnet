# terraform-azurerm-vnet

Basic Terraform module to create an Azure Virtual Network. 

You can create vnet and resource group also where the vnet will be deployed.
Suppose if oyu already have the resource group you can provide the name of it.

- Check [Examples](./example) for more details

## How to use

you can find the module here: <https://registry.terraform.io/modules/Shiazy18/vnet/azurerm/latest>

Suppose you already have the rg created in azure and want only vnet use the before code

```tf
module "vnet" {
  source               = "Shiazy18/vnet/azurerm"
  resource_group_name  = "az104-rg5"
  location             = "East US"
  address_space        = ["10.0.0.6/24"]
  virtual_network_name = "CoreServicesVnet"
}
```

and if you want to create the rg too, check below example:

```tf
module "vnet" {
  source        = "Shiazy18/vnet/azurerm"
  version       = "1.0.1"
  rg_purpose    = "vnet"
  location      = "East US"
  address_space = ["10.0.1.0/24"]
  vnet_purpose  = "app"
  environment   = "test"
}
```

make sure you have provider already defined

```terraform
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
}
```

Raise issue for more information
