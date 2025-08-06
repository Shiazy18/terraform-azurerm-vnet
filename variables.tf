variable "resource_group_name" {
    type = string
    description = "Name of existing resource group (if rg_purpose is empty)"
    default = ""
}

variable "location" {
    type = string
    description = "location for your resource" 
    validation {
    condition     = contains(["East US", "West US", "Central US"], var.location)
    error_message = "Location must be one of the following: 'East US', 'West US', 'Central US'."
  }
}

variable "rg_purpose" {
    type = string
    description = "Purpose for the resource group. Leave empty to use an existing RG."
    default = ""
  
}

variable "vnet_purpose" {
    type = string
    description = "Vnet Purpose"
    default = ""
}

variable "virtual_network_name" {
    type = string
    description = "Vnet Purpose"
    default = ""
}

variable "address_space" {
  type = string
  description = "address space for vnet"
}