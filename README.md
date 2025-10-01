## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.3 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 4.46.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.46.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_app_configuration.main](https://registry.terraform.io/providers/hashicorp/azurerm/4.46.0/docs/resources/app_configuration) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/4.46.0/docs/data-sources/client_config) | data source |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/4.46.0/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_configuration_local_auth_enabled"></a> [app\_configuration\_local\_auth\_enabled](#input\_app\_configuration\_local\_auth\_enabled) | Whether local authentication methods are enabled for the App Configuration. Defaults to true. | `bool` | `true` | no |
| <a name="input_app_configuration_name"></a> [app\_configuration\_name](#input\_app\_configuration\_name) | The name of the Azure App Configuration resource. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_app_configuration_public_network_access"></a> [app\_configuration\_public\_network\_access](#input\_app\_configuration\_public\_network\_access) | The Public Network Access setting for the App Configuration. Possible values are 'Enabled' and 'Disabled'. | `string` | `"Enabled"` | no |
| <a name="input_app_configuration_purge_protection_enabled"></a> [app\_configuration\_purge\_protection\_enabled](#input\_app\_configuration\_purge\_protection\_enabled) | Whether Purge Protection is enabled for the App Configuration. This only works for the standard SKU. Defaults to false. | `string` | `"false"` | no |
| <a name="input_app_configuration_sku"></a> [app\_configuration\_sku](#input\_app\_configuration\_sku) | The SKU for the App Configuration resource. Possible values are 'free' and 'standard'. | `string` | `"standard"` | no |
| <a name="input_app_configuration_soft_delete_retention_days"></a> [app\_configuration\_soft\_delete\_retention\_days](#input\_app\_configuration\_soft\_delete\_retention\_days) | The number of days to retain soft-deleted items. Only works for the standard SKU, and can be between 1 and 7 days. Defaults to 7 days. Changing this forces a new resource to be created. | `number` | `7` | no |
| <a name="input_create_identity"></a> [create\_identity](#input\_create\_identity) | Boolean flag to determine if a managed identity should be created for the App Configuration. | `bool` | `false` | no |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | A mapping of tags to assign to the resource, useful for categorizing and managing resources. | `map(any)` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | The environment identifier used for naming the backend container (e.g., dev, prod). | `string` | `"dev"` | no |
| <a name="input_identity_type"></a> [identity\_type](#input\_identity\_type) | The type of managed identity to assign. Possible values are 'SystemAssigned' and 'UserAssigned'. | `string` | `"SystemAssigned"` | no |
| <a name="input_region"></a> [region](#input\_region) | The Azure region in which the App Configuration resource is deployed. | `string` | `"weu"` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | The location/region where the App Configuration resource group is created. Changing this forces a new resource to be created. | `string` | `"West Europe"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the App Configuration resource. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | The URL endpoint for accessing the Azure App Configuration instance. |
| <a name="output_id"></a> [id](#output\_id) | The unique identifier for the Azure App Configuration instance. |
| <a name="output_identity"></a> [identity](#output\_identity) | The identity block containing the managed identity details associated with the Azure App Configuration instance. |
| <a name="output_primary_read_key"></a> [primary\_read\_key](#output\_primary\_read\_key) | The primary read access key for the Azure App Configuration instance, which allows reading configuration data. |
| <a name="output_primary_write_key"></a> [primary\_write\_key](#output\_primary\_write\_key) | The primary write access key for the Azure App Configuration instance, which allows writing configuration data. |
| <a name="output_secondary_read_key"></a> [secondary\_read\_key](#output\_secondary\_read\_key) | The secondary read access key for the Azure App Configuration instance, which can be used to read configuration data. |
| <a name="output_secondary_write_key"></a> [secondary\_write\_key](#output\_secondary\_write\_key) | The secondary write access key for the Azure App Configuration instance, which can be used to write configuration data. |
