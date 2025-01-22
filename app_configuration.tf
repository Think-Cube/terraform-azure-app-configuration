resource "azurerm_app_configuration" "main" {
  name                       = "${var.environment}-${var.app_configuration_name}-${var.region}-appcnf"
  resource_group_name        = data.azurerm_resource_group.rg.name
  location                   = data.azurerm_resource_group.rg.location
  sku                        = var.app_configuration_sku
  local_auth_enabled         = var.app_configuration_local_auth_enabled
  public_network_access      = var.app_configuration_public_network_access
  purge_protection_enabled   = var.app_configuration_purge_protection_enabled
  soft_delete_retention_days = var.app_configuration_soft_delete_retention_days
  tags                       = var.default_tags

  dynamic "identity" {
    for_each = var.create_identity ? [1] : []
    content {
      type = var.identity_type
    }
  }  
}
