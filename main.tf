resource "azurerm_resource_group" "this" {
  name       = var.name
  location   = var.location

  # Optional arguments (pass null to omit)
  managed_by = var.managed_by
  tags       = var.tags

  # Optional timeouts block — rendered only when provided
  dynamic "timeouts" {
    for_each = var.timeouts == null ? [] : [var.timeouts]
    content {
      # Any of these can be null; only non-null values get applied
      create = try(var.timeouts.create, null)
      read   = try(var.timeouts.read, null)
      update = try(var.timeouts.update, null)
      delete = try(var.timeouts.delete, null)
    }
  }
}
