# 📦 003 - Basic Variables (Terraform en Azure)

En este episodio de la serie, aprenderás a trabajar con **variables en Terraform**, un concepto clave para hacer tu código más **reutilizable, limpio y escalable**.

---

## 🎯 Objetivos del episodio

- Entender qué son las variables en Terraform
- Definir variables usando `variables.tf`
- Usar variables dentro de recursos
- Asignar valores usando:
  - CLI (`-var`)
  - `terraform.tfvars`
  - `terraform.auto.tfvars` Carga las variables de forma automatica que se definen en ese directorio
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
├── providers.tf
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
```

Commandos utilizados:
```
terraform init

# Tienes que proveer el nombre de resource group name y el storage account name"
terraform plan 

# En la misma linea proveer los valors en el CLI
terraform plan \
-var="resource_group_name=rf003-rg" -var="storage_account_name=003storageaccount"

# Proveer las variables por fichero. Depende del environment
terraform plan -var-file=envs/dev.tfvars 
terraform plan -var-file=envs/qa.tfvars 
terraform plan -var-file=envs/prod.tfvars 

# Usando .auto.tfvars, las variables se cargan de forma automatica.
terraform plan 

# Debes proveer las variables de cualquier forma que te guste.
terraform apply -auto-approve

# Solo destruye la infraestructura
terraform destroy -auto-approve
```
