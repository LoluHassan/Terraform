output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "linux_virtual_machine_name" {
  value = azurerm_linux_virtual_machine.vmlin.name
}

output "windows_virtual_machine_name" {
  value = azurerm_windows_virtual_machine.vmwin.name
}

output "virtual_network_name" {
  value = azurerm_virtual_network.vnet.name
}

output "windows_subnet_name" {
  value = azurerm_subnet.vnetsubwin.name
}

output "linux_subnet_name" {
  value = azurerm_subnet.vnetsublin.name
}

output "windows_network_interface_name" {
  value = azurerm_network_interface.vnetnicwin.name
}

output "linux_network_interface_name" {
  value = azurerm_network_interface.vnetniclin.name
}