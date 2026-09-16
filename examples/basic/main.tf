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