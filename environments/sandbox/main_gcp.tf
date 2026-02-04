module "gcp_identity" {
  source     = "../../modules/identity/gcp"
  project_id = var.gcp_project_id
}

