resource "azurerm_sql_server" "sql" {
  name                         = "${var.resource_group}-sql"
  resource_group_name          = var.resource_group
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.sql_admin_user
  administrator_login_password = var.sql_admin_password
}

resource "azurerm_sql_database" "sqldb" {
  name                = "${var.resource_group}-db"
  resource_group_name = var.resource_group
  location            = var.location
  server_name         = azurerm_sql_server.sql.name

  requested_service_objective_name = "S0"      # v2.x syntax for S0 tier
  max_size_bytes                   = 10737418240  # 10 GB (optional, keeps you under the 250 GB free limit)
}
