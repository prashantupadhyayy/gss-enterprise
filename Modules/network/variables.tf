variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "address_space" {
  description = "Address space for VNet"
  type        = list(string)
}

variable "subnet_name" {
  description = "Name of the Subnet"
  type        = string
}

variable "subnet_prefix" {
  description = "Address prefix for the Subnet"
  type        = list(string)
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group where VNet and Subnet will exist"
  type        = string
}
