output "application_id" {
  value = azuread_application.app.client_id
}

output "service_principal_id" {
  value = azuread_service_principal.sp.id
}
