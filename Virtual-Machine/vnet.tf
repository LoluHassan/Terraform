resource "azurerm_virtual_network" "vnet" {
  name                = "${var.vnet_name_prefix}-${var.virtual_machine_name}-${var.vnet_name}"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  tags = {
    environment = var.environment
  }
}

resource "azurerm_subnet" "vnetsubwin" {
  name                 = "${var.vnet_name_prefix}-${var.virtual_machine_name}-${var.vnet_name}-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.2.0/24"]
  service_endpoints    = ["Microsoft.Sql", "Microsoft.Storage"]
}

resource "azurerm_subnet" "vnetsublin" {
  name                 = "${var.vnet_name_prefix}-${var.virtual_machine_name}-${var.vnet_name}-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.3.0/24"]
  service_endpoints    = ["Microsoft.Sql", "Microsoft.Storage"]
}

resource "azurerm_network_interface" "vnetnicwin" {
  name                = "${var.vnet_name_prefix}-${var.virtual_machine_name}-${var.vnet_name}-nic"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.vnetsubwin.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_network_interface" "vnetniclin" {
  name                = "${var.vnet_name_prefix}-${var.virtual_machine_name}-${var.vnet_name}-nic"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.vnetsublin.id
    private_ip_address_allocation = "Dynamic"
  }
}