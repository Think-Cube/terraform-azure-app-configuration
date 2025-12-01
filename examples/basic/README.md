# Terraform Azure App Configuration Module

This module provisions an **Azure App Configuration** instance using Terraform.

## Description

The module creates an Azure App Configuration resource with flexible options for authentication, network access, and soft delete.  
It automatically names the resource using the following pattern: `<environment>-<app_configuration_name>-<region>-appcnf`

This ensures consistent and predictable resource naming across environments.

## Features

- Supports **Standard** and **Premium** SKUs  
- Optionally creates a **managed identity** for secure access  
- Configurable **local authentication** and **public network access**  
- Enables **soft delete** with retention settings  
- Optional **purge protection** to prevent accidental deletion  
- Automatically applies **tags** for resource tracking  

## Typical Use Cases

- Centralized configuration storage for applications  
- Feature flag management and dynamic application settings  
- Secure environment configuration with managed identities  
- Shared configuration across multiple environments  

## Notes

- The module requires an existing **Azure Resource Group**.  
- Soft delete and purge protection are recommended for production environments.  
- Naming convention ensures consistent identification across different environments and regions.

```
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

```