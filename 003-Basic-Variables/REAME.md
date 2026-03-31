# 📦 003 - Basic Variables (Terraform en Azure)

En este episodio de la serie, aprenderás a trabajar con **variables en Terraform**, un concepto clave para hacer tu código más **reutilizable, limpio y escalable**.

---

## 🎯 Objetivos del episodio

- Entender qué son las variables en Terraform
- Definir variables usando `variables.tf`
- Asignar valores usando:
  - `terraform.tfvars`
  - CLI (`-var`)
- Usar variables dentro de recursos
- Mejores prácticas básicas

---

## 🧠 ¿Por qué usar variables?

Las variables te permiten:

- Evitar hardcoding ❌
- Reutilizar código 🔁
- Adaptar configuraciones fácilmente ⚙️
- Prepararte para entornos (dev, qa, prod)

---

## 📁 Estructura del proyecto
```
003-Basic-Variables/
│
├── main.tf
├── variables.tf
├── terraform.tfvars
└── outputs.tf
```

---

## 🧩 Definición de variables

Archivo: `variables.tf`

```hcl
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