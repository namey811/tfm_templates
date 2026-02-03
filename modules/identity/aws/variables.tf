variable "role_name" {
  description = "Nombre del rol IAM"
  type        = string
}

variable "trusted_service" {
  description = "Servicio autorizado a asumir el rol"
  type        = string
}

variable "allowed_actions" {
  description = "Acciones IAM permitidas"
  type        = list(string)
}

variable "allowed_resources" {
  description = "Recursos específicos permitidos"
  type        = list(string)
}

variable "tags" {
  description = "Etiquetas del recurso"
  type        = map(string)
  default     = {}
}
