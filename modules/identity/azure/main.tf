resource "azuread_application" "app" {
  display_name = var.app_name
}

resource "azuread_service_principal" "sp" {
  application_id = azuread_application.app.application_id
}

resource "azurerm_role_assignment" "rbac" {
  scope                = var.scope
  role_definition_name = var.role_name
  principal_id         = azuread_service_principal.sp.object_id
}
