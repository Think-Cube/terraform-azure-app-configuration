###########################
# Common vars
###########################
variable "environment" {
  description = "The environment identifier for the backend container name key, used to distinguish between development, testing, and production stages."
  type        = string
  default     = "dev"
}

variable "default_tags" {
  description = "A mapping of key-value pairs representing tags to assign to the resources, useful for organization and cost tracking."
  type        = map(any)
}

variable "region" {
  description = "Specifies the geographical region where resources are deployed, impacting latency and compliance."
  type        = string
  default     = "weu"
}

###########################
# Resource groups vars
###########################
variable "resource_group_location" {
  description = "The geographical location/region where the resource group is created. Changing this forces a new resource to be created."
  default     = "West Europe"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the resources, adhering to naming conventions and uniqueness within the subscription."
  type        = string
}
###########################
# App Configuration vars
###########################
variable "app_configuration_name" {
  description = "The name of the App Configuration resource. Changing this will force a new resource to be created."
  type        = string
}

variable "app_configuration_sku" {
  description = "The SKU tier for the App Configuration, which determines the features available. Possible values are 'free' and 'standard'."
  type        = string
  default     = "standard"
}

variable "app_configuration_local_auth_enabled" {
  description = "Indicates whether local authentication methods are enabled for accessing the App Configuration. Defaults to true."
  type        = bool
  default     = true
}

variable "app_configuration_public_network_access" {
  description = "Specifies the public network access setting for the App Configuration. Possible values are 'Enabled' and 'Disabled'."
  type        = string
  default     = "Enabled"
}

variable "app_configuration_purge_protection_enabled" {
  description = "Indicates whether Purge Protection is enabled for the App Configuration. This feature is applicable only for the 'standard' SKU. Defaults to false."
  type        = string
  default     = "false"
}

variable "app_configuration_soft_delete_retention_days" {
  description = "The retention period in days for soft-deleted items in the App Configuration. This feature is applicable only for the 'standard' SKU and can range from 1 to 7 days. Defaults to 7. Changing this will force a new resource to be created."
  type        = number
  default     = 7
}
