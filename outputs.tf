output "id" {
  description = "The ID of the Resource Group."
  value       = azurerm_resource_group.this.id
}

output "name" {
  description = "The name of the Resource Group."
  value       = azurerm_resource_group.this.name
}

output "location" {
  description = "The region of the Resource Group."
  value       = azurerm_resource_group.this.location
}

output "managed_by" {
  description = "The manager resource ID, if any."
  value       = azurerm_resource_group.this.managed_by
}

output "tags" {
  description = "Tags applied to the Resource Group."
  value       = azurerm_resource_group.this.tags
}
