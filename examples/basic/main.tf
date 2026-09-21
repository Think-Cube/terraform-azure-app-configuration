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