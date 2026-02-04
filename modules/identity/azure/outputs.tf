output "application_id" {
  value = azuread_application.app.application_id
}

output "service_principal_id" {
  value = azuread_service_principal.sp.object_id
}
