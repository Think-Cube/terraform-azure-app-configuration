module "app_configuration" {
  source                                       = "./terraform-azure-app-configuration"
  environment                                  = "dev"
  region                                       = "westeurope"
  resource_group_name                          = "rg-example"
  app_configuration_name                       = "myapp"
  app_configuration_sku                        = "Standard"
  app_configuration_local_auth_enabled         = true
  app_configuration_public_network_access      = true
  app_configuration_purge_protection_enabled   = false
  app_configuration_soft_delete_retention_days = 7
  create_identity                              = true
  identity_type                                = "SystemAssigned"

  default_tags = {
    environment = "dev"
    project     = "example"
  }
}
