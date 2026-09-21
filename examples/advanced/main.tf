module "app_configuration" {
  source = "../.."

  name                       = "appconfig-prod-example"
  resource_group_name        = "rg-example"
  location                   = "West Europe"
  sku                        = "standard"
  local_auth_enabled         = false
  public_network_access      = "Disabled"
  purge_protection_enabled   = true
  soft_delete_retention_days = 30

  identity = {
    type = "SystemAssigned"
  }

  replicas = [
    {
      name     = "replica-ne"
      location = "North Europe"
    }
  ]

  tags = {
    environment = "prod"
    managed_by  = "terraform"
  }
}