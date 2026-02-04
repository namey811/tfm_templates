variable "app_name" {
  description = "Nombre de la aplicación en Azure AD"
  type        = string
}

variable "role_name" {
  description = "Rol RBAC a asignar (ej. Reader)"
  type        = string
}

variable "scope" {
  description = "Scope del rol (subscription, resource group, recurso)"
  type        = string
}
