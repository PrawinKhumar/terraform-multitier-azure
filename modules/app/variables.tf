variable "resource_group" {
  description = "Resource group for the VM"
  type        = string
}

variable "location" {
  description = "Azure region for the VM"
  type        = string
}

variable "admin_user" {
  description = "Admin username for the VM"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the VM"
  type        = string
  sensitive   = true
}

variable "subnet_id" {
  description = "ID of the subnet where VM NIC should attach"
  type        = string
}
