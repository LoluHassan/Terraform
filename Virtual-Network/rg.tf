resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = "${var.resource_group_name_prefix}-${var.resource_group_name}"

  tags = {
    environment = var.environment
  }    
}