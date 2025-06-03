variable "resource_group" {
  description = "Resource group for SQL Server"
  type        = string
}

variable "location" {
  description = "Azure region for SQL Server"
  type        = string
}

variable "sql_admin_user" {
  description = "Admin username for SQL Server"
  type        = string
}

variable "sql_admin_password" {
  description = "Admin password for SQL Server"
  type        = string
  sensitive   = true
}
