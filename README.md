# Azure Resource Group (azurerm_resource_group) Module

This module creates an Azure Resource Group and exposes **all documented arguments**: `name`, `location`, `managed_by`, `tags`, and the `timeouts` block (`create`, `read`, `update`, `delete`). See the Terraform Registry for details and defaults.  
Reference: azurerm_resource_group (Terraform Registry). [1](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group)

## Usage

```hcl
module "rg" {
  source = "./modules/resource-group"

  name     = "rg-platform-shared-weu"
  location = "West Europe"

  tags = {
    environment = "prod"
    owner       = "platform-team"
  }

  # Provide only if you want to override provider defaults
  timeouts = {
    create = "20m"
    read   = null
    update = null
    delete = "120m"
  }
}
``