module "iam_azure_sandbox" {
  source = "../../modules/identity/azure"

  app_name = "sif-azure-sandbox-app"
  role_name = "Reader"

  scope = "/subscriptions/<TU_SUBSCRIPTION_ID>"
}
