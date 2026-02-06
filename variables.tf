variable "name" {
  description = "The name of the Resource Group."
  type        = string
}

variable "location" {
  description = "Azure region where the Resource Group should exist (e.g., West Europe, East US)."
  type        = string
}

variable "managed_by" {
  description = "The ID of the resource/application that manages this Resource Group."
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags to assign to the Resource Group."
  type        = map(string)
  default     = {}
}

# Optional timeouts — each key is optional; provide only what you want to override
variable "timeouts" {
  description = <<-EOT
    Custom timeouts for RG operations. If null, the timeouts block is omitted and provider defaults apply
    (create=90m, read=5m, update=90m, delete=90m per the AzureRM docs).
  EOT
  type = object({
    create = optional(string)
    read   = optional(string)
    update = optional(string)
    delete = optional(string)
  })
  default = null
}