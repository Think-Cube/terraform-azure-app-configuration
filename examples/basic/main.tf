module "app_configuration" {
  source = "github.com/Think-Cube/terraform-azure-app-configuration?ref=v1.0.0"

  name                = "appconfig-dev-example"
  resource_group_name = "rg-example"
  location            = "West Europe"
  sku                 = "standard"

  tags = {
    environment = "dev"
    managed_by  = "terraform"
  }
}