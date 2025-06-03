resource "azurerm_network_interface" "app_nic" {
  name                = "${var.resource_group}-nic"
  location            = var.location
  resource_group_name = var.resource_group

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "appvm" {
  name                = "${var.resource_group}-vm"
  resource_group_name = var.resource_group
  location            = var.location
  size                = "Standard_B1s"           # Free-tier: 750h/mo for 12 months
  admin_username      = var.admin_user
  admin_password      = var.admin_password
  disable_password_authentication = false
  
network_interface_ids = [
    azurerm_network_interface.app_nic.id
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}
