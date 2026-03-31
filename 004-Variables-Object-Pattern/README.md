# Terraform con Azure de Cero a Pro | 004 - Variables Object Pattern

## 📌 Descripción del Episodio

En este episodio aprenderás cómo utilizar el **Object Pattern en variables de Terraform**, una técnica clave para escribir código más limpio, escalable y profesional.

En lugar de manejar múltiples variables individuales, agrupamos configuraciones relacionadas dentro de un solo objeto, lo que permite:

- Mejor organización del código
- Mayor reutilización
- Estandarización en equipos DevOps
- Escalabilidad para proyectos reales

---

## 🎯 Objetivo

Implementar variables tipo `object` para centralizar configuraciones y consumirlas dentro de recursos de Azure.

---

## 🚀 ¿Qué aprenderás?

- Qué es un **Object Variable Pattern**
- Diferencias entre variables simples vs objetos
- Cómo definir variables tipo `object`
- Cómo estructurar `terraform.tfvars`
- Cómo acceder a propiedades del objeto
- Buenas prácticas en entornos reales

---

## 📂 Estructura del Proyecto

```bash
004-Variables-Object-Pattern/
│
├── main.tf
├── variables.tf
├── terraform.tfvars
└── outputs.tf
```


## Aplicando las variables

🧠 Definición de Variable Tipo Object
```
variable "storage_config" {
  description = "Configuración del Storage Account"
  type = object({
    name                = string
    account_tier        = string
    replication_type    = string
    location            = string
    resource_group_name = string
  })
}
```

⚙️ Valores en terraform.tfvars
```
storage_config = {
  name                = "mystorageaccount001"
  account_tier        = "Standard"
  replication_type    = "LRS"
  location            = "eastus"
  resource_group_name = "rg-demo"
}
```

🏗️ Uso en Recursos (main.tf)
```
resource "azurerm_storage_account" "example" {
  name                     = var.storage_config.name
  resource_group_name      = var.storage_config.resource_group_name
  location                 = var.storage_config.location
  account_tier             = var.storage_config.account_tier
  account_replication_type = var.storage_config.replication_type
}
```

## 💡 Beneficios del Object Pattern
✅ Reduce la cantidad de variables sueltas
✅ Mejora la legibilidad
✅ Facilita la reutilización en módulos
✅ Permite integrar fácilmente con JSON/YAML
✅ Ideal para equipos DevOps y estándares empresariales