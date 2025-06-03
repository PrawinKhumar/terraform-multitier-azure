provider "azurerm" {
  features {}
}

# Create (or re‐create) the resource group in eastus2
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group
  location = var.location
}

module "network" {
  source         = "../../modules/network"
  resource_group = azurerm_resource_group.rg.name
  location       = azurerm_resource_group.rg.location
  address_space  = var.address_space
  subnet_prefix  = var.subnet_prefix
}

module "app" {
  source         = "../../modules/app"
  resource_group = azurerm_resource_group.rg.name
  location       = azurerm_resource_group.rg.location
  admin_user     = var.admin_user
  admin_password = var.admin_password
  subnet_id      = module.network.subnet_id
}

module "db" {
  source             = "../../modules/db"
  resource_group     = azurerm_resource_group.rg.name
  location           = azurerm_resource_group.rg.location
  sql_admin_user     = var.sql_admin_user
  sql_admin_password = var.sql_admin_password
}
