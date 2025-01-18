resource "azurerm_storage_account" "st" {
  name                     = "${var.storage_account_name_prefix}${var.storage_account_name}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type

  tags = {
    environment = var.environment
  }

  network_rules {
    default_action             = "Deny"
    ip_rules                   = ["100.0.0.1"]
    virtual_network_subnet_ids = [azurerm_subnet.vmsub.id]
  }
  
}

resource "azurerm_storage_container" "asc" {
  name                 = "example-container"
  storage_account_id   = azurerm_storage_account.st.id
}

