variable "location" {
  default = "eastus2"
}

variable "resource_group" {
  default = "test-rg"
}

variable "environment" {
  default = "test"
}

variable "admin_user" {
  default = "azureuser"
}

variable "admin_password" {
  default = "TestP@ssw0rdVM!"
}

variable "sql_admin_user" {
  default = "sqladminuser"
}

variable "sql_admin_password" {
  default = "TestP@ssw0rdSQL!"
}

variable "address_space" {
  default = "10.1.0.0/16"
}

variable "subnet_prefix" {
  default = "10.1.1.0/24"
}
