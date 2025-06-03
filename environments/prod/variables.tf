variable "location" {
  default = "eastus2"
}

variable "resource_group" {
  default = "prod-rg"
}

variable "environment" {
  default = "prod"
}

variable "admin_user" {
  default = "azureuser"
}

variable "admin_password" {
  default = "P@ssw0rdVM!"
}

variable "sql_admin_user" {
  default = "sqladminuser"
}

variable "sql_admin_password" {
  default = "P@ssw0rdSQL!"
}

variable "address_space" {
  default = "10.0.0.0/16"
}

variable "subnet_prefix" {
  default = "10.0.1.0/24"
}
