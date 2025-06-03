resource "azurerm_virtual_network" "vnet" {
  name                = "${var.resource_group}-vnet"
  resource_group_name = var.resource_group
  location            = var.location
  address_space       = [var.address_space]
}

resource "azurerm_subnet" "subnet" {
  name                 = "${var.resource_group}-subnet"
  resource_group_name  = var.resource_group
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.subnet_prefix]
}
