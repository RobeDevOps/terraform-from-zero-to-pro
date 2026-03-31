## Todos los outputs que se van a usar en el proyecto, se definen aquí.
output "blob_primary_connection_string" {
  description = "Blob Primary connection primaria"
  value       = azurerm_storage_account.example.primary_blob_connection_string
  sensitive   = true
}
