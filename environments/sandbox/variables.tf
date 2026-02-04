variable "aws_region" {
  description = "Región AWS para pruebas"
  type        = string
  default     = "us-east-1"
}
variable "gcp_project_id" {
  description = "ID del proyecto GCP para pruebas"
  type        = string
  default     = "tfm-unir"
}
variable "gcp_region" {
  description = "Región GCP para pruebas"
  type        = string
  default     = "us-central1"
}