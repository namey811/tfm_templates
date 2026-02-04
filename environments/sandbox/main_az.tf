module "iam_azure_sandbox" {
  source = "../../modules/identity/azure"

  app_name = "sif-azure-sandbox-app"
  role_name = "Reader"

  scope = "/subscriptions/b544f5cc-e2c9-4e47-b195-44c5184aab2f"
}
