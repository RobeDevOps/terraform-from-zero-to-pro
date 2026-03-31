## Todas las variables que se van a usar en el proyecto, se definen aquí.

variable "storage_account" {
  description = "Configuración del Storage Account"
  type = object({
    name                     = string
    resource_group_name      = string
    location                 = optional(string, "East US")
    account_tier             = optional(string, "Standard")
    account_replication_type = optional(string, "LRS")
  })
}