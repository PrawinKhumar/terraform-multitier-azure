variable "resource_group" {
  description = "Resource group in which to create the VNet"
  type        = string
}

variable "location" {
  description = "Azure region for the VNet"
  type        = string
}

variable "address_space" {
  description = "CIDR block for the VNet"
  type        = string
}

variable "subnet_prefix" {
  description = "CIDR block for the subnet"
  type        = string
}
