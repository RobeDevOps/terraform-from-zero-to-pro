## Todas las variables que se van a usar en el proyecto, se definen aquí.

variable "resource_group_name" {
  description = "Nombre del Resource Group"
  type        = string
}

variable "location" {
  description = "Región de Azure"
  type        = string
  default     = "East US"
}

variable "storage_account_name" {
  description = "Nombre del Storage Account"
  type        = string
}

variable "account_tier" {
  description = "Nivel de servicio del Storage Account"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Tipo de replicación del Storage Account"
  type        = string
  default     = "LRS"
}