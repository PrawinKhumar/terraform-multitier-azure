output "vnet_id" {
  value = module.network.vnet_id
}

output "subnet_id" {
  value = module.network.subnet_id
}

output "vm_id" {
  value = module.app.vm_id
}

output "sql_fqdn" {
  value = module.db.sql_fully_qualified_domain_name
}
