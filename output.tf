output "id" {
  description = "The unique identifier for the Azure App Configuration instance."
  value       = azurerm_app_configuration.main.id
  sensitive   = false
}

output "endpoint" {
  description = "The URL endpoint for accessing the Azure App Configuration instance."
  value       = azurerm_app_configuration.main.endpoint
  sensitive   = false
}

output "primary_read_key" {
  description = "The primary read access key for the Azure App Configuration instance, which allows reading configuration data."
  value       = azurerm_app_configuration.main.primary_read_key
  sensitive   = true
}

output "primary_write_key" {
  description = "The primary write access key for the Azure App Configuration instance, which allows writing configuration data."
  value       = azurerm_app_configuration.main.primary_write_key
  sensitive   = true
}

output "secondary_read_key" {
  description = "The secondary read access key for the Azure App Configuration instance, which can be used to read configuration data."
  value       = azurerm_app_configuration.main.secondary_read_key
  sensitive   = true
}

output "secondary_write_key" {
  description = "The secondary write access key for the Azure App Configuration instance, which can be used to write configuration data."
  value       = azurerm_app_configuration.main.secondary_write_key
  sensitive   = true
}

output "identity" {
  description = "The identity block containing the managed identity details associated with the Azure App Configuration instance."
  value       = azurerm_app_configuration.main.identity
  sensitive   = true
}
