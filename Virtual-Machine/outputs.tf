output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "virtual_machine_name" {
  value = azurerm_storage_account.st.name
}

output "virtual_network_name" {
  value = azurerm_virtual_network.avn.name
}

output "subnet_name" {
  value = azurerm_subnet.vmsub.name
}