variable "resource_group_name" {
    type = string
    description = "Purpose of Resource Group name"
}

variable "location" {
    type = string
    description = "location for your resource" 
    validation {
    condition     = contains(["East US", "West US", "Central US"], var.location)
    error_message = "Location must be one of the following: 'East US', 'West US', 'Central US'."
  }
}

variable "vnet_purpose" {
    type = string
    description = "Vnet Purpose"
  
}

variable "address_space" {
  type = string
  description = "address space for vnet"
}