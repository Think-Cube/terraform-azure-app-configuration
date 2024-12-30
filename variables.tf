variable "environment" {
  description = "The environment identifier used for naming the backend container (e.g., dev, prod)."
  type        = string
  default     = "dev"
}

variable "default_tags" {
  description = "A mapping of tags to assign to the resource, useful for categorizing and managing resources."
  type        = map(any)
}

variable "region" {
  description = "The Azure region in which the App Configuration resource is deployed."
  type        = string
  default     = "weu"
}

variable "resource_group_location" {
  description = "The location/region where the App Configuration resource group is created. Changing this forces a new resource to be created."
  default     = "West Europe"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the App Configuration resource."
  type        = string
}

variable "app_configuration_name" {
  description = "The name of the Azure App Configuration resource. Changing this forces a new resource to be created."
  type        = string
}

variable "app_configuration_sku" {
  description = "The SKU for the App Configuration resource. Possible values are 'free' and 'standard'."
  type        = string
  default     = "standard"
}

variable "app_configuration_local_auth_enabled" {
  description = "Whether local authentication methods are enabled for the App Configuration. Defaults to true."
  type        = bool
  default     = true
}

variable "app_configuration_public_network_access" {
  description = "The Public Network Access setting for the App Configuration. Possible values are 'Enabled' and 'Disabled'."
  type        = string
  default     = "Enabled"
}

variable "app_configuration_purge_protection_enabled" {
  description = "Whether Purge Protection is enabled for the App Configuration. This only works for the standard SKU. Defaults to false."
  type        = string
  default     = "false"
}

variable "app_configuration_soft_delete_retention_days" {
  description = "The number of days to retain soft-deleted items. Only works for the standard SKU, and can be between 1 and 7 days. Defaults to 7 days. Changing this forces a new resource to be created."
  type        = number
  default     = 7
}

variable "create_identity" {
  description = "Boolean flag to determine if a managed identity should be created for the App Configuration."
  type        = bool
  default     = false
}

variable "identity_type" {
  description = "The type of managed identity to assign. Possible values are 'SystemAssigned' and 'UserAssigned'."
  type        = string
  default     = "SystemAssigned"
  validation {
    condition = contains(["SystemAssigned", "UserAssigned"], var.identity_type)
    error_message = "The identity_type variable must be one of 'SystemAssigned' or 'UserAssigned'."
  }
}
