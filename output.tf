output "id" {
  description = "The App Configuration ID."
  value       = azurerm_app_configuration.main.id
  sensitive   = false
}
output "endpoint" {
  description = "The URL of the App Configuration."
  value       = azurerm_app_configuration.main.endpoint
  sensitive   = false
}
output "primary_read_key" {
  description = "A primary_read_key block as defined below containing the primary read access key."
  value       = azurerm_app_configuration.main.primary_read_key
  sensitive   = true
}
output "primary_write_key" {
  description = "A primary_write_key block as defined below containing the primary write access key."
  value       = azurerm_app_configuration.main.primary_write_key
  sensitive   = true
}
output "secondary_read_key" {
  description = " A secondary_read_key block as defined below containing the secondary read access key."
  value       = azurerm_app_configuration.main.secondary_read_key
  sensitive   = true
}
output "secondary_write_key" {
  description = "A secondary_write_key block as defined below containing the secondary write access key."
  value       = azurerm_app_configuration.main.secondary_write_key
  sensitive   = true
}
output "identity" {
  description = "An identity block as defined below."
  value       = azurerm_app_configuration.main.identity
  sensitive   = true
}
