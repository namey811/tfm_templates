data "azurerm_client_config" "current" {}

resource "azuread_application" "app" {
  display_name = var.app_name
}

resource "azuread_service_principal" "sp" {
  client_id = azuread_application.app.client_id
}

resource "azurerm_role_assignment" "rbac" {
  scope                = var.scope
  role_definition_name = var.role_name
  principal_id         = azuread_service_principal.sp.id
}

resource "azurerm_role_assignment" "reader_role" {
  scope                = "/subscriptions/${data.azurerm_client_config.current.subscription_id}"
  role_definition_name = "Reader"
  principal_id         = azuread_service_principal.sp.object_id
}
