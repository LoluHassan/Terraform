resource "azurerm_windows_virtual_machine" "vmwin" {
  name                = "${var.virtual_machine_name_prefix}-${var.virtual_machine_name}-windows"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password      = "P@$$w0rd1234!"
  network_interface_ids = [
    azurerm_network_interface.vnetnicwin.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    disk_size_gb         = var.os_disk_size_gb
  }

  tags = {
    environment = var.environment
    managedby   = var.resourcetags["managedby"]
    department  = var.resourcetags["department"]
    workloads   = var.resourcetags["workloads"]
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }

  enable_automatic_updates = var.auto_update

}