variable "name" {
  description = "The name of the Azure App Configuration resource. Changing this forces a new resource to be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the App Configuration resource."
  type        = string
}

variable "location" {
  description = "The Azure region where the App Configuration resource will be created."
  type        = string
}

variable "sku" {
  description = "The SKU for the App Configuration resource. Possible values are 'free', 'standard', and 'premium'."
  type        = string
  default     = "free"
  validation {
    condition     = contains(["free", "standard", "premium"], var.sku)
    error_message = "The sku must be one of: free, standard, premium."
  }
}

variable "local_auth_enabled" {
  description = "Whether local authentication methods are enabled for the App Configuration. Defaults to true."
  type        = bool
  default     = true
}

variable "public_network_access" {
  description = "The Public Network Access setting for the App Configuration. Possible values are 'Enabled' and 'Disabled'."
  type        = string
  default     = null
  validation {
    condition     = var.public_network_access == null || contains(["Enabled", "Disabled"], var.public_network_access)
    error_message = "The public_network_access must be one of: Enabled, Disabled."
  }
}

variable "purge_protection_enabled" {
  description = "Whether Purge Protection is enabled for the App Configuration. Only works for standard SKU. Defaults to false."
  type        = bool
  default     = false
}

variable "soft_delete_retention_days" {
  description = "The number of days to retain soft-deleted items. For free SKU: 1-7 days. For standard SKU: 1-90 days. Changing this forces a new resource to be created."
  type        = number
  default     = null
}

variable "identity" {
  description = "Identity configuration block for the App Configuration resource."
  type = object({
    type         = string
    identity_ids = optional(list(string))
  })
  default = null
}

variable "encryption" {
  description = "Encryption configuration block for the App Configuration resource."
  type = object({
    key_vault_key_identifier = string
    identity_client_id       = string
  })
  default = null
}

variable "replicas" {
  description = "A list of replica configurations for the App Configuration resource."
  type = list(object({
    name     = string
    location = string
  }))
  default = []
}

variable "tags" {
  description = "Tags to assign to resources."
  type        = map(string)
  default     = {}
}
