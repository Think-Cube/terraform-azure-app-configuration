# Terraform Module — Azure App Configuration

Provisions an `azurerm_app_configuration` store with configurable SKU, replicas, encryption, and managed identity.

## Usage

```hcl
module "app_configuration" {
  source = "github.com/Think-Cube/terraform-azure-app-configuration?ref=v1.0.0"

  name                = "my-appconfig"
  resource_group_name = "my-rg"
  location            = "West Europe"
  sku                 = "standard"

  local_auth_enabled       = true
  purge_protection_enabled = false

  tags = {
    environment = "dev"
    managed_by  = "terraform"
  }
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_app_configuration.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/app_configuration) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_encryption"></a> [encryption](#input\_encryption) | Encryption configuration block for the App Configuration resource. | <pre>object({<br>    key_vault_key_identifier = string<br>    identity_client_id       = string<br>  })</pre> | `null` | no |
| <a name="input_identity"></a> [identity](#input\_identity) | Identity configuration block for the App Configuration resource. | <pre>object({<br>    type         = string<br>    identity_ids = optional(list(string))<br>  })</pre> | `null` | no |
| <a name="input_local_auth_enabled"></a> [local\_auth\_enabled](#input\_local\_auth\_enabled) | Whether local authentication methods are enabled for the App Configuration. Defaults to true. | `bool` | `true` | no |
| <a name="input_location"></a> [location](#input\_location) | The Azure region where the App Configuration resource will be created. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the Azure App Configuration resource. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_public_network_access"></a> [public\_network\_access](#input\_public\_network\_access) | The Public Network Access setting for the App Configuration. Possible values are 'Enabled' and 'Disabled'. | `string` | `null` | no |
| <a name="input_purge_protection_enabled"></a> [purge\_protection\_enabled](#input\_purge\_protection\_enabled) | Whether Purge Protection is enabled for the App Configuration. Only works for standard SKU. Defaults to false. | `bool` | `false` | no |
| <a name="input_replicas"></a> [replicas](#input\_replicas) | A list of replica configurations for the App Configuration resource. | <pre>list(object({<br>    name     = string<br>    location = string<br>  }))</pre> | `[]` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the App Configuration resource. | `string` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | The SKU for the App Configuration resource. Possible values are 'free', 'standard', and 'premium'. | `string` | `"free"` | no |
| <a name="input_soft_delete_retention_days"></a> [soft\_delete\_retention\_days](#input\_soft\_delete\_retention\_days) | The number of days to retain soft-deleted items. For free SKU: 1-7 days. For standard SKU: 1-90 days. Changing this forces a new resource to be created. | `number` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to assign to resources. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | The URL endpoint for accessing the Azure App Configuration instance. |
| <a name="output_id"></a> [id](#output\_id) | The unique identifier for the Azure App Configuration instance. |
| <a name="output_identity"></a> [identity](#output\_identity) | The identity block containing the managed identity details associated with the App Configuration instance. |
| <a name="output_primary_read_key"></a> [primary\_read\_key](#output\_primary\_read\_key) | The primary read access key list for the Azure App Configuration instance. |
| <a name="output_primary_write_key"></a> [primary\_write\_key](#output\_primary\_write\_key) | The primary write access key list for the Azure App Configuration instance. |
| <a name="output_secondary_read_key"></a> [secondary\_read\_key](#output\_secondary\_read\_key) | The secondary read access key list for the Azure App Configuration instance. |
| <a name="output_secondary_write_key"></a> [secondary\_write\_key](#output\_secondary\_write\_key) | The secondary write access key list for the Azure App Configuration instance. |
<!-- END_TF_DOCS -->