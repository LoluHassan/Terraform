resource "azurerm_linux_virtual_machine" "vmlin" {
  name                = "${var.virtual_machine_name_prefix}-${var.virtual_machine_name}-linux"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  network_interface_ids = [
    azurerm_network_interface.vnetniclin.id,
  ]

  admin_ssh_key {
    username   = "adminuser"
    public_key = file("~/.ssh/id_rsa.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    disk_size_gb         = var.os_disk_size_gb
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

  tags = {
    environment = var.resourcetags["environment"]
    managedby   = var.resourcetags["managedby"]
    department  = var.resourcetags["department"]
    workloads   = var.resourcetags["workloads"]
  }
}