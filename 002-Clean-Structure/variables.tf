## Todas las variables que se van a usar en el proyecto, se definen aquí.
variable "resource_group_name" {
  description = "Este es el nombre del resource group donde se crearan los otros components"
  type        = string
  default     = "example-resources"
}
