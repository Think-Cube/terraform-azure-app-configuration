# Example: Basic — Azure App Configuration

Provisions an Azure App Configuration store for centralized application settings. Minimal example using required inputs only.

## Usage

```hcl
module "app_configuration" {
  source = "../.."

  name                = "appconfig-dev-example"
  resource_group_name = "rg-example"
  location            = "West Europe"
  sku                 = "standard"

  tags = {
    environment = "dev"
    managed_by  = "terraform"
  }
}
```