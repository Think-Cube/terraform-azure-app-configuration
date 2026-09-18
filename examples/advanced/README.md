# Example: Advanced

Full-featured example for `terraform-azure-app-configuration`.

```hcl
module "app_configuration" {
  source = "github.com/Think-Cube/terraform-azure-app-configuration?ref=v1.0.0"

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
}```` 

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 5.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_app_configuration"></a> [app\_configuration](#module\_app\_configuration) | github.com/Think-Cube/terraform-azure-app-configuration | v1.0.0 |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->