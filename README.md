# Azure Resource Group (`azurerm_resource_group`) Module

This Terraform module creates an **Azure Resource Group** and exposes
**all documented arguments** supported by the
[`azurerm_resource_group` resource]
(https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group):
`name`, `location`, `managed_by`, `tags`, and the `timeouts` block
(`create`, `read`, `update`, `delete`).

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

  # Optional: override provider default timeouts
  timeouts = {
    create = "20m"
    read   = null
    update = null
    delete = "120m"
  }
}
