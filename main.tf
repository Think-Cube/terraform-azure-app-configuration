resource "azurerm_app_configuration" "main" {
  name                       = var.name
  resource_group_name        = var.resource_group_name
  location                   = var.location
  sku                        = var.sku
  local_auth_enabled         = var.local_auth_enabled
  public_network_access      = var.public_network_access
  purge_protection_enabled   = var.purge_protection_enabled
  soft_delete_retention_days = var.soft_delete_retention_days
  tags                       = var.tags

  dynamic "identity" {
    for_each = var.identity != null ? [var.identity] : []
    content {
      type         = identity.value.type
      identity_ids = try(identity.value.identity_ids, null)
    }
  }

  dynamic "encryption" {
    for_each = var.encryption != null ? [var.encryption] : []
    content {
      key_vault_key_identifier = encryption.value.key_vault_key_identifier
      identity_client_id       = encryption.value.identity_client_id
    }
  }

  dynamic "replica" {
    for_each = var.replicas
    content {
      name     = replica.value.name
      location = replica.value.location
    }
  }
}
