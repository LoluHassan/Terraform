resource "azurerm_virtual_network" "vnet" {
  name                = "${var.vnet_name_prefix}-${var.vnet_name}"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  tags = {
    environment = var.environment
  }
}

resource "azurerm_subnet" "vnetsub" {
  name                 = "subnetname"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.2.0/24"]
  service_endpoints    = ["Microsoft.Sql", "Microsoft.Storage"]
}