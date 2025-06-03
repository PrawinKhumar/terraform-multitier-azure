output "sql_fully_qualified_domain_name" {
  description = "FQDN of the Azure SQL Server"
  value       = azurerm_sql_server.sql.fully_qualified_domain_name
}
